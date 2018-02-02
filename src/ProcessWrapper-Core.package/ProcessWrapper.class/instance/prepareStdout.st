private
prepareStdout

	useStdout ifFalse: [ ^self ].
	stdoutStream := PWOutputStream on: self with: #readFromStdoutInto: with: #setStdoutSemaphore:
