//
//  Doctor.h
//  Patient & Doctor
//
//  Created by Aaron Chong on 1/18/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;


@interface Doctor : NSObject

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong) NSString *specialization;
@property (nonatomic, strong) NSMutableSet *patientList;
@property (nonatomic, strong) NSDictionary *prescriptions;
@property (nonatomic, strong) NSMutableArray *patientPrescriptions;

- (instancetype)initWithFirstName:(NSString *)firstName
                         lastName:(NSString *)lastname
                   specialization:(NSString *)specialization;

- (void) acceptPatient: (Patient *) patient;
- (void) prescibeMedicationFor: (Patient *) patient;

@end
