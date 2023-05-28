"
The FactoryMethodApplication class is a subclass of Object in the Factory Method pattern architecture. It serves as the main class for the factory method application, responsible for initializing and utilizing the DataProcessor class and its associated factory.

The FactoryMethodApplication class has one instance variable, factoryMethodDataProcessor, which holds an instance of the DataProcessor class. This variable will be used to process data using various sorting algorithms.

As an entry point to the application, the FactoryMethodApplication class can be responsible for orchestrating data processing operations and interacting with the DataProcessor class.

By subclassing Object and creating the FactoryMethodApplication class, we establish a separate class that can be dedicated to managing the factory method application's specific functionality.

The FactoryMethodApplication class, residing in the FactoryMethodPattern package, plays a key role in the broader architecture of the Factory Method pattern. It facilitates the integration and utilization of the DataProcessor class and promotes the principles of encapsulation and modularity.

In summary, the FactoryMethodApplication class represents the main class of the factory method application. It provides a centralized location for initializing and utilizing the DataProcessor class and its associated factory. By utilizing this class, clients can process data using various sorting algorithms and leverage the benefits of the Factory Method pattern.
"
Class {
	#name : #FactoryMethodApplication,
	#superclass : #Object,
	#instVars : [
		'factoryMethodDataProcessor'
	],
	#category : #FactoryMethodPattern
}

{ #category : #initialization }
FactoryMethodApplication >> initialize [
    super initialize.
    factoryMethodDataProcessor := FactoryMethodDataProcessor new.
]

{ #category : #running }
FactoryMethodApplication >> run [
	| notsortedData sortedData |
	notsortedData := Array withAll: #( 5 3 8 4 9 1 6 2 73333 ).
	sortedData := self
		              runWithSortAlgorithm: 'BubbleSort'
		              inputData: notsortedData
]

{ #category : #run }
FactoryMethodApplication >> runWithSortAlgorithm: algorithmType inputData: inputData [
    | sortedData |
    sortedData := factoryMethodDataProcessor processData: inputData withSortAlgorithm: algorithmType.
    Transcript show: sortedData; cr.
]
