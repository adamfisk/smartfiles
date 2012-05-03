#ifndef SMARTFILES_PLUGIN_LAUNCHER_HPP
#define SMARTFILES_PLUGIN_LAUNCHER_HPP

namespace smartfiles {

    /**
     * The path to the smartfiles plist for launchctl.
     */
    static const char * plist_path = 
        "/Library/LaunchAgents/org.smartfiles.smartfiles.plist";
    
    /**
     * Implements a cross platform executable launcher.
     */
    struct launch_impl {
        int launch(
            bool dev_null, const char * command, const char * plist_path
        );
    };
    
} // namespace smartfiles

#endif // SMARTFILES_PLUGIN_LAUNCHER_HPP
