"
The SquareFigure class is a subclass of the AbstractFigure class. It represents a specific type of figure, namely a square, within the context of the Bridge Pattern.

The SquareFigure class inherits the drawingMethod instance variable from its superclass, AbstractFigure. This variable holds a reference to a DrawingMethod object, which defines the specific drawing method used to render the square.

As a subclass of AbstractFigure, the SquareFigure class can extend and implement its own functionality specific to squares while leveraging the bridge pattern to connect the square figure with the appropriate drawing method.

The SquareFigure class does not define any additional instance or class variables beyond what is inherited from its superclass. Its primary focus is on implementing the specific behavior and characteristics of a square figure.

The SquareFigure class resides in the BridgePattern package, which encompasses various components and patterns related to the Bridge Pattern and its application in the application's design.

Overall, the SquareFigure class represents a specific type of figure, a square, within the Bridge Pattern. It extends the AbstractFigure class, providing its own implementation for square-related functionality while utilizing the bridge pattern to connect with the appropriate drawing method specified by the drawingMethod instance variable.
"
Class {
	#name : #SquareFigure,
	#superclass : #AbstractFigure,
	#category : #BridgePattern
}

{ #category : #drawing }
SquareFigure >> draw [
   drawingMethod drawSquare.
]
