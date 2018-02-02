testing
testMove

	| file1 file2 |
	file1 := self newFileName.
	file2 := self newFileName.
	(FileSystem workingDirectory / file1) writeStream close.
	process startWithShellCommand: 'move ', file1, ' ', file2.
	process waitForExitFor: 1000.
	self shouldnt: process isRunning.
	self should: process exitCode isZero.
	self shouldnt: file1 asFileReference exists.
	self should: file2 asFileReference exists.