# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# For each target create a dummy rule so the target does not have to exist
/Users/afisk/code/firebreath-1.6/projects/build/PluginCore/Debug/libPluginCore.a:
/Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/PluginAuto/Debug/libSFI_PluginAuto.a:
/Users/afisk/code/firebreath-1.6/projects/build/NpapiCore/Debug/libNpapiCore.a:
/Users/afisk/code/firebreath-1.6/projects/build/ScriptingCore/Debug/libScriptingCore.a:
/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/thread/Debug/libboost_thread.a:
/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/system/Debug/libboost_system.a:
/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/filesystem/Debug/libboost_filesystem.a:
/Users/afisk/code/firebreath-1.6/projects/build/PluginCore/MinSizeRel/libPluginCore.a:
/Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/PluginAuto/MinSizeRel/libSFI_PluginAuto.a:
/Users/afisk/code/firebreath-1.6/projects/build/NpapiCore/MinSizeRel/libNpapiCore.a:
/Users/afisk/code/firebreath-1.6/projects/build/ScriptingCore/MinSizeRel/libScriptingCore.a:
/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/thread/MinSizeRel/libboost_thread.a:
/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/system/MinSizeRel/libboost_system.a:
/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/filesystem/MinSizeRel/libboost_filesystem.a:
/Users/afisk/code/firebreath-1.6/projects/build/PluginCore/RelWithDebInfo/libPluginCore.a:
/Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/PluginAuto/RelWithDebInfo/libSFI_PluginAuto.a:
/Users/afisk/code/firebreath-1.6/projects/build/NpapiCore/RelWithDebInfo/libNpapiCore.a:
/Users/afisk/code/firebreath-1.6/projects/build/ScriptingCore/RelWithDebInfo/libScriptingCore.a:
/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/thread/RelWithDebInfo/libboost_thread.a:
/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/system/RelWithDebInfo/libboost_system.a:
/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/filesystem/RelWithDebInfo/libboost_filesystem.a:
/Users/afisk/code/firebreath-1.6/projects/build/PluginCore/Release/libPluginCore.a:
/Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/PluginAuto/Release/libSFI_PluginAuto.a:
/Users/afisk/code/firebreath-1.6/projects/build/NpapiCore/Release/libNpapiCore.a:
/Users/afisk/code/firebreath-1.6/projects/build/ScriptingCore/Release/libScriptingCore.a:
/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/thread/Release/libboost_thread.a:
/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/system/Release/libboost_system.a:
/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/filesystem/Release/libboost_filesystem.a:


# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.SmartFiles.Debug:
PostBuild.PluginCore.Debug: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/Debug/SmartFiles
PostBuild.SFI_PluginAuto.Debug: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/Debug/SmartFiles
PostBuild.NpapiCore.Debug: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/Debug/SmartFiles
PostBuild.ScriptingCore.Debug: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/Debug/SmartFiles
PostBuild.PluginCore.Debug: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/Debug/SmartFiles
PostBuild.boost_thread.Debug: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/Debug/SmartFiles
PostBuild.boost_system.Debug: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/Debug/SmartFiles
PostBuild.boost_filesystem.Debug: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/Debug/SmartFiles
/Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/Debug/SmartFiles:\
	/Users/afisk/code/firebreath-1.6/projects/build/PluginCore/Debug/libPluginCore.a\
	/Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/PluginAuto/Debug/libSFI_PluginAuto.a\
	/Users/afisk/code/firebreath-1.6/projects/build/NpapiCore/Debug/libNpapiCore.a\
	/Users/afisk/code/firebreath-1.6/projects/build/ScriptingCore/Debug/libScriptingCore.a\
	/Users/afisk/code/firebreath-1.6/projects/build/PluginCore/Debug/libPluginCore.a\
	/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/thread/Debug/libboost_thread.a\
	/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/system/Debug/libboost_system.a\
	/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/filesystem/Debug/libboost_filesystem.a
	/bin/rm -f /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/Debug/SmartFiles
	/bin/rm -f /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/SmartFiles.build/Debug/SmartFiles.build/Objects-normal/i386/SmartFiles
	/bin/rm -f /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/SmartFiles.build/Debug/SmartFiles.build/Objects-normal/x86_64/SmartFiles


PostBuild.SmartFiles.Release:
PostBuild.PluginCore.Release: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/Release/SmartFiles
PostBuild.SFI_PluginAuto.Release: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/Release/SmartFiles
PostBuild.NpapiCore.Release: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/Release/SmartFiles
PostBuild.ScriptingCore.Release: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/Release/SmartFiles
PostBuild.PluginCore.Release: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/Release/SmartFiles
PostBuild.boost_thread.Release: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/Release/SmartFiles
PostBuild.boost_system.Release: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/Release/SmartFiles
PostBuild.boost_filesystem.Release: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/Release/SmartFiles
/Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/Release/SmartFiles:\
	/Users/afisk/code/firebreath-1.6/projects/build/PluginCore/Release/libPluginCore.a\
	/Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/PluginAuto/Release/libSFI_PluginAuto.a\
	/Users/afisk/code/firebreath-1.6/projects/build/NpapiCore/Release/libNpapiCore.a\
	/Users/afisk/code/firebreath-1.6/projects/build/ScriptingCore/Release/libScriptingCore.a\
	/Users/afisk/code/firebreath-1.6/projects/build/PluginCore/Release/libPluginCore.a\
	/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/thread/Release/libboost_thread.a\
	/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/system/Release/libboost_system.a\
	/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/filesystem/Release/libboost_filesystem.a
	/bin/rm -f /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/Release/SmartFiles
	/bin/rm -f /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/SmartFiles.build/Release/SmartFiles.build/Objects-normal/i386/SmartFiles
	/bin/rm -f /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/SmartFiles.build/Release/SmartFiles.build/Objects-normal/x86_64/SmartFiles


PostBuild.SmartFiles.MinSizeRel:
PostBuild.PluginCore.MinSizeRel: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/MinSizeRel/SmartFiles
PostBuild.SFI_PluginAuto.MinSizeRel: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/MinSizeRel/SmartFiles
PostBuild.NpapiCore.MinSizeRel: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/MinSizeRel/SmartFiles
PostBuild.ScriptingCore.MinSizeRel: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/MinSizeRel/SmartFiles
PostBuild.PluginCore.MinSizeRel: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/MinSizeRel/SmartFiles
PostBuild.boost_thread.MinSizeRel: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/MinSizeRel/SmartFiles
PostBuild.boost_system.MinSizeRel: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/MinSizeRel/SmartFiles
PostBuild.boost_filesystem.MinSizeRel: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/MinSizeRel/SmartFiles
/Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/MinSizeRel/SmartFiles:\
	/Users/afisk/code/firebreath-1.6/projects/build/PluginCore/MinSizeRel/libPluginCore.a\
	/Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/PluginAuto/MinSizeRel/libSFI_PluginAuto.a\
	/Users/afisk/code/firebreath-1.6/projects/build/NpapiCore/MinSizeRel/libNpapiCore.a\
	/Users/afisk/code/firebreath-1.6/projects/build/ScriptingCore/MinSizeRel/libScriptingCore.a\
	/Users/afisk/code/firebreath-1.6/projects/build/PluginCore/MinSizeRel/libPluginCore.a\
	/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/thread/MinSizeRel/libboost_thread.a\
	/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/system/MinSizeRel/libboost_system.a\
	/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/filesystem/MinSizeRel/libboost_filesystem.a
	/bin/rm -f /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/MinSizeRel/SmartFiles
	/bin/rm -f /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/SmartFiles.build/MinSizeRel/SmartFiles.build/Objects-normal/i386/SmartFiles
	/bin/rm -f /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/SmartFiles.build/MinSizeRel/SmartFiles.build/Objects-normal/x86_64/SmartFiles


PostBuild.SmartFiles.RelWithDebInfo:
PostBuild.PluginCore.RelWithDebInfo: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/RelWithDebInfo/SmartFiles
PostBuild.SFI_PluginAuto.RelWithDebInfo: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/RelWithDebInfo/SmartFiles
PostBuild.NpapiCore.RelWithDebInfo: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/RelWithDebInfo/SmartFiles
PostBuild.ScriptingCore.RelWithDebInfo: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/RelWithDebInfo/SmartFiles
PostBuild.PluginCore.RelWithDebInfo: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/RelWithDebInfo/SmartFiles
PostBuild.boost_thread.RelWithDebInfo: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/RelWithDebInfo/SmartFiles
PostBuild.boost_system.RelWithDebInfo: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/RelWithDebInfo/SmartFiles
PostBuild.boost_filesystem.RelWithDebInfo: /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/RelWithDebInfo/SmartFiles
/Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/RelWithDebInfo/SmartFiles:\
	/Users/afisk/code/firebreath-1.6/projects/build/PluginCore/RelWithDebInfo/libPluginCore.a\
	/Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/PluginAuto/RelWithDebInfo/libSFI_PluginAuto.a\
	/Users/afisk/code/firebreath-1.6/projects/build/NpapiCore/RelWithDebInfo/libNpapiCore.a\
	/Users/afisk/code/firebreath-1.6/projects/build/ScriptingCore/RelWithDebInfo/libScriptingCore.a\
	/Users/afisk/code/firebreath-1.6/projects/build/PluginCore/RelWithDebInfo/libPluginCore.a\
	/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/thread/RelWithDebInfo/libboost_thread.a\
	/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/system/RelWithDebInfo/libboost_system.a\
	/Users/afisk/code/firebreath-1.6/projects/build/boost/libs/filesystem/RelWithDebInfo/libboost_filesystem.a
	/bin/rm -f /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/RelWithDebInfo/SmartFiles
	/bin/rm -f /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/SmartFiles.build/RelWithDebInfo/SmartFiles.build/Objects-normal/i386/SmartFiles
	/bin/rm -f /Users/afisk/code/firebreath-1.6/projects/build/projects/SmartFiles/SmartFiles.build/RelWithDebInfo/SmartFiles.build/Objects-normal/x86_64/SmartFiles


