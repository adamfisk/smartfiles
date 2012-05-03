#ifndef SMARTFILES_PLUGIN_FILE_HPP
#define SMARTFILES_PLUGIN_FILE_HPP

#include <fstream>
#include <string>

#include <boost/scoped_ptr.hpp>
#include <boost/interprocess/sync/file_lock.hpp>
#include <boost/filesystem/fstream.hpp>

namespace smartfiles {

    class file {
        public:
        
            file();
    
            file(const std::string & file_path);
            
            file(const std::string & file_path, const std::string & lock_path);
            
            ~file();
            
            void set_path(const std::string & file_path);
            void open_write();
            
            void close();
            
            bool lock_acquired();
            
            int append(char * buf, std::size_t len);
            int read(char * buf, std::size_t len);
            int write(const char * buf, std::size_t len);
            
            const std::string & path()
            {
                return path_;
            }
            
        private:
        
            std::string path_;
            
            std::string lock_path_;
            
            boost::filesystem::ofstream ofstream_;
            
            boost::scoped_ptr<boost::interprocess::file_lock> file_lock_;
    };

} // namespace smartfiles

#endif // SMARTFILES_PLUGIN_FILE_HPP
