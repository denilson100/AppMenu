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


- (IBAction)addDia:(UIButton *)sender;


- (IBAction)addMes:(UIButton *)sender;


- (IBAction)addAno:(UIButton *)sender;


- (IBAction)removeDia:(UIButton *)sender;


- (IBAction)removeMes:(UIButton *)sender;


- (IBAction)removeAno:(UIButton *)sender;


@property (weak, nonatomic) IBOutlet UILabel *lbDia;

@property (weak, nonatomic) IBOutlet UILabel *lbMes;

@property (weak, nonatomic) IBOutlet UILabel *lbAno;


@end
