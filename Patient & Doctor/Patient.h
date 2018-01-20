//
//  Patient.h
//  Patient & Doctor
//
//  Created by Aaron Chong on 1/18/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;


@interface Patient : NSObject

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic) int age;
@property (nonatomic, strong) NSString *healthCard;
@property (nonatomic, strong) NSArray *symptoms;

- (instancetype) initWithFirstName:(NSString *)firstName
                          lastName:(NSString *)lastName
                               age:(int)age
                        healthCard:(NSString *)healthCard
                          symptoms:(NSArray *)symptoms;

- (void) visitDoctor:(Doctor *)doctor;
- (void) requestMedicationFrom: (Doctor *) doctor;

@end
