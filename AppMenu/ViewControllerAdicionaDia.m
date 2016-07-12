//
//  ViewControllerAdicionaDia.m
//  AppMenu
//
//  Created by Denilson Monteiro on 09/07/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "ViewControllerAdicionaDia.h"

@interface ViewControllerAdicionaDia ()

@end

@implementation ViewControllerAdicionaDia 
    
    int dia = 12;
    int mes = 7;
    int ano = 2016;

    int valorDia;
    int valorMes;
    int valorAno;

    int diaInterno = 0;  //variavel global para não zerar
    int mesInterno = 0;
    int anoInterno = 0;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    diaInterno = dia;   //Uma var para contar o loop e zerar.
    mesInterno = mes;
    
    self.lbDia.text = [NSString stringWithFormat:@"%d", dia];
    self.lbMes.text = [NSString stringWithFormat:@"%d", mes];
    self.lbAno.text = [NSString stringWithFormat:@"%d", ano];
    
}



- (IBAction)addDia:(UIButton *)sender {
    
    valorDia = self.textFieldDia.text.integerValue;
    
    int somaDosDias = (dia + valorDia) - 1;    //Pega atual e valor digitado
    
    //Pega o num de dias na tela e soma com o dia digitado.
    //Entra no if e a cada 30 dias incrementa o mes.
    //Entra no proximo if e a cada 12 meses incrementa ano.
    while (dia <= somaDosDias) {
        
        if (dia % 30 == 0) {
            diaInterno = 0;
            mes++;
            mesInterno++;
            
            if (mes % 13 == 0) {
                mesInterno = 1;
                ano++;
            }
        }
        diaInterno++;
        dia++;
    }
    self.lbMes.text = [NSString stringWithFormat:@"%d", mesInterno];
    self.lbDia.text = [NSString stringWithFormat:@"%d", diaInterno];
    self.lbAno.text = [NSString stringWithFormat:@"%d", ano];
    self.textFieldDia.text = @"";
    self.textFieldMes.text = @"";
    self.textFieldAno.text = @"";
}

- (IBAction)addMes:(UIButton *)sender {
    
    valorDia = self.textFieldMes.text.integerValue;
    valorDia = valorDia * 30;                       //Multiplica por 30 para formar 1 mes
    
    int somaDosDias = (dia + valorDia) - 1;         //Pega atual e valor digitado
    
    while (dia <= somaDosDias) {
        
        if (dia % 30 == 0) {
            diaInterno = 0;
            mes++;
            mesInterno++;
            
            if (mes % 12 == 0) {
                mesInterno = 1;
                ano++;
            }
        }
        diaInterno++;
        dia++;
    }
    self.lbMes.text = [NSString stringWithFormat:@"%d", mesInterno];
    self.lbDia.text = [NSString stringWithFormat:@"%d", diaInterno];
    self.lbAno.text = [NSString stringWithFormat:@"%d", ano];
    self.textFieldDia.text = @"";
    self.textFieldMes.text = @"";
    self.textFieldAno.text = @"";

}

- (IBAction)addAno:(UIButton *)sender {
    
    
    ano = ano + self.textFieldAno.text.integerValue;
    
    self.lbMes.text = [NSString stringWithFormat:@"%d", mesInterno];
    self.lbDia.text = [NSString stringWithFormat:@"%d", diaInterno];
    self.lbAno.text = [NSString stringWithFormat:@"%d", ano];
    self.textFieldDia.text = @"";
    self.textFieldMes.text = @"";
    self.textFieldAno.text = @"";
}

- (IBAction)removeDia:(UIButton *)sender {
    
    valorDia = self.textFieldDia.text.integerValue;
    
    int somaDosDias = (dia + valorDia) - 1;    //Pega atual e valor digitado
    
    //Pega o num de dias na tela e soma com o dia digitado.
    //Entra no if e a cada 30 dias incrementa o mes.
    //Entra no proximo if e a cada 12 meses incrementa ano.
    while (dia >= somaDosDias) {
        
        if (dia < 1) {
            diaInterno = 31;
            mes--;
            mesInterno--;
            
            if (mes < 1) {
                mesInterno = 13;
                ano--;
            }
        }
        diaInterno--;
        dia--;
    }
    self.lbMes.text = [NSString stringWithFormat:@"%d", mesInterno];
    self.lbDia.text = [NSString stringWithFormat:@"%d", diaInterno];
    self.lbAno.text = [NSString stringWithFormat:@"%d", ano];
    self.textFieldDia.text = @"";
    self.textFieldMes.text = @"";
    self.textFieldAno.text = @"";
}

- (IBAction)removeMes:(UIButton *)sender {
}

- (IBAction)removeAno:(UIButton *)sender {
}
@end
