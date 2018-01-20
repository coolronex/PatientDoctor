//
//  main.m
//  Patient & Doctor
//
//  Created by Aaron Chong on 1/18/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray * prescriptionDatabase = [[NSMutableArray alloc] init];
        Doctor *doctor = [[Doctor alloc] initWithFirstName:@"Aaron" lastName:@"Chong" specialization:@"Clinic Doctor"];
        doctor.patientPrescriptions = prescriptionDatabase;
        
        Doctor *doctor2 = [[Doctor alloc] initWithFirstName:@"Erin" lastName:@"Luu" specialization:@"Clinic Doctor"];
        doctor2.patientPrescriptions = prescriptionDatabase;
        
        Patient *patientOne = [[Patient alloc] initWithFirstName:@"Bob" lastName:@"Will" age: 30 healthCard:@"Yes" symptoms:@[@"headache", @"cough"]];
        Patient *patientTwo = [[Patient alloc] initWithFirstName:@"Mike" lastName:@"C" age:25 healthCard:nil symptoms:nil];
        Patient *patientThree = [[Patient alloc] initWithFirstName:@"John" lastName:@"A" age: 30 healthCard:@"Yes" symptoms:@[@"headache", @"cough"]];
        Patient *patientFour = [[Patient alloc] initWithFirstName:@"Dave" lastName:@"B" age: 30 healthCard:@"Yes" symptoms:@[@"constipation", @"headache"]];
        Patient *patientFive = [[Patient alloc] initWithFirstName:@"Theo" lastName:@"I" age: 30 healthCard:nil symptoms:nil];
        
        NSLog(@"%@, %@, %@\n", doctor.firstName, doctor.lastName, doctor.specialization);
        
        NSArray *patients = @[patientOne, patientTwo, patientThree, patientFour, patientFive];
        
        for (Patient *patient in patients) {
            
            [patient visitDoctor:doctor];
            [patient requestMedicationFrom:doctor];
            
            [patient visitDoctor:doctor2];
            [patient requestMedicationFrom:doctor2];
        }
        
        
        
    }
    return 0;
}
