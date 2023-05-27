"
The QuickSort class is a concrete subclass of SortAlgorithm in the Factory Method pattern architecture. It represents a specific sorting algorithm implementation called Quick Sort. Quick Sort is a divide-and-conquer algorithm that works by selecting a pivot element from the collection and partitioning the other elements into two sub-collections based on their relationship to the pivot. It then recursively applies the same process to the sub-collections until the entire collection is sorted.

The QuickSort class does not introduce any additional instance variables or class variables beyond those inherited from its superclass, SortAlgorithm. It focuses on implementing the specific sorting algorithm logic using the common interface defined by SortAlgorithm.

By subclassing SortAlgorithm and creating the QuickSort class, we can encapsulate the unique behavior of the Quick Sort algorithm. This promotes code reuse, modularity, and extensibility by providing a clear separation between the sorting algorithm implementation and other parts of the system.

As part of the Factory Method pattern, the QuickSort class follows the principle of encapsulating object creation by defining a specific sorting algorithm. This allows clients of the class to use the abstract interface provided by SortAlgorithm to sort their collections without being aware of the specific sorting algorithm being used.

The QuickSort class, residing in the FactoryMethodPattern package, contributes to the broader architecture of the Factory Method pattern by providing a concrete implementation of a sorting algorithm. It can be used alongside other concrete sorting algorithm classes to create a flexible and extensible sorting system.

In summary, the QuickSort class represents the Quick Sort algorithm implementation and demonstrates the usage of the Factory Method pattern for creating and working with sorting algorithms in a modular and interchangeable manner.
"
Class {
	#name : #QuickSort,
	#superclass : #SortAlgorithmAbstract,
	#category : #SortAlgorithms
}

{ #category : #'private sorting' }
QuickSort >> quickSort: array left: left right: right [
    | pivot i j temp |
    i := left.
    j := right.
    pivot := array at: (left + right // 2).
    [i <= j] whileTrue: [
        [(array at: i) < pivot and: [i < right]] whileTrue: [i := i + 1].
        [(array at: j) > pivot and: [j > left]] whileTrue: [j := j - 1].
        (i <= j) ifTrue: [
            temp := array at: i.
            array at: i put: (array at: j).
            array at: j put: temp.
            i := i + 1.
            j := j - 1.
        ].
    ].
    (left < j) ifTrue: [self quickSort: array left: left right: j].
    (i < right) ifTrue: [self quickSort: array left: i right: right].
    ^ array
]

{ #category : #sorting }
QuickSort >> sort: aCollection [
	| array |
	array := aCollection copy.
	^ self quickSort: array left: 1 right: array size.
]

{ #category : #'private utilities' }
QuickSort >> swap: array i: i j: j [
	| temp |
	temp := array at: i.
	array at: i put: (array at: j).
	array at: j put: temp.
]
