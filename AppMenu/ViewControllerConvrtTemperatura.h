//
//  ViewControllerConvrtTemperatura.h
//  AppMenu
//
//  Created by Denilson Monteiro on 28/06/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerConvrtTemperatura : UIViewController 

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

- (IBAction)indexChaged:(UISegmentedControl *)sender;


@property (weak, nonatomic) IBOutlet UITextField *valorDeEntrada;

@property (weak, nonatomic) IBOutlet UILabel *lbUm;


@property (weak, nonatomic) IBOutlet UILabel *lbDois;


@property (weak, nonatomic) IBOutlet UILabel *lbResultUm;

@property (weak, nonatomic) IBOutlet UILabel *lbResultDois;


@end
