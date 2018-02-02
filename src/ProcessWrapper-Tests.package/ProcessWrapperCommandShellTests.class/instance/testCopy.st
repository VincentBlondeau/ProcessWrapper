testing
testCopy

	| file1 file2 |
	file1 := self newFileName.
	file2 := self newFileName.
	(FileSystem workingDirectory / file1) writeStream close.
	self should: (process startWithShellCommand: 'copy ', file1, ' ', file2).
	self should: (process waitForExitFor: 5000).
	self shouldnt: process isRunning.
	self should: process exitCode isZero.
	self should: file1 asFileReference exists.
	self should: file2 asFileReference exists.
