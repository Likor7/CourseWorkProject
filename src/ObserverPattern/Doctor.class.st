"
The Doctor class is a subclass of HealthCareWorker that represents a doctor in a healthcare setting. It inherits the profession and functionality from the HealthCareWorker class and may have additional methods or behaviors specific to the role of a doctor.

Doctors play a critical role in diagnosing and treating patients, providing medical expertise, and overseeing patient care. They are responsible for conducting examinations, ordering tests, making diagnoses, prescribing treatments, and guiding patient management throughout the healthcare process.

As a subclass of HealthCareWorker, the Doctor class inherits the profession instance variable, which represents the specific role or profession of the healthcare worker. In this case, the value of the profession instance variable for instances of the Doctor class would typically be set to ""doctor"" to indicate the specific role.

The Doctor class does not define any additional instance or class variables beyond what is inherited from its superclass. Its primary focus is to represent the specialized role of a doctor within the broader healthcare worker framework.

The Doctor class resides in the ObserverPattern package, which encompasses various components and patterns related to the Observer Pattern and its application in healthcare scenarios.

Overall, the Doctor class represents a doctor in a healthcare setting, inheriting the functionality and profession information from the HealthCareWorker superclass. It can have additional methods and behaviors specific to the role of a doctor, making it suitable for modeling doctors within a larger healthcare worker system.
"
Class {
	#name : #Doctor,
	#superclass : #HealthCareWorker,
	#category : #ObserverPattern
}

{ #category : #initialization }
Doctor >> initialize [
    super initialize.
    self profession: 'Doctor'.
]

{ #category : #reaction }
Doctor >> reactToBloodPressure: aBloodPressure [
    Transcript 
        show: 'Blood pressure is: '; 
        show: aBloodPressure; 
		  show: '. And I will fix it.';
        cr.
]

{ #category : #reaction }
Doctor >> reactToPulse: aPulse [
    Transcript
		show: 'Observes patient`s pulse is: '; 
      show: aPulse; 
      cr.
]

{ #category : #updating }
Doctor >> update: aPatient [
	self reactToPatient.
	aPatient pulse ifNotNil: [self reactToPulse: aPatient pulse].
   aPatient bloodPressure ifNotNil: [self reactToBloodPressure: aPatient bloodPressure].

]
