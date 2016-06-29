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

float valorDeEntrada;
float celsius;
float kelvin;
float fahrenheit;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    celsius = self.valorDigitado.text.integerValue;
    fahrenheit = (celsius * 1.8) + 32;
    kelvin = celsius + 273.15;
        
    self.lbUm.text = @"Kelvin";
    self.lbDois.text = @"Fahrenheit";
    
    self.lbResultUm.text = [NSString stringWithFormat:@"%.1f", kelvin];
    self.lbResultDois.text = [NSString stringWithFormat:@"%.1f", fahrenheit];
    
}


- (IBAction)indexChaged:(UISegmentedControl *)sender {
    
    switch (self.segmentedControl.selectedSegmentIndex) {
        case 0:
            celsius = self.valorDigitado.text.integerValue;
            fahrenheit = (celsius * 1.8) + 32;
            kelvin = celsius + 273.15;
            
            self.lbUm.text = @"Kelvin";
            self.lbDois.text = @"Fahrenheit";
            
            self.lbResultUm.text = [NSString stringWithFormat:@"%.1f", kelvin];
            self.lbResultDois.text = [NSString stringWithFormat:@"%.1f", fahrenheit];
            break;
        
        case 1:
            kelvin = self.valorDigitado.text.integerValue;
            celsius = kelvin - 273.15;
            fahrenheit = (kelvin * 1.8) - 459.67;
            
            self.lbUm.text = @"Celsius";
            self.lbDois.text = @"Fahrenheit";
            
            self.lbResultUm.text = [NSString stringWithFormat:@"%.1f", celsius];
            self.lbResultDois.text = [NSString stringWithFormat:@"%.1f", fahrenheit];
            break;
            
        case 2:
            fahrenheit = self.valorDigitado.text.integerValue;
            celsius = (fahrenheit - 32) / 1.8;
            kelvin = (fahrenheit + 459.67) / 1.8;
            
            self.lbUm.text = @"Celsius";
            self.lbDois.text = @"Kelvin";
            
            self.lbResultUm.text = [NSString stringWithFormat:@"%.1f", celsius];
            self.lbResultDois.text = [NSString stringWithFormat:@"%.1f", kelvin];
            break;
        
        default:
            break; 
    }
    
}
@end
