"
The BridgePatternApplication class is a subclass of Object that represents an application utilizing the Bridge Pattern. It encapsulates instances of classes related to drawing shapes, such as Circle, Square, VectorRenderer, and RasterRenderer, and provides methods for utilizing the bridge pattern to draw shapes using different rendering techniques.

Instance Variables:

    circle: Represents an instance of the Circle class, which represents a circle shape.
    square: Represents an instance of the Square class, which represents a square shape.
    vectorMethod: Represents an instance of the VectorRenderer class, which provides vector-based rendering functionality.
    rasterMethod: Represents an instance of the RasterRenderer class, which provides raster-based rendering functionality.

The BridgePatternApplication class serves as the entry point for utilizing the Bridge Pattern in the application. It allows for the decoupling of shape objects and rendering methods by utilizing the bridge pattern to connect the two.

By encapsulating instances of the Circle, Square, VectorRenderer, and RasterRenderer classes, the BridgePatternApplication class provides a central platform for managing and utilizing shape objects and rendering methods within the application.

The BridgePatternApplication class does not define any class variables. Its primary focus is on encapsulating and managing instances of the various shape and rendering-related classes.

The BridgePatternApplication class resides in the BridgePattern package, which encompasses various components and patterns related to the Bridge Pattern and its application in the application's design.

Overall, the BridgePatternApplication class represents an application that leverages the Bridge Pattern to decouple shapes and rendering methods. It provides a platform for managing shape objects and rendering techniques, enabling the flexibility to draw shapes using different rendering methods without tightly coupling them together.
"
Class {
	#name : #BridgePatternApplication,
	#superclass : #Object,
	#instVars : [
		'circle',
		'square',
		'vectorMethod',
		'rasterMethod'
	],
	#category : #BridgePattern
}

{ #category : #initialization }
BridgePatternApplication >> initialize [
    super initialize.
    circle := CircleFigure new.
    square := SquareFigure new.
    vectorMethod := VectorDrawingMethod new.
    rasterMethod := RasterDrawingMethod new.
]

{ #category : #running }
BridgePatternApplication >> run [
    circle setDrawingMethod: rasterMethod.
    square setDrawingMethod: vectorMethod.

    circle draw.
    square draw.
]
