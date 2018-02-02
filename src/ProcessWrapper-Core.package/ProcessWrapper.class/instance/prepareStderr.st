private
prepareStderr

	useStderr ifFalse: [ ^self ].
	stderrStream := PWOutputStream on: self with: #readFromStderrInto: with: #setStderrSemaphore:
