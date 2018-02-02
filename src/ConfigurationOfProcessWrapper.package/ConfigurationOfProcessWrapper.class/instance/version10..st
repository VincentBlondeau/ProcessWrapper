versions
version10: spec
	<version: '1.0' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.0'.
		spec author: 'HernanMoralesDurand'.
		spec timestamp: '8/28/2014 01:29'.
		spec 
			package: 'ProcessWrapper-Core' with: 'ProcessWrapper-Core-HernanMoralesDurand.34';
			package: 'ProcessWrapper-Tests' with: 'ProcessWrapper-Tests-HernanMoralesDurand.3'. ].
