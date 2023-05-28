"
The DrawingMethod class is an abstract subclass of Object that serves as a base class for different drawing methods in the Bridge Pattern. It provides a common interface for implementing various drawing methods and acts as a bridge between the shape objects and the rendering techniques.

The DrawingMethod class does not define any instance or class variables explicitly. Its main purpose is to define the contract or interface that subclasses must adhere to when implementing specific drawing methods.

As an abstract class, the DrawingMethod class cannot be directly instantiated. Instead, it serves as a blueprint for concrete subclasses that provide the actual implementation of specific drawing methods.

The DrawingMethod class resides in the BridgePattern package, which encompasses various components and patterns related to the Bridge Pattern and its application in the application's design.

Overall, the DrawingMethod abstract class represents a fundamental component in the Bridge Pattern, providing a common interface for different drawing methods. Its subclasses would implement specific drawing methods by extending this abstract class, allowing for the decoupling of shape objects and rendering techniques in a flexible and reusable manner.
"
Class {
	#name : #DrawingMethod,
	#superclass : #Object,
	#category : #BridgePattern
}

{ #category : #drawing }
DrawingMethod >> drawCircle [
   self subclassResponsibility.

]

{ #category : #drawing }
DrawingMethod >> drawSquare [
   self subclassResponsibility.

]
