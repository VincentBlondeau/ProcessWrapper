private - finalization
finalize

	self class removeProcess: processPointer.
	Smalltalk unregisterExternalObject: waiterSemaphore
	
