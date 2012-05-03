/**********************************************************\

  Auto-generated SmartFilesAPI.h

\**********************************************************/

#include <string>
#include <sstream>
#include <boost/weak_ptr.hpp>
#include <boost/shared_ptr.hpp>
#include "JSAPIAuto.h"
#include "BrowserHost.h"
#include "SmartFiles.h"
#include "path.h"
#include "smartfiles_ipc.h"


#ifndef H_SmartFilesAPI
#define H_SmartFilesAPI

class SmartFilesAPI : public FB::JSAPIAuto
{
public:
    ////////////////////////////////////////////////////////////////////////////
    /// @fn SmartFilesAPI::SmartFilesAPI(const SmartFilesPtr& plugin, const FB::BrowserHostPtr host)
    ///
    /// @brief  Constructor for your JSAPI object.
    ///         You should register your methods, properties, and events
    ///         that should be accessible to Javascript from here.
    ///
    /// @see FB::JSAPIAuto::registerMethod
    /// @see FB::JSAPIAuto::registerProperty
    /// @see FB::JSAPIAuto::registerEvent
    ////////////////////////////////////////////////////////////////////////////
    SmartFilesAPI(const SmartFilesPtr& plugin, const FB::BrowserHostPtr& host) :
        m_plugin(plugin), m_host(host)
    {
        registerMethod("echo",      make_method(this, &SmartFilesAPI::echo));
        registerMethod("testEvent", make_method(this, &SmartFilesAPI::testEvent));
        registerMethod("openFileDialog", make_method(this, &SmartFilesAPI::openFileDialog));
		registerMethod("loadProcess", make_method(this, &SmartFilesAPI::loadProcess));

        
        // Read-write property
        registerProperty("testString",
                         make_property(this,
                                       &SmartFilesAPI::get_testString,
                                       &SmartFilesAPI::set_testString));
        
        // Read-only property
        registerProperty("version",
                         make_property(this,
                                       &SmartFilesAPI::get_version));
    }

    ///////////////////////////////////////////////////////////////////////////////
    /// @fn SmartFilesAPI::~SmartFilesAPI()
    ///
    /// @brief  Destructor.  Remember that this object will not be released until
    ///         the browser is done with it; this will almost definitely be after
    ///         the plugin is released.
    ///////////////////////////////////////////////////////////////////////////////
    virtual ~SmartFilesAPI() {};

    SmartFilesPtr getPlugin();

    // Read/Write property ${PROPERTY.ident}
    std::string get_testString();
    void set_testString(const std::string& val);

    // Read-only property ${PROPERTY.ident}
    std::string get_version();

    // Method echo
    FB::variant echo(const FB::variant& msg);
    
    // Event helpers
    FB_JSAPI_EVENT(test, 0, ());
    FB_JSAPI_EVENT(echo, 2, (const FB::variant&, const int));

    // Method test-event
    void testEvent();

    void openFileDialog();
	
	std::string loadProcess();
	
private:
	
	boost::shared_ptr<smartfiles_ipc_t> smartfiles_ipc_;
	
    SmartFilesWeakPtr m_plugin;
    FB::BrowserHostPtr m_host;

    std::string m_testString;
};

#endif // H_SmartFilesAPI

