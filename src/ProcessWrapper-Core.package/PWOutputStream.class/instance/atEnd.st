public
atEnd

	atEnd ifFalse: [
		dataStream atEnd ifTrue: [ self fetchDataBlock ] ].
	^atEnd
	