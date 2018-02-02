instance creation
new

	^super new
		processPointer: self newProcess;
		registerForFinalization;
		yourself.

	