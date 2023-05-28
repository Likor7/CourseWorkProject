"
The AdapterApplication class is a subclass of Object that represents an application utilizing the Adapter Pattern for integrating payment processing functionality. It encapsulates a payment processor object that acts as an adapter for interacting with different payment systems.

Instance Variables:

    paymentProcessor: Represents the payment processor object that serves as an adapter for integrating payment systems into the application.

The main purpose of the AdapterApplication class is to provide a centralized interface for processing payments within the application. It manages the communication between the application and various payment systems through the paymentProcessor object.

By encapsulating the payment processing logic in the paymentProcessor object, the AdapterApplication class allows the application to interact with different payment systems using a uniform interface. This abstraction layer shields the application from the specific details of each payment system's API, promoting code flexibility and reusability.

The AdapterApplication class does not define any class variables. Its primary focus is on managing the payment processor object and facilitating payment processing operations within the application.

The AdapterApplication class is part of the AdapterPattern package, which encompasses various components and patterns related to adapting and integrating external payment systems. It represents the core logic of the application's payment processing functionality, leveraging the benefits of the Adapter Pattern to seamlessly incorporate different payment systems.

Overall, the AdapterApplication class acts as the main entry point for payment processing in the application. It manages the payment processor object, which serves as an adapter, and provides a unified interface for processing payments across multiple payment systems.
"
Class {
	#name : #AdapterPatternApplication,
	#superclass : #Object,
	#instVars : [
		'paymentProcessor'
	],
	#category : #AdapterPattern
}

{ #category : #initialization }
AdapterPatternApplication >> initialize [
    super initialize.
    paymentProcessor := AdapterPatternPaymentProcessor new.
]

{ #category : #action }
AdapterPatternApplication >> makePayment: aPayment [
    paymentProcessor processPayment: aPayment
]

{ #category : #initialization }
AdapterPatternApplication >> setPaymentSystem: aPaymentSystem [
    paymentProcessor paymentSystem: aPaymentSystem.
]
