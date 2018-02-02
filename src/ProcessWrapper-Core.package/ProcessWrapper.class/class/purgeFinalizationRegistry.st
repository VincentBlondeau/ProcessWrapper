startup-shutdown
purgeFinalizationRegistry

	self finalizationRegistry keys do: [ :each |
		self finalizationRegistry remove: each ifAbsent: [] ]
