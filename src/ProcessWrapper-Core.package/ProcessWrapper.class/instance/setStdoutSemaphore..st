private
setStdoutSemaphore: aSemaphoreIndex

	^self class 
		setStdoutSemaphore: aSemaphoreIndex  
		for: processPointer 