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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    int inicial = 4;
    int razao = 3;
    int nValor = inicial;
    int valor_max = 20;
    int soma = 0;
    
    while (nValor <= valor_max) {
        nValor += razao;
        soma = soma + nValor;
        NSLog(@"Numero: %d", nValor);
    }
    NSLog(@"Soma: %d", soma);
    
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
