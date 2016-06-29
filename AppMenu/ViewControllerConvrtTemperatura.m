//
//  ViewControllerConvrtTemperatura.m
//  AppMenu
//
//  Created by Denilson Monteiro on 28/06/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "ViewControllerConvrtTemperatura.h"

@interface ViewControllerConvrtTemperatura ()

@end

@implementation ViewControllerConvrtTemperatura

int valorDeEntrada;
int celsius;
int kelvin;
int fahrenheit;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    celsius = 30;
    
    fahrenheit = (celsius * 1.8) + 32;
    kelvin = celsius + 273.15;
        
    self.lbUm.text = @"Kelvin";
    self.lbDois.text = @"Fahrenheit";
    
    self.lbResultUm.text = [NSString stringWithFormat:@"%d", kelvin];
    self.lbResultDois.text = [NSString stringWithFormat:@"%d", fahrenheit];
    
}


- (IBAction)indexChaged:(UISegmentedControl *)sender {
    
    switch (self.segmentedControl.selectedSegmentIndex)
    {
        case 0:
            NSLog(@"Entrou no primeiro");
            break;
        
        case 1:
            NSLog(@"Entrou no segundo");
            break;
            
        case 2:
            NSLog(@"Entrou no terceiro");
            break;
        
        default:
            break; 
    }
    
}
@end
