public
upToEnd

	| result nextValue |
	result := WriteStream on: (self newBuffer: 4096).
	[ (nextValue := self next) notNil ] 
		whileTrue: [ result nextPut: nextValue ].
	^result contents
	