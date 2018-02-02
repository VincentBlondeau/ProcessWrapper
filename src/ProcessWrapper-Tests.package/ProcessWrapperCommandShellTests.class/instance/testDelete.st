testing
testDelete

	| file |
	file := self newFileName.
	(FileSystem workingDirectory / file) writeStream close.
	self should: (process startWithShellCommand: 'del ', file).
	self should: (process waitForExitFor: 5000).
	self shouldnt: process isRunning.
	self should: process exitCode isZero.
	self shouldnt: file asFileReference exists.
