Class {
	#name : #SortAlgorithmTest,
	#superclass : #TestCase,
	#instVars : [
		'firstTestData',
		'expectedFirstTestData',
		'secondTestData',
		'expectedSecondTestData'
	],
	#category : #'SortAlgorithms-Tests'
}

{ #category : #running }
SortAlgorithmTest >> setUp [
	super setUp.
	firstTestData := #(1 60 -1035 409 94 4 -30 89 10 -40).
	expectedFirstTestData := #(-1035 -40 -30 1 4 10 60 89 94 409).
	secondTestData := #(20 0.9 0.01 -0.0001 0 5 100 0.4 0.002 35).
	expectedSecondTestData := #(-0.0001 0 0.002 0.01 0.4 0.9 5 20 35 100).
]

{ #category : #tests }
SortAlgorithmTest >> testSort [
	self class = SortAlgorithmTest ifFalse: [self subclassResponsibility]
]
