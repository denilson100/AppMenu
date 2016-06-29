//
//  ViewControllerCalcSalario.h
//  AppMenu
//
//  Created by Denilson Monteiro on 29/06/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "ViewController.h"
#import "Funcionario.h"
#import "Gerente.h"
#import "Vendedor.h"

@interface ViewControllerCalcSalario : ViewController

@property (weak, nonatomic) IBOutlet UITextField *salarioBase;

- (IBAction)calcularAumento:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

- (IBAction)indexChaged:(UISegmentedControl *)sender;

@property (weak, nonatomic) IBOutlet UILabel *lbSalarioBase;

@property (weak, nonatomic) IBOutlet UILabel *lbSalarioComAumento;

@property (weak, nonatomic) IBOutlet UILabel *lbComissao;
@property (weak, nonatomic) IBOutlet UILabel *lbTextComissao;

@end
