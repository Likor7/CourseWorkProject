"
The Patient class is a subclass of Object that represents a patient in a medical context. It encapsulates various health-related data and maintains a list of observers that monitor the patient's vital signs.

Instance Variables:

    pulse: Represents the pulse rate of the patient.
    bodyTemperature: Represents the body temperature of the patient.
    bloodPressure: Represents the blood pressure of the patient.
    observers: Represents a collection of objects that observe and monitor the patient's vital signs.

The Patient class serves as a subject in the Observer Pattern, where observers can subscribe to receive updates on the patient's vital signs. Whenever there is a change in the patient's pulse rate, body temperature, or blood pressure, the Patient class notifies its observers, allowing them to take appropriate actions.

By maintaining instance variables such as pulse, bodyTemperature, and bloodPressure, the Patient class provides a mechanism for storing and accessing the patient's vital sign data. These variables can be updated by external systems or through direct measurements taken during medical assessments.

The observers instance variable represents a collection of objects that observe the patient's vital signs. These observers are notified whenever there is a change in the patient's vital signs, enabling them to react accordingly, such as triggering alerts, updating displays, or performing additional medical procedures.

The Patient class does not define any class variables. Its primary focus is on encapsulating patient-related data and providing a means for observers to monitor and respond to changes in the patient's vital signs.

The Patient class resides in the ObserverPattern package, which encompasses various components and patterns related to the Observer Pattern and its application in monitoring and tracking changes in observed objects.

Overall, the Patient class represents a patient in a medical context, encapsulating vital sign data and facilitating the observation and monitoring of these vital signs by registered observers. It enables efficient tracking of patient health status and supports real-time response and analysis in medical scenarios.
"
Class {
	#name : #Patient,
	#superclass : #Object,
	#instVars : [
		'pulse',
		'bodyTemperature',
		'bloodPressure',
		'observers'
	],
	#category : #ObserverPattern
}

{ #category : #adding }
Patient >> addObserver: anObserver [
    observers add: anObserver.
]

{ #category : #accessing }
Patient >> bloodPressure [
	^bloodPressure 
]

{ #category : #accessing }
Patient >> bloodPressure: aNumber [
    bloodPressure := aNumber.
    self notifyObservers.
]

{ #category : #accessing }
Patient >> bodyTemperature [
	^bodyTemperature 
]

{ #category : #accessing }
Patient >> bodyTemperature: aNumber [
    bodyTemperature := aNumber.
    self notifyObservers.
]

{ #category : #initialization }
Patient >> initialize [
    observers := Set new.

]

{ #category : #notifying }
Patient >> notifyObservers [
    observers do: [:each | each update: self].
]

{ #category : #accessing }
Patient >> pulse [
	^pulse 
]

{ #category : #accessing }
Patient >> pulse: aNumber [
    pulse := aNumber.
    self notifyObservers.

]

{ #category : #removing }
Patient >> removeObserver: anObserver [
    observers remove: anObserver ifAbsent: [].

]
