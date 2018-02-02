testing
testPluginLoading
	"Fails with an error if there are references to ProcessWrapper instances."

	ProcessWrapper unloadPlugin.
	self shouldnt: (ProcessWrapper isPluginLoaded).
	ProcessWrapper new.
	self should: (ProcessWrapper isPluginLoaded).