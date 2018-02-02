plugin handling
isPluginLoaded

	^ Smalltalk vm listLoadedModules anySatisfy: [ :each |
		each beginsWith: self pluginName ]
