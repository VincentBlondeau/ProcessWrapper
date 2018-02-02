doits
checkPluginVersion

	| pluginVersion |
	[ pluginVersion := self pluginVersion ]
		on: Error
		do: [ pluginVersion := 0 ].
	pluginVersion = self requiredPluginVersion ifTrue: [ ^self ].
	self downloadPlugin