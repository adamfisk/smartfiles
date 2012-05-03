/**********************************************************\

  Auto-generated SmartFilesAPI.cpp

\**********************************************************/

#include "JSObject.h"
#include "variant_list.h"
#include "DOM/Document.h"
#include "global/config.h"

#include "SmartFilesAPI.h"

#include "process.h"
#include "debug.h"
#include "path.h"



void SmartFilesAPI::openFileDialog()
{
    //static int n(0);
    fire_echo("Got open file dialog!!", 2);

    // return "foobar";
    //return msg;
}

std::string SmartFilesAPI::loadProcess() {
	smartfiles::path::instance().create_runtime_paths_if();
	
    smartfiles::logger::instance().set_output_file("smartfiles.firebreath.log");
	
	static int processLoadCalls(0);
	std::string load = "Loading IPC NEW....";
	std::string result;

	result = load + boost::lexical_cast<std::string>(processLoadCalls++);
	//return "Loading process....." + processLoadCalls + " calls...";
	
	log_debug("About to start IPC...");
    smartfiles_ipc_.reset(new smartfiles_ipc());
	
    if (!smartfiles_ipc_)
    {
        return "";
    }
	
    smartfiles_ipc_->start();
	
//	smartfiles_ipc_->start();
	log_debug("Started IPC...");
	return result;
}

///////////////////////////////////////////////////////////////////////////////
/// @fn FB::variant SmartFilesAPI::echo(const FB::variant& msg)
///
/// @brief  Echos whatever is passed from Javascript.
///         Go ahead and change it. See what happens!
///////////////////////////////////////////////////////////////////////////////
FB::variant SmartFilesAPI::echo(const FB::variant& msg)
{
    static int n(0);
    fire_echo("So far, you clicked this MOOFOOO this many times: ", n++);

    // return "foobar";
    return msg;
}

///////////////////////////////////////////////////////////////////////////////
/// @fn SmartFilesPtr SmartFilesAPI::getPlugin()
///
/// @brief  Gets a reference to the plugin that was passed in when the object
///         was created.  If the plugin has already been released then this
///         will throw a FB::script_error that will be translated into a
///         javascript exception in the page.
///////////////////////////////////////////////////////////////////////////////
SmartFilesPtr SmartFilesAPI::getPlugin()
{
    SmartFilesPtr plugin(m_plugin.lock());
    if (!plugin) {
        throw FB::script_error("The plugin is invalid");
    }
    return plugin;
}

// Read/Write property testString
std::string SmartFilesAPI::get_testString()
{
    return m_testString;
}

void SmartFilesAPI::set_testString(const std::string& val)
{
    m_testString = val;
}

// Read-only property version
std::string SmartFilesAPI::get_version()
{
    return FBSTRING_PLUGIN_VERSION;
}

void SmartFilesAPI::testEvent()
{
    fire_test();
}
