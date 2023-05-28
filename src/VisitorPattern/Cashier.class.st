"
The Cashier class is a subclass of Object that represents a cashier within the context of the Visitor Pattern. It handles transactions and payments in a shopping application.

Instance Variables:

    total: Represents the total amount of the transaction.

The Cashier class serves as a central component responsible for managing transactions and handling payments. It interacts with customers, calculates the total amount of purchases, applies discounts if applicable, and processes payments.

The total instance variable stores the total amount of the transaction, which is calculated based on the prices of the purchased products, any applicable discounts, or additional charges.

The Cashier class does not define any class variables. Its primary focus is on managing transactions and providing payment-related functionality.

The Cashier class resides in the VisitorPattern package, which encompasses various components and patterns related to the Visitor Pattern and its application in the application's design.

Overall, the Cashier class represents a cashier within a shopping application. It provides functionality for handling transactions, calculating the total amount, and processing payments, serving as a crucial component for ensuring smooth and accurate payment processing within the application.
"
Class {
	#name : #Cashier,
	#superclass : #Object,
	#instVars : [
		'total'
	],
	#category : #VisitorPattern
}

{ #category : #initialization }
Cashier >> initialize [
	super initialize.
	total := 0.
]

{ #category : #accessing }
Cashier >> total [
	^total

]

{ #category : #visiting }
Cashier >> visitClothing: aClothing [
	total := total + aClothing price.
]

{ #category : #visiting }
Cashier >> visitElectronics: aElectronics [
	total := total + aElectronics price.
]

{ #category : #visiting }
Cashier >> visitFood: aFood [
	total := total + aFood price.
]
