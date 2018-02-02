doits
downloadPlugin
	
	UIManager default informUserDuring: [ : bar |
		| document |
		bar label: 'Unloading plugin'.
		self unloadPlugin.
		bar label: 'Downloading plugin'.
		document := self retrievePluginFile.
		bar label: 'Saving plugin'.
		(FileSystem disk workingDirectory / (self pluginName , '.dll')) writeStream
			binary;
			nextPutAll: document;
			close ]