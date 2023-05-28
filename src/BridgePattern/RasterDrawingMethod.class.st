"
The RasterDrawingMethod class is a subclass of the abstract DrawingMethod class. It represents a specific implementation of a drawing method that utilizes raster-based rendering techniques.

The RasterDrawingMethod class specializes in rendering shapes using raster-based graphics, which involve manipulating individual pixels to create the desired visual output. It provides the necessary methods and logic to render shapes in a rasterized format.

As a subclass of DrawingMethod, the RasterDrawingMethod class implements the abstract methods defined in its superclass, providing the concrete implementation specific to raster-based rendering. It leverages the bridge pattern by connecting the shape objects with the raster rendering techniques.

The RasterDrawingMethod class does not define any additional instance or class variables beyond what is inherited from its superclass. Its primary focus is on providing the implementation for raster-based drawing methods.

The RasterDrawingMethod class resides in the BridgePattern package, which encompasses various components and patterns related to the Bridge Pattern and its application in the application's design.

Overall, the RasterDrawingMethod class represents a specific implementation of a drawing method that utilizes raster-based rendering techniques. It extends the abstract DrawingMethod class and provides the necessary logic for rendering shapes in a rasterized format, ensuring the separation between shape objects and the rendering techniques in a flexible and modular manner.
"
Class {
	#name : #RasterDrawingMethod,
	#superclass : #DrawingMethod,
	#category : #BridgePattern
}

{ #category : #drawing }
RasterDrawingMethod >> drawCircle [
	(ZnEasy getPng: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Pan_Blue_Circle.png/240px-Pan_Blue_Circle.png') asMorph openInWorld
]

{ #category : #drawing }
RasterDrawingMethod >> drawSquare [
   	(ZnEasy getPng: 'https://upload.wikimedia.org/wikipedia/commons/d/d1/Square.png') asMorph openInWorld
]
