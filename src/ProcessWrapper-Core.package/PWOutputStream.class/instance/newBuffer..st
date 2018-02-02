private
newBuffer: size

	^binary 
		ifTrue: [ ByteArray new: size ]
		ifFalse: [ String new: size ]