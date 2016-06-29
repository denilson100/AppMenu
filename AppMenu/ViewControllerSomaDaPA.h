//
//  ViewControllerSomaDaPA.h
//  AppMenu
//
//  Created by Denilson Monteiro on 28/06/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerSomaDaPA : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *valorInicial;

@property (weak, nonatomic) IBOutlet UITextField *razao;

@property (weak, nonatomic) IBOutlet UITextField *valorMax;

@property (weak, nonatomic) IBOutlet UILabel *lbResultado;

- (IBAction)somaDaPA:(UIButton *)sender;


@end
