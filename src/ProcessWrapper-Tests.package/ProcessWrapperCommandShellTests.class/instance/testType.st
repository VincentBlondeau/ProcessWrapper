testing
testType

	| file |
	file := self newFileName.
	(FileSystem workingDirectory / file) writeStream
		nextPutAll: 'blabla';
		close.
	process useStdout.
	self should: (process startWithShellCommand: 'type ', file).
	self should: (process waitForExitFor: 5000).
	self shouldnt: process isRunning.
	self should: process exitCode isZero.
	self should: (process upToEnd = 'blabla').
