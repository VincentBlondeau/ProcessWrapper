private
fetchDataBlock

	| buffer bytesRead |
	buffer := self newBuffer: 4096.
	[ semaphore wait.
 	bytesRead := processWrapper perform: readerSelector with: buffer.
	bytesRead isZero ] whileTrue.
	bytesRead > buffer size ifTrue: [
		atEnd := true. ^self ].
	dataStream := ReadStream on: (buffer first: bytesRead)
	