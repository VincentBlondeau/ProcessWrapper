start-stop
waitForExit

	self isRunning ifFalse: [ ^true ].
	waiterSemaphore wait.
	^self isRunning not

