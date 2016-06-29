//
//  Funcionario.m
//  AppMenu
//
//  Created by Denilson Monteiro on 29/06/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "Funcionario.h"

@implementation Funcionario

+ (double) calculaAumento : (Funcionario *) funcionario {
    return [funcionario salario] * 1.07;
}

@end
