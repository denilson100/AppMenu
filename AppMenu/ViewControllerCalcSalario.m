//
//  ViewControllerCalcSalario.m
//  AppMenu
//
//  Created by Denilson Monteiro on 29/06/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "ViewControllerCalcSalario.h"

@interface ViewControllerCalcSalario ()

@end

@implementation ViewControllerCalcSalario

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Funcionario *funcionario = [Funcionario new];
    [funcionario setNome:@"Joao"];
    [funcionario setSalario:500.00];
    
    NSLog(@"Nome funcionario: %@", [funcionario nome]);
    NSLog(@"Salario funcionario: %.2f", [funcionario salario]);
    NSLog(@"Aumento funcionario: %.2f", [Funcionario calculaAumento:funcionario]);
}


@end
