"
The BubbleSort class is a concrete subclass of SortAlgorithm in the Factory Method pattern architecture. It represents a specific sorting algorithm implementation called Bubble Sort. Bubble Sort is a simple comparison-based algorithm that repeatedly steps through the list, compares adjacent elements, and swaps them if they are in the wrong order. This process is repeated until the list is sorted.

The BubbleSort class does not introduce any additional instance variables or class variables beyond those inherited from its superclass, SortAlgorithm. It focuses on implementing the specific sorting algorithm logic using the common interface defined by SortAlgorithm.

By subclassing SortAlgorithm and creating the BubbleSort class, we can encapsulate the unique behavior of the Bubble Sort algorithm. This promotes code reuse, modularity, and extensibility by providing a clear separation between the sorting algorithm implementation and other parts of the system.

As part of the Factory Method pattern, the BubbleSort class follows the principle of encapsulating object creation by defining a specific sorting algorithm. This allows clients of the class to use the abstract interface provided by SortAlgorithm to sort their collections without being aware of the specific sorting algorithm being used.

The BubbleSort class, residing in the FactoryMethodPattern package, contributes to the broader architecture of the Factory Method pattern by providing a concrete implementation of a sorting algorithm. It can be used alongside other concrete sorting algorithm classes to create a flexible and extensible sorting system.

In summary, the BubbleSort class represents the Bubble Sort algorithm implementation and demonstrates the usage of the Factory Method pattern for creating and working with sorting algorithms in a modular and interchangeable manner.
"
Class {
	#name : #BubbleSort,
	#superclass : #SortAlgorithmAbstract,
	#category : #SortAlgorithms
}

{ #category : #sorting }
BubbleSort >> sort: aCollection [
	| array temp swapped |
   array := aCollection copy.
   swapped := true.
   [swapped] whileTrue: [
       swapped := false.
       1 to: array size - 1 do: [:i |
           (array at: i) > (array at: i + 1) ifTrue: [
               temp := array at: i.
               array at: i put: (array at: i + 1).
               array at: i + 1 put: temp.
               swapped := true
           ]
       ]
   ].
   ^ array
]
