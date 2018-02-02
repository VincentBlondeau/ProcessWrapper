testing
testEcho

	process useStdout.
	self should: (process startWithShellCommand: 'echo blabla').
	self should: (process upToEnd = ('blabla', String crlf)).
	self should: (process waitForExitFor: 1000).
	self shouldnt: process isRunning.
	self should: process exitCode isZero.
	