# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# For each target create a dummy rule so the target does not have to exist


# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.SFI_PluginAuto.Debug:
PostBuild.SFI_PluginAuto.Release:
PostBuild.SFI_PluginAuto.MinSizeRel:
PostBuild.SFI_PluginAuto.RelWithDebInfo:
