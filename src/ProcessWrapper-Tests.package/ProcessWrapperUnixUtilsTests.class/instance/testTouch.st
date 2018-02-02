testing
testTouch

	| file |
	file := self newFileName.
	self should: (process startWithCommand: 'touch ', file).
	self should: (process waitForExitFor: 5000).
	self shouldnt: process isRunning.
	self should: process exitCode isZero.
	self should: file asFileReference exists.
	