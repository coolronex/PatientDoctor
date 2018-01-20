//
//  Prescription.m
//  Patient & Doctor
//
//  Created by Aaron Chong on 1/20/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription

- (instancetype)initWithDoctor:(Doctor *)doctor andPatient:(Patient *)patient andSymptom:(NSString *)symptom andPrescription:(NSString *)prescription {
    
    self = [super init];
    if (self) {
        _doctor = doctor;
        _patient = patient;
        _symptom = symptom;
        _prescription = prescription;
    }
    return self;
}
@end
