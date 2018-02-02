osprocess-like streaming api
nextPut: aCharacterOrByte

	^self nextPutAll: 
		(aCharacterOrByte isCharacter
			ifTrue: [ String with: aCharacterOrByte ]
			ifFalse: [ ByteArray with: aCharacterOrByte ])