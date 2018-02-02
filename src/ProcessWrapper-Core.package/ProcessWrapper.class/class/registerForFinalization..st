finalization
registerForFinalization: aProcessWrapper

	self finalizationRegistry 
		remove: aProcessWrapper ifAbsent: [];
		add: aProcessWrapper 
