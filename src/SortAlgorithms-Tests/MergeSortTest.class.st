Class {
	#name : #MergeSortTest,
	#superclass : #SortAlgorithmTest,
	#instVars : [
		'sorter'
	],
	#category : #'SortAlgorithms-Tests'
}

{ #category : #running }
MergeSortTest >> setUp [
    super setUp.
    sorter := MergeSort new.
]

{ #category : #tests }
MergeSortTest >> testMerge [
    | mergedArray |
    mergedArray := sorter merge: firstTestData with: secondTestData.
    self assert: mergedArray equals: #(1 20 0.9 0.01 -0.0001 0 5 60 -1035 100 0.4 0.002 35 409 94 4 -30 89 10 -40)
]

{ #category : #tests }
MergeSortTest >> testSort [
   | sortedData |
   sortedData := sorter sort: firstTestData.
   self assert: sortedData equals: expectedFirstTestData.
	sortedData := sorter sort: secondTestData.
   self assert: sortedData equals: expectedSecondTestData.

]
