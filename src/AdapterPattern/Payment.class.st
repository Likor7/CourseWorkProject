"
The Payment class is a subclass of Object that represents a payment transaction within the context of the Adapter Pattern. It encapsulates information about the payment amount and currency.

Instance Variables:

    amount: Represents the amount of the payment. It holds the numerical value of the payment amount.
    currency: Represents the currency used for the payment. It stores the currency code (e.g., USD, EUR) indicating the currency type.

The Payment class is designed to store and manage payment-related data within the application. It provides a convenient way to encapsulate and manipulate payment information, making it easier to perform operations such as processing payments, tracking transactions, and generating payment-related reports.

By defining the amount and currency instance variables, the Payment class allows the application to store and access the necessary details for processing a payment. The amount variable holds the actual payment amount, while the currency variable indicates the currency in which the payment is made. This information is crucial for accurately processing and recording payment transactions.

The Payment class does not define any class variables. Its primary purpose is to provide a data structure and encapsulation for payment-related information at the instance level.

The Payment class resides in the AdapterPattern package, which encompasses various components and patterns related to adapting and integrating external payment systems. It serves as a foundational building block for implementing payment functionality and working with payment-related data within the application.

Overall, the Payment class acts as a container for storing payment details, including the payment amount and currency. It provides a structured representation of payment transactions and facilitates efficient payment processing and management within the application.
"
Class {
	#name : #Payment,
	#superclass : #Object,
	#instVars : [
		'amount',
		'currency'
	],
	#category : #AdapterPattern
}

{ #category : #accessing }
Payment >> amount [
    ^amount

]

{ #category : #accessing }
Payment >> amount: anAmount [
    amount := anAmount
]

{ #category : #accessing }
Payment >> currency [
    ^currency
]

{ #category : #accessing }
Payment >> currency: aCurrency [
    currency := aCurrency
]
