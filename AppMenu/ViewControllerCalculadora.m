//
//  ViewControllerCalculadora.m
//  AppMenu
//
//  Created by Denilson Monteiro on 29/06/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "ViewControllerCalculadora.h"

@interface ViewControllerCalculadora ()

@end

@implementation ViewControllerCalculadora

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)btNamber:(UIButton *)sender {
    
    NSLog(@"Botao %@", sender.titleLabel.text);
    
    if (self.lbResultado.text.intValue == 0){
        
        self.lbResultado.text = sender.titleLabel.text;
        
    } else {
        
        NSString * num = sender.titleLabel.text;
        NSString * newNumber = [NSString stringWithFormat:@"%@%@", self.lbResultado.text, num];
        
        self.lbResultado.text = newNumber;
    }
}


- (IBAction)btOperador:(UIButton *)sender {
    
    operador = sender.titleLabel.text;
    primeiroNumero = self.lbResultado.text.integerValue;
    self.lbResultado.text = @"0";
}

- (IBAction)btTotal:(UIButton *)sender {
    
    if ([operador isEqual:@"+"]){
        primeiroNumero = primeiroNumero + self.lbResultado.text.integerValue;
        
    } else if ([operador isEqual:@"-"]) {
        primeiroNumero = primeiroNumero - self.lbResultado.text.integerValue;
        
    } else if ([operador isEqual:@"%"]) {
        primeiroNumero = primeiroNumero / self.lbResultado.text.integerValue;
        
    } else if ([operador isEqual:@"x"]) {
        primeiroNumero = primeiroNumero * self.lbResultado.text.integerValue;
        
    }
    
    
    self.lbResultado.text = [NSString stringWithFormat:@"%ld", (long)primeiroNumero];
}

- (IBAction)btClear:(UIButton *)sender {
    
    operador = @"";
    primeiroNumero = 0;
    self.lbResultado.text = @"0";
}


@end
