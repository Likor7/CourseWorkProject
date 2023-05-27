"
The SortAlgorithmFactory class is a subclass of Object in the Factory Method pattern architecture. It serves as a factory class responsible for creating instances of different sorting algorithms based on client requests. The factory encapsulates the creation logic and provides a common interface for clients to obtain instances of sorting algorithms without directly instantiating them.

The SortAlgorithmFactory class does not introduce any instance variables or class variables beyond those inherited from its superclass, Object. It focuses on implementing the factory methods and managing the creation of sorting algorithm instances.

As part of the Factory Method pattern, the SortAlgorithmFactory class follows the principle of encapsulating object creation by providing a centralized place for creating sorting algorithm objects. It decouples the client code from the specific sorting algorithm classes, allowing for flexibility and extensibility in adding new sorting algorithms.

Clients of the SortAlgorithmFactory class can request a specific sorting algorithm by invoking the appropriate factory method, which returns an instance of the requested algorithm. This abstraction enables clients to work with sorting algorithms through a common interface defined by the SortAlgorithm superclass, without having to be aware of the specific algorithm being used or the details of its instantiation.

The SortAlgorithmFactory class, residing in the FactoryMethodPattern package, contributes to the broader architecture of the Factory Method pattern by providing a centralized mechanism for creating sorting algorithm objects. It promotes modularity, code reuse, and separation of concerns by encapsulating the creation logic in a dedicated factory class.

In summary, the SortAlgorithmFactory class serves as a factory for creating sorting algorithm instances in the Factory Method pattern. It abstracts the creation process, allowing clients to obtain instances of sorting algorithms through a common interface, and supports the principles of modularity and extensibility in the sorting system.

"
Class {
	#name : #SortAlgorithmFactory,
	#superclass : #Object,
	#category : #FactoryMethodPattern
}

{ #category : #private }
SortAlgorithmFactory >> algorithmClassFor: aType [
    | result |
    result := self sortAlgorithmClasses at: aType ifAbsent: [ nil ].
    result ifNil: [ self error: 'Unknown sort algorithm type' ].
    ^ result
]

{ #category : #creating }
SortAlgorithmFactory >> createSortAlgorithm: aType [
    | algorithmClass |
    algorithmClass := self algorithmClassFor: aType.
    ^ algorithmClass new
]

{ #category : #private }
SortAlgorithmFactory >> sortAlgorithmClasses [
    ^ { 
        'QuickSort'->QuickSort.
        'MergeSort'->MergeSort.
        'BubbleSort'->BubbleSort.
    } asDictionary
]
