#include "constants.h"
#include "debug.h"
#include "file.h"
#include "process.h"

#include <boost/interprocess/sync/scoped_lock.hpp>

using namespace smartfiles;

bool process::is_running() {
    try {
        boost::interprocess::file_lock file_lock(instance_lock_path);
        
        if (!file_lock.try_lock()) {
            return true;
        }
    }
    catch (std::exception & e) {
        log_debug(e.what());
        return false;
    }
    
    return false;
}
