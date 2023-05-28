"
The Product class is a subclass of Object that represents a generic product within the context of the Visitor Pattern. It encapsulates information about a product, including its price.

Instance Variables:

    price: Represents the price of the product.

The Product class serves as a base class for representing different types of products within a shopping application. It provides a common structure and functionality that can be extended by specific product subclasses.

By defining the price instance variable, the Product class allows for storing and accessing the price information associated with each product. This information is essential for various shopping-related operations, such as calculating total costs, applying discounts, or comparing prices.

The Product class does not define any class variables. Its primary focus is on encapsulating product-related data and providing a foundation for specific product subclasses to extend and implement their own functionality.

The Product class resides in the VisitorPattern package, which encompasses various components and patterns related to the Visitor Pattern and its application in the application's design.

Overall, the Product class represents a generic product within the Visitor Pattern. It provides a structure for storing price information and acts as a base class for specific product subclasses, allowing for easy extension and customization to represent different types of products within a shopping application.
"
Class {
	#name : #Product,
	#superclass : #Object,
	#instVars : [
		'price'
	],
	#category : #VisitorPattern
}

{ #category : #accessing }
Product >> accept: aVisitor [
    self subclassResponsibility

]

{ #category : #initialization }
Product >> initialize [
    super initialize.
    price := 0.
]

{ #category : #accessing }
Product >> price [
    ^price
]

{ #category : #accessing }
Product >> price: anObject [
    price := anObject
]
