accessing
tearDown

	process isRunning ifTrue: [ process terminate ].
	process := nil. "Release the ProcessWrappers for successful plugin unloading"
	fileNames do: [ : each | each asFileReference ensureDelete ]
	