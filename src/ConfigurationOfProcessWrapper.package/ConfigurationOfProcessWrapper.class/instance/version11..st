versions
version11: spec
	<version: '1.1' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.1'.
		spec author: 'HernanMoralesDurand'.
		spec timestamp: '9/11/2014 03:00'.
		spec 
			package: 'ProcessWrapper-Core' with: 'ProcessWrapper-Core-HernanMoralesDurand.35';
			package: 'ProcessWrapper-Tests' with: 'ProcessWrapper-Tests-HernanMoralesDurand.3'. ].
