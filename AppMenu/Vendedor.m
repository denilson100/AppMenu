//
//  Vendedor.m
//  AppMenu
//
//  Created by Denilson Monteiro on 29/06/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "Vendedor.h"

@implementation Vendedor

+ (double) calculaAumento : (Vendedor *) vendedor {
    return [vendedor salario] * 1.15;
}

@end
