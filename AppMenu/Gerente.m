//
//  Gerente.m
//  AppMenu
//
//  Created by Denilson Monteiro on 29/06/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "Gerente.h"

@implementation Gerente

+ (double) calculaAumento : (Gerente *) gerente {
    return [gerente salario] * 1.10;
}

@end
