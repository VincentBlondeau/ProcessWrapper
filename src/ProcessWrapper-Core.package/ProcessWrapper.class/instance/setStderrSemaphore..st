private
setStderrSemaphore: aSemaphoreIndex

	^self class 
		setStderrSemaphore: aSemaphoreIndex  
		for: processPointer 