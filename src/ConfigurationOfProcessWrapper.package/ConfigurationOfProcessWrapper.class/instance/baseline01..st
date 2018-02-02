baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec preLoadDoIt: #checkPluginVersion.
		spec repository: 'http://smalltalkhub.com/mc/hernan/ProcessWrapper/main/'.
		spec 
			package: 'ProcessWrapper-Core';
			package: 'ProcessWrapper-Tests'.
		spec 
			group: 'Core' with: #('ProcessWrapper-Core');
			group: 'Tests' with: #('ProcessWrapper-Core' 'ProcessWrapper-Tests') ].
