start-stop
startWithCommand: aStringOrByteArray
	
	| input |
	self 
		prepareStdout;
		prepareStderr;
		prepareWaiterSemaphore;
		registerForFinalization.
	input := aStringOrByteArray asByteArray.
	input last = 0 ifFalse: [ input := input copyWith: 0 ].
	^self class startProcess: processPointer  withCommandLine: input