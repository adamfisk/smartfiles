#ifndef SMARTFILES_PATH_HPP
#define SMARTFILES_PATH_HPP

#include <iostream>

#include <boost/format.hpp>
#include <boost/filesystem/operations.hpp>
#include <boost/pool/detail/singleton.hpp>

namespace smartfiles {

class path : private boost::noncopyable
{
    public:
    
        /**
         * Constructor
         * @note Call once during main.
         */
        path();
        
        /**
         * Destructor
         */
        ~path();
    
        /**
         * The sole path object.
         * @return A statically allocated accessor.
         */
        static path & instance();
    
        static const std::vector<std::string> args();
        static const std::string execPath();
        static const std::string smartfiles_path();
        static const std::string win_32_path();
        static const std::string java_application_stub();
        static const std::string working_dir();
        static const std::string working_dir_osx();
        static const std::string working_dir_win_32();
        static const std::string home_dir();
        static const std::string log_dir();
        static const std::string appdata_dir();
        static void create_directory(const std::string & dir);
        static void create_file(const std::string & file_path);
        static void create_runtime_paths_if();
};

}; // namespace smartfiles

#endif // SMARTFILES_PATH_HPP
