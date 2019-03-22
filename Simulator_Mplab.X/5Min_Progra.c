/*
 * File:   5Min_Progra.c
 * Author: Wels
 *
 * Created on 19 de marzo de 2019, 06:37 PM
 */


#include <xc.h>
#include "Configuracion.h"

void main(void) {
    ADCON1bits.PCFG = 0xf;
    TRISAbits.RA0 = 0;
    TRISDbits.RD0 = 0;
    TRISDbits.RD1 = 0;
    TRISDbits.RD7 = 0;
    TRISCbits.RC0 = 1;
    LATD = 0;
    while(1){
        LATDbits.LATD0 = 1;
        if(PORTCbits.RC0 == 1){
            LATDbits.LATD1 = 1;
            LATDbits.LATD7 = 1;
            //__delay_ms(50);
            LATDbits.LATD7 = 0;
        }
    }
}
