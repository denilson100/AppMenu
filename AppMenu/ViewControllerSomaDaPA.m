//
//  ViewControllerSomaDaPA.m
//  AppMenu
//
//  Created by Denilson Monteiro on 28/06/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "ViewControllerSomaDaPA.h"

@interface ViewControllerSomaDaPA ()

@end

@implementation ViewControllerSomaDaPA

int vInicial;
int vRazao;
int vMax;
int nValor;
int vSoma;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.lbResultado.text = @"0";
    
}

- (IBAction)somaDaPA:(UIButton *)sender {
    
    vInicial = self.valorInicial.text.integerValue;
    vRazao = self.razao.text.integerValue;
    vMax = self.valorMax.text.integerValue;
    
    while (nValor <= vMax) {
        nValor += vRazao;
        vSoma = vSoma + nValor;
    }
    
    self.lbResultado.text = [NSString stringWithFormat:@"%d", vSoma];
    
    self.valorInicial.text = @"";
    self.razao.text = @"";
    self.valorMax.text = @"";
}

@end
