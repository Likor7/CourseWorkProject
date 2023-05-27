Class {
	#name : #BubbleSortTest,
	#superclass : #SortAlgorithmTest,
	#instVars : [
		'sorter'
	],
	#category : #'SortAlgorithms-Tests'
}

{ #category : #running }
BubbleSortTest >> setUp [
    super setUp.
    sorter := BubbleSort new.
]

{ #category : #tests }
BubbleSortTest >> testSort [
   | sortedData |
   sortedData := sorter sort: firstTestData.
   self assert: sortedData equals: expectedFirstTestData.
	sortedData := sorter sort: secondTestData.
   self assert: sortedData equals: expectedSecondTestData.

]
