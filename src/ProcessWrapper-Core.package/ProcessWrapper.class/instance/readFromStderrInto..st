private
readFromStderrInto: aByteArrayOrString

	^self class 
		readFromStderr: processPointer 
		into: aByteArrayOrString 
		size: aByteArrayOrString size