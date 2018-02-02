versions
version12: spec
	<version: '1.2' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.2'.
		spec author: 'HernanMoralesDurand'.
		spec timestamp: '9/11/2014 03:00'].
	spec for: #'pharo3.x' do: [
		spec 
			package: 'ProcessWrapper-Core' with: 'ProcessWrapper-Core-HernanMoralesDurand.35';
			package: 'ProcessWrapper-Tests' with: 'ProcessWrapper-Tests-HernanMoralesDurand.3'. ].
	spec for: #'pharo4.x' do: [ 			
		spec 
			package: 'ProcessWrapper-Core' with: 'ProcessWrapper-Core-HernanMoralesDurand.36';
			package: 'ProcessWrapper-Tests' with: 'ProcessWrapper-Tests-HernanMoralesDurand.3'. ].
	spec for: #( #'pharo5.x' #'pharo6.x' ) do: [ 			
		spec 
			package: 'ProcessWrapper-Core' with: 'ProcessWrapper-Core-HernanMoralesDurand.37';
			package: 'ProcessWrapper-Tests' with: 'ProcessWrapper-Tests-HernanMoralesDurand.3'. ].