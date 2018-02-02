private
prepareWaiterSemaphore 

	| semaphoreIndex |
	waiterSemaphore := Semaphore new.
	semaphoreIndex := Smalltalk registerExternalObject: waiterSemaphore.
	self class setWaiterSemaphore: semaphoreIndex for: processPointer
