"
The AbstractFigure class is a subclass of Object that represents an abstract figure in the context of the Bridge Pattern. It encapsulates a reference to a DrawingMethod object, serving as a bridge between the figure and the specific drawing method used to render it.

Instance Variables:

    drawingMethod: Represents an instance of a DrawingMethod subclass, which defines the specific drawing method used to render the figure.

The AbstractFigure class provides a foundation for implementing different types of figures within the application. By encapsulating a reference to a DrawingMethod object, it allows for flexibility in selecting and changing the drawing method used to render the figure.

The AbstractFigure class does not define any class variables. Its primary focus is on encapsulating the drawing method and providing a base for specific figure subclasses to extend and implement their own functionality.

The AbstractFigure class resides in the BridgePattern package, which encompasses various components and patterns related to the Bridge Pattern and its application in the application's design.

Overall, the AbstractFigure class represents an abstract figure in the Bridge Pattern. It acts as a bridge between the figure and the specific drawing method, enabling flexibility in rendering different types of figures by selecting and utilizing different drawing methods through the drawingMethod instance variable.
"
Class {
	#name : #AbstractFigure,
	#superclass : #Object,
	#instVars : [
		'drawingMethod'
	],
	#category : #BridgePattern
}

{ #category : #drawing }
AbstractFigure >> draw [
   self subclassResponsibility.
]

{ #category : #initialization }
AbstractFigure >> initialize [
   super initialize.
   drawingMethod := DrawingMethod new.

]

{ #category : #initialization }
AbstractFigure >> setDrawingMethod: aDrawingMethod [
   drawingMethod := aDrawingMethod.
]
