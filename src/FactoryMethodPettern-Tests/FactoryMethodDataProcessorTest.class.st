Class {
	#name : #FactoryMethodDataProcessorTest,
	#superclass : #TestCase,
	#category : #'FactoryMethodPettern-Tests'
}

{ #category : #tests }
FactoryMethodDataProcessorTest >> testProcessData [
	| factoryMethodDataProcessor sortedData |
	factoryMethodDataProcessor := FactoryMethodDataProcessor new.
	sortedData := factoryMethodDataProcessor processData: #(8 100 -30 22) withSortAlgorithm: 'QuickSort'.
 	self assert: sortedData equals: #(-30 8 22 100).
	sortedData := factoryMethodDataProcessor processData: #(93 2 -10.2 9.9) withSortAlgorithm: 'BubbleSort'.
 	self assert: sortedData equals: #(-10.2 2 9.9 93).
	sortedData := factoryMethodDataProcessor processData: #(0 2 3.2 -1) withSortAlgorithm: 'MergeSort'.
 	self assert: sortedData equals: #(-1 0 2 3.2)


	
]
