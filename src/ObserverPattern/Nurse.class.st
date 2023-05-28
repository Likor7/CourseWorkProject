"
The Nurse class is a subclass of HealthCareWorker that represents a nurse in a healthcare setting. It inherits the profession and functionality from the HealthCareWorker class and may have additional methods or behaviors specific to the role of a nurse.

Nurses play a crucial role in patient care, providing direct assistance and support to patients and collaborating closely with other healthcare professionals. They are responsible for monitoring patients, administering medications, assisting with procedures, providing patient education, and ensuring overall patient comfort and well-being.

As a subclass of HealthCareWorker, the Nurse class inherits the profession instance variable, which represents the specific role or profession of the healthcare worker. In this case, the value of the profession instance variable for instances of the Nurse class would typically be set to ""nurse"" to indicate the specific role.

The Nurse class does not define any additional instance or class variables beyond what is inherited from its superclass. Its primary focus is to represent the specialized role of a nurse within the broader healthcare worker framework.

The Nurse class resides in the ObserverPattern package, which encompasses various components and patterns related to the Observer Pattern and its application in healthcare scenarios.

Overall, the Nurse class represents a nurse in a healthcare setting, inheriting the functionality and profession information from the HealthCareWorker superclass. It can have additional methods and behaviors specific to the role of a nurse, making it suitable for modeling nurses within a larger healthcare worker system.
"
Class {
	#name : #Nurse,
	#superclass : #HealthCareWorker,
	#category : #ObserverPattern
}

{ #category : #initialization }
Nurse >> initialize [
    super initialize.
    self profession: 'Nurse'.
]

{ #category : #reaction }
Nurse >> reactToBodyTemperature: aBodyTemperature [
    Transcript 
        show: 'Observes patient`s body temperature is: '; 
        show: aBodyTemperature; 
		  show: '. And I will tell the doctor it.';
        cr.
]

{ #category : #updating }
Nurse >> update: aPatient [
	self reactToPatient.
	aPatient bodyTemperature ifNotNil: [self reactToBodyTemperature: aPatient bodyTemperature].


]
