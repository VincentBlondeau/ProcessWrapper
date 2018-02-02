accessing
newFileName

	| fileName |
	fileName := 'testFile', UUID new asString36, '.txt'.
	fileNames add: fileName.
	^fileName