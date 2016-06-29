//
//  Funcionario.h
//  AppMenu
//
//  Created by Denilson Monteiro on 29/06/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Funcionario : NSObject

@property (strong) NSString *nome;
@property (strong) NSString *sexo;
@property (assign) double salario;

- (double) calculaAumento;

+ (double) calculaAumento : (Funcionario *) funcionario;

@end
