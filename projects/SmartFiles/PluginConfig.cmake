#/**********************************************************\ 
#
# Auto-Generated Plugin Configuration file
# for SmartFiles
#
#\**********************************************************/

add_boost_library(filesystem)
set(PLUGIN_NAME "SmartFiles")
set(PLUGIN_PREFIX "SFI")
set(COMPANY_NAME "SmartFilesLLC")

# ActiveX constants:
set(FBTYPELIB_NAME SmartFilesLib)
set(FBTYPELIB_DESC "SmartFiles 1.0 Type Library")
set(IFBControl_DESC "SmartFiles Control Interface")
set(FBControl_DESC "SmartFiles Control Class")
set(IFBComJavascriptObject_DESC "SmartFiles IComJavascriptObject Interface")
set(FBComJavascriptObject_DESC "SmartFiles ComJavascriptObject Class")
set(IFBComEventSource_DESC "SmartFiles IFBComEventSource Interface")
set(AXVERSION_NUM "1")

# NOTE: THESE GUIDS *MUST* BE UNIQUE TO YOUR PLUGIN/ACTIVEX CONTROL!  YES, ALL OF THEM!
set(FBTYPELIB_GUID 85c3456f-0eb5-54b0-a48f-925c3db10321)
set(IFBControl_GUID cc5f3d34-fa5f-599a-a04d-af617e762d14)
set(FBControl_GUID 3a5d991b-914c-5e54-aeb2-4d69c7a4a223)
set(IFBComJavascriptObject_GUID 05874905-23fb-5197-9408-0f02e1d55695)
set(FBComJavascriptObject_GUID 1f24709c-0ab8-5265-82bd-f4b3e11fc4a5)
set(IFBComEventSource_GUID 60db2211-b931-584c-b062-4eeeaacc06e0)

# these are the pieces that are relevant to using it from Javascript
set(ACTIVEX_PROGID "SmartFilesLLC.SmartFiles")
set(MOZILLA_PLUGINID "smartfil.es/SmartFiles")

# strings
set(FBSTRING_CompanyName "SmartFiles LLC")
set(FBSTRING_FileDescription "Fast Secure Downloads")
set(FBSTRING_PLUGIN_VERSION "1.0.0.0")
set(FBSTRING_LegalCopyright "Copyright 2012 SmartFiles LLC")
set(FBSTRING_PluginFileName "np${PLUGIN_NAME}.dll")
set(FBSTRING_ProductName "SmartFiles")
set(FBSTRING_FileExtents "")
set(FBSTRING_PluginName "SmartFiles")
set(FBSTRING_MIMEType "application/x-smartfiles")

# Uncomment this next line if you're not planning on your plugin doing
# any drawing:

set (FB_GUI_DISABLED 1)

# Mac plugin settings. If your plugin does not draw, set these all to 0
set(FBMAC_USE_QUICKDRAW 0)
set(FBMAC_USE_CARBON 0)
set(FBMAC_USE_COCOA 0)
set(FBMAC_USE_COREGRAPHICS 0)
set(FBMAC_USE_COREANIMATION 0)
set(FBMAC_USE_INVALIDATINGCOREANIMATION 0)

# If you want to register per-machine on Windows, uncomment this line
#set (FB_ATLREG_MACHINEWIDE 1)
