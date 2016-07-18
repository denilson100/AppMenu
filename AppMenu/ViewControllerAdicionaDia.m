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

    int seg = 30;
    int min = 30;
    int hora = 2;

    int valorDia;
    int valorMes;
    int valorAno;

    int valorSeg;
    int valorMin;
    int valorHora;

    int diaInterno = 0;  //variavel global para não zerar
    int mesInterno = 0;
    int anoInterno = 0;

    int segInterno = 0;  //variavel global para não zerar
    int minInterno = 0;
    int horaInterno = 0;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    diaInterno = dia;   //Uma var para contar o loop e zerar.
    mesInterno = mes;
    
    segInterno = seg;
    minInterno = min;
    
    self.lbSegundo.text = [NSString stringWithFormat:@"%d", segInterno];
    self.lbMinuto.text = [NSString stringWithFormat:@"%d", minInterno];
    self.lbHora.text = [NSString stringWithFormat:@"%d", hora];
    self.textFieldSeg.text = @"";
    self.textFieldMin.text = @"";
    self.textFildHora.text = @"";
    
    self.lbMes.text = [NSString stringWithFormat:@"%d", mesInterno];
    self.lbDia.text = [NSString stringWithFormat:@"%d", diaInterno];
    self.lbAno.text = [NSString stringWithFormat:@"%d", ano];
    self.textFieldDia.text = @"";
    self.textFieldMes.text = @"";
    self.textFieldAno.text = @"";
    
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

- (IBAction)addSegundos:(UIButton *)sender {
    
    valorSeg = self.textFieldSeg.text.integerValue;
    
    int somaDosSeg = (seg + valorSeg) - 1;    //Pega atual e valor digitado

    while (seg <= somaDosSeg) {
        
        if (seg % 60 == 0) {
            segInterno = 0;
            min++;
            minInterno++;
            
            if (min % 60 == 0) {
                minInterno = 1;
                hora++;
                
                if (hora % 24 == 0) {
                    hora = 0;
                    diaInterno++;
                }
            }
        }
        segInterno++;
        seg++;
    }
    self.lbSegundo.text = [NSString stringWithFormat:@"%d", segInterno];
    self.lbMinuto.text = [NSString stringWithFormat:@"%d", minInterno];
    self.lbHora.text = [NSString stringWithFormat:@"%d", hora];
    self.textFieldSeg.text = @"";
    self.textFieldMin.text = @"";
    self.textFildHora.text = @"";
    
    self.lbMes.text = [NSString stringWithFormat:@"%d", mesInterno];
    self.lbDia.text = [NSString stringWithFormat:@"%d", diaInterno];
    self.lbAno.text = [NSString stringWithFormat:@"%d", ano];
    self.textFieldDia.text = @"";
    self.textFieldMes.text = @"";
    self.textFieldAno.text = @"";
    
}

- (IBAction)addMinutos:(UIButton *)sender {
    
    valorMin = self.textFieldMin.text.integerValue;
    
    int somaDosMin = (min + valorMin) - 1;    //Pega atual e valor digitado
    
    while (min <= somaDosMin) {
            
            if (min % 60 == 0) {
                minInterno = 0;
                hora++;
                
                if (hora % 24 == 0) {
                    hora = 0;
                    diaInterno++;
                }
            }
        
        minInterno++;
        min++;
    }
    self.lbSegundo.text = [NSString stringWithFormat:@"%d", segInterno];
    self.lbMinuto.text = [NSString stringWithFormat:@"%d", minInterno];
    self.lbHora.text = [NSString stringWithFormat:@"%d", hora];
    self.textFieldSeg.text = @"";
    self.textFieldMin.text = @"";
    self.textFildHora.text = @"";
    
    self.lbMes.text = [NSString stringWithFormat:@"%d", mesInterno];
    self.lbDia.text = [NSString stringWithFormat:@"%d", diaInterno];
    self.lbAno.text = [NSString stringWithFormat:@"%d", ano];
    self.textFieldDia.text = @"";
    self.textFieldMes.text = @"";
    self.textFieldAno.text = @"";
}

- (IBAction)addHoras:(UIButton *)sender {
    
    valorMin = self.textFildHora.text.integerValue;
    valorMin = valorMin * 60;
    
    int somaDosMin = (min + valorMin) - 1;    //Pega atual e valor digitado
    
    while (min <= somaDosMin) {
        
        if (min % 60 == 0) {
            minInterno = 0;
            hora++;
            
            if (hora % 24 == 0) {
                hora = 0;
                diaInterno++;
                
                if (diaInterno % 30 == 0) {
                    mesInterno++;
                }
            }
            
        }
        
        minInterno++;
        min++;
    }
    self.lbSegundo.text = [NSString stringWithFormat:@"%d", segInterno];
    self.lbMinuto.text = [NSString stringWithFormat:@"%d", minInterno];
    self.lbHora.text = [NSString stringWithFormat:@"%d", hora];
    self.textFieldSeg.text = @"";
    self.textFieldMin.text = @"";
    self.textFildHora.text = @"";
    
    self.lbMes.text = [NSString stringWithFormat:@"%d", mesInterno];
    self.lbDia.text = [NSString stringWithFormat:@"%d", diaInterno];
    self.lbAno.text = [NSString stringWithFormat:@"%d", ano];
    self.textFieldDia.text = @"";
    self.textFieldMes.text = @"";
    self.textFieldAno.text = @"";
}


@end
