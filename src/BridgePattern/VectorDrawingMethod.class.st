"
The VectorDrawingMethod class is a subclass of the abstract DrawingMethod class. It represents a specific implementation of a drawing method that utilizes vector-based rendering techniques.

The VectorDrawingMethod class specializes in rendering shapes using vector-based graphics, which involve mathematical descriptions of lines, curves, and shapes. It provides the necessary methods and logic to render shapes in a vector format.

As a subclass of DrawingMethod, the VectorDrawingMethod class implements the abstract methods defined in its superclass, providing the concrete implementation specific to vector-based rendering. It leverages the bridge pattern by connecting the shape objects with the vector rendering techniques.

The VectorDrawingMethod class does not define any additional instance or class variables beyond what is inherited from its superclass. Its primary focus is on providing the implementation for vector-based drawing methods.

The VectorDrawingMethod class resides in the BridgePattern package, which encompasses various components and patterns related to the Bridge Pattern and its application in the application's design.

Overall, the VectorDrawingMethod class represents a specific implementation of a drawing method that utilizes vector-based rendering techniques. It extends the abstract DrawingMethod class and provides the necessary logic for rendering shapes in a vector format, ensuring the separation between shape objects and the rendering techniques in a flexible and modular manner.
"
Class {
	#name : #VectorDrawingMethod,
	#superclass : #DrawingMethod,
	#category : #BridgePattern
}

{ #category : #drawing }
VectorDrawingMethod >> drawCircle [   
	| circle |
   circle := CircleMorph new.
   circle color: Color red.
	circle borderWidth: 0.
   circle openInWorld.
]

{ #category : #drawing }
VectorDrawingMethod >> drawSquare [
   | bounds morph |
   bounds := 0 @ 0 corner: 16 @ 16.
	morph := Morph new.
	morph extent: bounds extent.
   morph color: Color blue.
	morph openInWorld.
]
