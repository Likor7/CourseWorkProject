"
The HealthcareApp class is a subclass of Object that represents a healthcare application. It encapsulates instances of the Patient, Doctor, Nurse, and Anesthetist classes, allowing for the management and coordination of healthcare-related activities within the application.

Instance Variables:

    patient: Represents an instance of the Patient class, representing a patient within the healthcare system.
    doctor: Represents an instance of the Doctor class, representing a doctor within the healthcare system.
    nurse: Represents an instance of the Nurse class, representing a nurse within the healthcare system.
    anesthetist: Represents an instance of the Anesthetist class, representing an anesthetist within the healthcare system.

The HealthcareApp class serves as the central component of the healthcare application, facilitating the interaction and collaboration between patients and healthcare professionals. It enables the coordination of healthcare services, monitoring of patient vital signs, and effective communication among the various roles within the healthcare system.

By encapsulating instances of the Patient, Doctor, Nurse, and Anesthetist classes, the HealthcareApp class provides a centralized platform for managing patient data, healthcare worker information, and the overall healthcare workflow within the application.

The HealthcareApp class does not define any class variables. Its primary focus is on encapsulating and managing instances of the various healthcare-related classes.

The HealthcareApp class resides in the ObserverPattern package, which encompasses various components and patterns related to the Observer Pattern and its application in healthcare scenarios.

Overall, the HealthcareApp class represents a healthcare application that integrates and coordinates the activities of patients, doctors, nurses, and anesthetists. It serves as a platform for managing patient information, facilitating communication between healthcare professionals, and promoting effective healthcare delivery within the application.
"
Class {
	#name : #HealthcareApp,
	#superclass : #Object,
	#instVars : [
		'patient',
		'doctor',
		'nurse',
		'anesthetist'
	],
	#category : #ObserverPattern
}

{ #category : #changer }
HealthcareApp >> changePatientBloodPressure: aNumber [
    patient bloodPressure: aNumber.

]

{ #category : #changer }
HealthcareApp >> changePatientBodyTemperature: aNumber [
    patient bodyTemperature: aNumber.
]

{ #category : #changer }
HealthcareApp >> changePatientPulse: aNumber [
    patient pulse: aNumber.

]

{ #category : #initialization }
HealthcareApp >> initialize [
    super initialize.
    patient := Patient new.
    doctor := Doctor new.
    nurse := Nurse new.
    anesthetist := Anesthetist new.
    patient addObserver: doctor.
    patient addObserver: nurse.
    patient addObserver: anesthetist.
]
