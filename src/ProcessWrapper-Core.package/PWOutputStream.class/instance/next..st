public
next: anInteger

	| result index nextValue |
	result := self newBuffer: anInteger.
	index := 1.
	[ index <= anInteger and: [ (nextValue := self next) notNil ] ] whileTrue: [
		result at: index put: nextValue.
		index := index + 1 ].
	index <= anInteger ifTrue: [ ^result first: index ].
	^result
	