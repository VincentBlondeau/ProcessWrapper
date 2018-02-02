as yet unclassified
on: aProcessWrapper with: readerSelector with: semaphoreSetterSelector

	^self basicNew
		processWrapper: aProcessWrapper;
		readerSelector: readerSelector;
		semaphoreSetterSelector: semaphoreSetterSelector;
		initialize;
		yourself