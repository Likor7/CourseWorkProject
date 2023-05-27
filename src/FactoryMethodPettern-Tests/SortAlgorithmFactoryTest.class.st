Class {
	#name : #SortAlgorithmFactoryTest,
	#superclass : #TestCase,
	#category : #'FactoryMethodPettern-Tests'
}

{ #category : #tests }
SortAlgorithmFactoryTest >> testCreateSortAlgorithm [
   | quickSort mergeSort bubbleSort sortAlgorithmFactory|
   sortAlgorithmFactory := SortAlgorithmFactory new.
   quickSort := sortAlgorithmFactory createSortAlgorithm: 'QuickSort'.
   mergeSort := sortAlgorithmFactory createSortAlgorithm: 'MergeSort'.
   bubbleSort := sortAlgorithmFactory createSortAlgorithm: 'BubbleSort'.
 	self assert: quickSort class equals: QuickSort.
   self assert: mergeSort class equals: MergeSort.
   self assert: bubbleSort class equals: BubbleSort.
   self should: [ sortAlgorithmFactory createSortAlgorithm: 'UnknownType' ] raise: Error.


]
