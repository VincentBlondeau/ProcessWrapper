private
readFromStdoutInto: aByteArrayOrString

	^self class 
		readFromStdout: processPointer 
		into: aByteArrayOrString 
		size: aByteArrayOrString size