//
//  Prescription.h
//  Patient & Doctor
//
//  Created by Aaron Chong on 1/20/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient; @class Doctor;

@interface Prescription : NSObject

@property (nonatomic, strong) Patient *patient;
@property (nonatomic, strong) Doctor *doctor;
@property (nonatomic, strong) NSString *symptom;
@property (nonatomic, strong) NSString *prescription;

- (instancetype)initWithDoctor:(Doctor *)doctor andPatient:(Patient *)patient andSymptom:(NSString *)symptom andPrescription:(NSString *)prescription;

@end
