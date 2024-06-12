Class {
	#name : #BaselineOfCourseWork,
	#superclass : #BaselineOf,
	#category : #BaselineOfCourseWork
}

{ #category : #baselines }
BaselineOfCourseWork >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
	
		spec
			package: 'VisitorPattern';
			package: 'VisitorPattern-Tests' with:  [ spec requires: #('VisitorPattern') ].
		"Groups"
		spec 
			group: 'Application' with: #('VisitorPattern');
			group: 'Tests' with: #('VisitorPattern-Tests');
			group: 'CI' with: #('Tests').
			
		"Virtual Groups"
		spec
			group: 'all' with: #('Application' 'Tests');
			group: 'default' with: #('all' ) ].
]
