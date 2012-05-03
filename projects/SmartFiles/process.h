#ifndef SMARTFILES_PLUGIN_PROCESS_HPP
#define SMARTFILES_PLUGIN_PROCESS_HPP

#include <string>

#include <boost/interprocess/sync/file_lock.hpp>

namespace smartfiles {

    /**
     * This class encapsulates runtime information about smartfiles.
     */
    class process
    {
        public:
    
            /**
             * Checks 
             */
            static bool is_running();
            
        private:
        
            /**
             * The path to the smartfiles .lck file.
             */
            static std::string lock_path_;
            
    };

} // namespace smartfiles

#endif // SMARTFILES_PLUGIN_PROCESS_HPP
