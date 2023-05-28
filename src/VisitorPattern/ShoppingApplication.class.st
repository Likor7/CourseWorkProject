"
The ShoppingApplication class is a subclass of Object that represents a shopping application. It encapsulates instances of the Cashier, Food, Clothing, and Electronics classes, allowing for the management and coordination of shopping-related activities within the application.

Instance Variables:

    cashier: Represents an instance of the Cashier class, responsible for handling transactions and payments in the shopping application.
    food: Represents an instance of the Food class, representing a category of products related to food items.
    clothing: Represents an instance of the Clothing class, representing a category of products related to clothing items.
    electronics: Represents an instance of the Electronics class, representing a category of products related to electronic items.

The ShoppingApplication class serves as the central component of the shopping application, facilitating the interaction between customers, products, and the cashier. It enables the coordination of shopping activities, managing product categories, and handling transactions.

By encapsulating instances of the Cashier, Food, Clothing, and Electronics classes, the ShoppingApplication class provides a centralized platform for managing and utilizing shopping-related components within the application.

The ShoppingApplication class does not define any class variables. Its primary focus is on encapsulating and managing instances of the various shopping-related classes.

The ShoppingApplication class resides in the VisitorPattern package, which encompasses various components and patterns related to the Visitor Pattern and its application in the application's design.

Overall, the ShoppingApplication class represents a shopping application that integrates and coordinates the activities of customers, cashiers, and various product categories. It serves as a platform for managing shopping-related components, facilitating transactions, and enhancing the overall shopping experience within the application.
"
Class {
	#name : #ShoppingApplication,
	#superclass : #Object,
	#instVars : [
		'cashier',
		'food',
		'clothing',
		'electronics'
	],
	#category : #VisitorPattern
}

{ #category : #calculating }
ShoppingApplication >> calculateClothingPrice [
	cashier visitClothing: clothing.
	Transcript 
		show: 'Total price with clothing: '; 
		show: cashier total; 
   		cr.	
]

{ #category : #calculating }
ShoppingApplication >> calculateElectronicsPrice [
	cashier visitElectronics: electronics.
    Transcript 
        show: 'Total price for electronics: '; 
        show: cashier total; 
        cr.
]

{ #category : #calculating }
ShoppingApplication >> calculateFoodPrice [
	cashier visitFood: food.
	Transcript 
		show: 'Total price with food:';
		show: cashier total;
		cr.
]

{ #category : #initialization }
ShoppingApplication >> initialize [
    super initialize.
    cashier := Cashier new.
    food := Food new price: 100.
    clothing := Clothing new price: 200.
    electronics := Electronics new price: 300.
]

{ #category : #running }
ShoppingApplication >> run [
   self calculateFoodPrice.
   self calculateClothingPrice.
   self calculateElectronicsPrice.
]
