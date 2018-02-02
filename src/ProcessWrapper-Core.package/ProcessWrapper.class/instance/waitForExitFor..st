start-stop
waitForExitFor: timeoutMilliseconds

	self isRunning ifFalse: [ ^true ].
	waiterSemaphore waitTimeoutMSecs: timeoutMilliseconds.
	^self isRunning not

