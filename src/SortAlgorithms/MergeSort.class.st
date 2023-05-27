"
The MergeSort class is a concrete subclass of SortAlgorithm in the Factory Method pattern architecture. It represents a specific sorting algorithm implementation called Merge Sort. Merge Sort is a divide-and-conquer algorithm that recursively divides the input collection into smaller sub-collections, sorts them individually, and then merges them back together to produce a sorted result.

The MergeSort class does not introduce any additional instance variables or class variables beyond those inherited from its superclass, SortAlgorithm. It focuses on implementing the specific sorting algorithm logic using the common interface defined by SortAlgorithm.

By subclassing SortAlgorithm and creating the MergeSort class, we can encapsulate the unique behavior of the Merge Sort algorithm. This promotes code reuse, modularity, and extensibility by providing a clear separation between the sorting algorithm implementation and other parts of the system.

As part of the Factory Method pattern, the MergeSort class follows the principle of encapsulating object creation by defining a specific sorting algorithm. This allows clients of the class to use the abstract interface provided by SortAlgorithm to sort their collections without being aware of the specific sorting algorithm being used.

The MergeSort class, residing in the FactoryMethodPattern package, contributes to the broader architecture of the Factory Method pattern by providing a concrete implementation of a sorting algorithm. It can be used alongside other concrete sorting algorithm classes to create a flexible and extensible sorting system.

In summary, the MergeSort class represents the Merge Sort algorithm implementation and demonstrates the usage of the Factory Method pattern for creating and working with sorting algorithms in a modular and interchangeable manner.
"
Class {
	#name : #MergeSort,
	#superclass : #SortAlgorithmAbstract,
	#category : #SortAlgorithms
}

{ #category : #'private utilities' }
MergeSort >> merge: array1 with: array2 [
    | merged i j |
    merged := Array new: array1 size + array2 size.
    i := j := 1.
    1 to: merged size do: [ :index |
        (i <= array1 size and: [j > array2 size or: [(array1 at: i) <= (array2 at: j)]])
            ifTrue: [
                merged at: index put: (array1 at: i).
                i := i + 1.
            ]
            ifFalse: [
                merged at: index put: (array2 at: j).
                j := j + 1.
            ]
    ].
    ^ merged
]

{ #category : #'private sorting' }
MergeSort >> mergeSort: anArray [
	| middle left right |
	anArray size <= 1
		ifTrue: [^ anArray].
	middle := anArray size // 2.
	left := anArray copyFrom: 1 to: middle.
	right := anArray copyFrom: middle + 1 to: anArray size.
	^ self merge: (self mergeSort: left) with: (self mergeSort: right)
]

{ #category : #sorting }
MergeSort >> sort: aCollection [
	^ self mergeSort: aCollection copy
]
