"
The Anesthetist class is a subclass of HealthCareWorker that represents an anesthetist in a healthcare setting. It inherits the profession and functionality from the HealthCareWorker class and may have additional methods or behaviors specific to the role of an anesthetist.

The Anesthetist class specializes in providing anesthesia and monitoring patients during surgical procedures. They play a critical role in ensuring patient safety and comfort during surgery by administering anesthesia, monitoring vital signs, and managing pain levels throughout the procedure.

As a subclass of HealthCareWorker, the Anesthetist class inherits the profession instance variable, which represents the specific role or profession of the healthcare worker. In this case, the value of the profession instance variable for instances of the Anesthetist class would typically be set to ""anesthetist"" to indicate the specific role.

The Anesthetist class does not define any additional instance or class variables beyond what is inherited from its superclass. Its primary focus is to represent the specialized role of an anesthetist within the broader healthcare worker framework.

The Anesthetist class resides in the ObserverPattern package, which encompasses various components and patterns related to the Observer Pattern and its application in healthcare scenarios.

Overall, the Anesthetist class represents an anesthetist in a healthcare setting, inheriting the functionality and profession information from the HealthCareWorker superclass. It can have additional methods and behaviors specific to the role of an anesthetist, making it suitable for modeling anesthetists within a larger healthcare worker system.
"
Class {
	#name : #Anesthetist,
	#superclass : #HealthCareWorker,
	#category : #ObserverPattern
}

{ #category : #initialization }
Anesthetist >> initialize [
    super initialize.
    self profession: 'Anesthetist'.
]

{ #category : #reaction }
Anesthetist >> reactToBodyTemperature: aBodyTemperature [
    Transcript 
        show: 'Body temperature is: '; 
        show: aBodyTemperature; 
		  show: '. And I will fix it.';
        cr.
]

{ #category : #reaction }
Anesthetist >> reactToPulse: aPulse [
   Transcript 
      show: 'Observes patient`s pulse is: '; 
      show: aPulse; 
		show: '. And I will fix it.';
      cr.
]

{ #category : #updating }
Anesthetist >> update: aPatient [
	self reactToPatient.
   aPatient pulse ifNotNil: [self reactToPulse: aPatient pulse].
   aPatient bodyTemperature ifNotNil: [self reactToBodyTemperature: aPatient bodyTemperature].

]
