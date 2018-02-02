testing
testCat

	process useStdout.
	self should: (process startWithCommand: 'cat').
	self should: (process isRunning).
	self shouldnt: (process waitForExitFor: 5000).
	self should: (process writeToStdin: 'bla').
	self should: process isRunning.
	self should: ((process next: 3) = 'bla').
	self should: (process closeStdin).
	self should: (process waitForExitFor: 5000).
	self shouldnt: process isRunning.
	self should: process exitCode isZero.
	