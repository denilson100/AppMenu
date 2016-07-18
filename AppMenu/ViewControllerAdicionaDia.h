//
//  ViewControllerAdicionaDia.h
//  AppMenu
//
//  Created by Denilson Monteiro on 09/07/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "ViewController.h"

@interface ViewControllerAdicionaDia : ViewController


@property (weak, nonatomic) IBOutlet UITextField *textFieldDia;


@property (weak, nonatomic) IBOutlet UITextField *textFieldMes;



@property (weak, nonatomic) IBOutlet UITextField *textFieldAno;


@property (weak, nonatomic) IBOutlet UITextField *textFieldSeg;

@property (weak, nonatomic) IBOutlet UITextField *textFieldMin;


@property (weak, nonatomic) IBOutlet UITextField *textFildHora;


- (IBAction)addDia:(UIButton *)sender;


- (IBAction)addMes:(UIButton *)sender;


- (IBAction)addAno:(UIButton *)sender;





@property (weak, nonatomic) IBOutlet UILabel *lbDia;

@property (weak, nonatomic) IBOutlet UILabel *lbMes;

@property (weak, nonatomic) IBOutlet UILabel *lbAno;


@property (weak, nonatomic) IBOutlet UILabel *lbHora;

@property (weak, nonatomic) IBOutlet UILabel *lbMinuto;

@property (weak, nonatomic) IBOutlet UILabel *lbSegundo;

@end
