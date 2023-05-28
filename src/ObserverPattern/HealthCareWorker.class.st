"
The HealthCareWorker class is a subclass of Object that represents a healthcare professional or worker in a medical setting. It encapsulates information about the healthcare worker's profession or role within the healthcare system.

Instance Variables:

    profession: Represents the profession or role of the healthcare worker.

The HealthCareWorker class serves as a participant in the Observer Pattern, where it can act as an observer to monitor the vital signs and health status of patients. By subscribing to patient objects as observers, healthcare workers can receive updates and notifications regarding changes in patients' vital signs and take appropriate actions based on their professional expertise.

The profession instance variable stores information about the specific role or profession of the healthcare worker. It can hold values such as ""nurse,"" ""doctor,"" ""paramedic,"" or any other relevant designation.

The HealthCareWorker class does not define any class variables. Its primary focus is on encapsulating information about the healthcare worker's profession and participating as an observer in the Observer Pattern.

The HealthCareWorker class resides in the ObserverPattern package, which encompasses various components and patterns related to the Observer Pattern and its application in healthcare scenarios.

Overall, the HealthCareWorker class represents a healthcare professional or worker in a medical setting. It allows healthcare workers to subscribe as observers to patient objects, enabling them to monitor vital signs and health status and provide appropriate care and interventions based on their specific roles and expertise.
"
Class {
	#name : #HealthCareWorker,
	#superclass : #Object,
	#instVars : [
		'profession'
	],
	#category : #ObserverPattern
}

{ #category : #accessing }
HealthCareWorker >> profession [
    ^ profession
]

{ #category : #accessing }
HealthCareWorker >> profession: aString [
	profession := aString.
]

{ #category : #reaction }
HealthCareWorker >> reactToPatient [
	Transcript show: self profession; cr.
]

{ #category : #updating }
HealthCareWorker >> update: aPatient [
    self subclassResponsibility

]
