//
//  Patient.m
//  Patient & Doctor
//
//  Created by Aaron Chong on 1/18/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype) initWithFirstName:(NSString *)firstName
                          lastName:(NSString *)lastName
                               age:(int)age
                        healthCard:(NSString *)healthCard
                          symptoms:(NSArray *)symptoms
{
    
    self = [super init];
    if (self) {
        
        _firstName = firstName;
        _lastName = lastName;
        _age = age;
        _healthCard = healthCard;
        _symptoms = symptoms;
        
    }
    return self;
}

- (void) visitDoctor:(Doctor *)doctor {
    
    [doctor acceptPatient:self];
}

- (void) requestMedicationFrom: (Doctor *) doctor {
    
    [doctor prescibeMedicationFor:self];
    
}

@end
