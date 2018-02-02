plugin handling
unloadPlugin

	Smalltalk garbageCollect.
	Smalltalk garbageCollect.	"To remove the executors"
	self allInstances size isZero ifFalse: [ ^self error: 'ProcessWrapper instances hanging!'].
	Smalltalk vm unloadModule: self pluginName