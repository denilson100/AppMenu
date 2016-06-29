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


double bonusPorComissao = 1000; //Valor da venda para calc comissao

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Funcionario *funcionario = [Funcionario new];
    
    [funcionario setSalario : self.salarioBase.text.integerValue];
    self.lbSalarioBase.text = self.salarioBase.text;
    
    self.lbSalarioComAumento.text = [NSString stringWithFormat:@"%.1f", [Funcionario calculaAumento:funcionario]];
    
    self.lbTextComissao.text = @"";
    self.lbComissao.text = @"";
}

- (IBAction)calcularAumento:(UIButton *)sender {
    self.salarioBase.text = @"";
}

- (IBAction)indexChaged:(UISegmentedControl *)sender {
    
    Funcionario *funcionario = [Funcionario new];
    Gerente *gerente = [Gerente new];
    Vendedor *vendedor = [Vendedor new];
    
//    [funcionario setNome:@"Joao"];
//    [funcionario setSalario:500.00];
    
    switch (self.segmentedControl.selectedSegmentIndex) {
        case 0:
            //Vendedor
            [funcionario setSalario : self.salarioBase.text.integerValue];
            self.lbSalarioBase.text = self.salarioBase.text;
            
            self.lbSalarioComAumento.text = [NSString stringWithFormat:@"%.1f", [Funcionario calculaAumento:funcionario]];
            
            self.lbTextComissao.text = @"";
            self.lbComissao.text = @"";

            break;
            
        case 1:
            //Gerente
            [gerente setSalario : self.salarioBase.text.integerValue];
            self.lbSalarioBase.text = self.salarioBase.text;
            
            self.lbSalarioComAumento.text = [NSString stringWithFormat:@"%.1f", [Gerente calculaAumento:gerente]];
            
            self.lbTextComissao.text = @"";
            self.lbComissao.text = @"";
            
            break;
            
        case 2:
            //Vendedor
            [vendedor setSalario : self.salarioBase.text.integerValue];
            self.lbSalarioBase.text = self.salarioBase.text;
            
            self.lbSalarioComAumento.text = [NSString stringWithFormat:@"%.1f", [Vendedor calculaAumento:vendedor]];
            
            self.lbTextComissao.text = @"Comissão de vendas:";
            self.lbComissao.text = [NSString stringWithFormat:@"%.1f", bonusPorComissao * 0.10];
            
            break;
            
        default:
            break;
    }
    
}

@end
