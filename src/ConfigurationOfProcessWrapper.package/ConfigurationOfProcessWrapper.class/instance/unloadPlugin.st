doits
unloadPlugin

	(Smalltalk hasClassNamed: #ProcessWrapper) ifTrue: [
		Smalltalk garbageCollect.
		Smalltalk garbageCollect.	"To remove the executors"
		(Smalltalk at: #ProcessWrapper) allInstances size isZero ifFalse: [ ^ self error: 'ProcessWrapper instances hanging!'] .
		Smalltalk vm unloadModule: self pluginName ].
