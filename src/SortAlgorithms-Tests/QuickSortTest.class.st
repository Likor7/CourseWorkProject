Class {
	#name : #QuickSortTest,
	#superclass : #SortAlgorithmTest,
	#instVars : [
		'sorter'
	],
	#category : #'SortAlgorithms-Tests'
}

{ #category : #running }
QuickSortTest >> setUp [
    super setUp.
    sorter := QuickSort new.
]

{ #category : #tests }
QuickSortTest >> testSort [
   | sortedData |
   sortedData := sorter sort: firstTestData.
   self assert: sortedData equals: expectedFirstTestData.
	sortedData := sorter sort: secondTestData.
   self assert: sortedData equals: expectedSecondTestData.
]

{ #category : #tests }
QuickSortTest >> testSwap [
	| swapped |
   swapped := firstTestData copy.
	sorter swap: swapped i: 2 j: 4.
   self assert: swapped equals: #(1 409 -1035 60 94 4 -30 89 10 -40).
	sorter swap: swapped i: 10 j: 1.
   self assert: swapped equals: #(-40 409 -1035 60 94 4 -30 89 10 1)
]
