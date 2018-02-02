private
initialize

	| semaphoreIndex |
	atEnd := false.
	binary := false.
	semaphore := Semaphore new.
	dataStream := ReadStream on: (self newBuffer: 0).
	semaphoreIndex := Smalltalk registerExternalObject: semaphore.
	processWrapper perform: semaphoreSetterSelector with: semaphoreIndex.
	processWrapper class registerForFinalization: self


	
	
	