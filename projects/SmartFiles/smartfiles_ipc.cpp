#if XP_WIN
#include "windows.h"
#endif

#include "constants.h"
#include "debug.h"
#include "smartfiles_ipc.h"
#if XP_WIN
#include <windows/launch_impl.hpp>
#else
#include "launcher.h"
#endif // XP_WIN
#include "path.h"
#include "process.h"

using namespace smartfiles;

smartfiles_ipc::smartfiles_ipc()
    : terminate_(false)
    , m_state(stopped) {
    log_function();
    
    log_debug("IPC arguments:");
    
//    for (int i = 0; i < argc; i++)
//    {
//        log_debug(argv[i]);
//    }
}

smartfiles_ipc::~smartfiles_ipc() {
    log_function();
}
        
void smartfiles_ipc::start() {
    log_function();
    
    log_debug(instance_lock_path);
    
    if (process::is_running()) {
        log_debug("SmartFiles is running!");
    }
    else {
        log_debug("SmartFiles is NOT running!");
    
        static const char * args = "load";

        launch_impl l;
#if XP_WIN
        char * str_1 = "";
        char * str_2 = "";
        l.launch(path::win_32_path().c_str(), str_1, str_2);
#else
        l.launch(true, args, plist_path);
#endif // XP_WIN
    }
}
        
void smartfiles_ipc::stop() {
    log_function();
    
    log_debug(instance_lock_path);
    
    if (process::is_running()) {
        log_debug("Stopping SmartFiles...");

    static const char * args = "unload";

        launch_impl l;
#if XP_WIN
        // Do nothing on Windows.
#else
        l.launch(true, args, plist_path);
#endif // XP_WIN
    }
}

unsigned int smartfiles_ipc::state() {
    log_function();

    return m_state;
}
        
bool smartfiles_ipc::set_state(unsigned int val) {
    log_function();
        
    unsigned int old_state = m_state;
    
    unsigned int new_state = val;
    
    m_state = val;
    
    return old_state != new_state;
}

void smartfiles_ipc::thread() {

}
