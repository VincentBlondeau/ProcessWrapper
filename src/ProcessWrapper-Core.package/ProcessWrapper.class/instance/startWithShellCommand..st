start-stop
startWithShellCommand: aStringOrByteArray

	^self startWithCommand: 'cmd.exe /C ' asByteArray, aStringOrByteArray asByteArray