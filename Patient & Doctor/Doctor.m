//
//  Doctor.m
//  Patient & Doctor
//
//  Created by Aaron Chong on 1/18/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"

@implementation Doctor

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastname specialization:(NSString *)specialization {
    
    self = [super init];
    if (self) {
        
        _firstName = firstName;
        _lastName = lastname;
        _specialization = specialization;
        
        _patientList = [[NSMutableSet alloc] init];
        
        //create an NSDictionary and store symptoms and keys in it for each patient
        _prescriptions = [[NSDictionary alloc] init];
        _prescriptions = @{@"headache" : @"advil",
                           @"cough" : @"cough syrup",
                           @"constipation" : @"medicine"
                           };
        
    }
    return self;
}

- (void)acceptPatient:(Patient *)patient {
    
    if (patient.healthCard != nil) {
        [self.patientList addObject:patient];
    }

}

- (void) prescibeMedicationFor: (Patient *) patient {
    
    //Doctor (self) needs to know if the patient is one of his or her patients
    if ([self.patientList containsObject:patient]) {
        
        //if patient is in the list, doctor will loop through array of patients' symptoms
        for (NSString *symptom in patient.symptoms) {
            Prescription *prescription = [[Prescription alloc] initWithDoctor:self andPatient:patient andSymptom:symptom andPrescription:[_prescriptions objectForKey:symptom]];
            [self.patientPrescriptions addObject:prescription];
            }
    
        }
        
    }
    

    
    
    
    
    



@end
