#ifndef SMARTFILES_PLUGIN_CONSTANTS_HPP
#define SMARTFILES_PLUGIN_CONSTANTS_HPP

#include <boost/filesystem/path.hpp>

#include "path.h"

namespace smartfiles {

#ifdef WIN32
    static const boost::filesystem::path data_dir(
        boost::filesystem::path(path::appdata_dir()) /= "smartfiles/"
    );
#else
    static const boost::filesystem::path data_dir(
        boost::filesystem::path(path::home_dir()) /= ".smartfiles/"
    );
#endif

/**
 * Logging paths
 */
#ifdef WIN32
    static const boost::filesystem::path _log_dir(
        boost::filesystem::path(path::appdata_dir()) /= "logs/"
    );
#elif defined(__APPLE__)
    static const boost::filesystem::path _log_dir(
        boost::filesystem::path(path::home_dir()) /= "Library/Logs/SmartFiles/"
    );
#else
    static const boost::filesystem::path _log_dir(
        boost::filesystem::path(path::home_dir()) /= ".smartfiles/logs/"
    );
#endif
    
    static boost::filesystem::path instance_lock_path_(
        boost::filesystem::path(data_dir) /= "smartfiles.lck"
    );


    static const char * instance_lock_path = instance_lock_path_.string().c_str();

    
};

#endif // SMARTFILES_PLUGIN_CONSTANTS_HPP
