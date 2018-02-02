startup-shutdown
shutDown: quitting

	quitting ifTrue: [ self purgeFinalizationRegistry ]