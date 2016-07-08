//
//  ViewControllerCalculadora.h
//  AppMenu
//
//  Created by Denilson Monteiro on 29/06/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "ViewController.h"

@interface ViewControllerCalculadora : ViewController {
    
    NSInteger primeiroNumero;
    NSString * operador;
}

- (IBAction)btNamber:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UILabel *lbResultado;


- (IBAction)btOperador:(UIButton *)sender;


- (IBAction)btTotal:(UIButton *)sender;


- (IBAction)btClear:(UIButton *)sender;

@end
