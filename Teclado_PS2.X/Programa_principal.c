/*
 * File:   TECLAS.c
 * Author: HP
 *
 * Created on 16 de diciembre de 2019, 09:50 PM
 */

// CONFIG1L
#pragma config PLLDIV = 1       // PLL Prescaler Selection bits (No prescale (4 MHz oscillator input drives PLL directly))
#pragma config CPUDIV = OSC1_PLL2// System Clock Postscaler Selection bits ([Primary Oscillator Src: /1][96 MHz PLL Src: /2])
#pragma config USBDIV = 1       // USB Clock Selection bit (used in Full-Speed USB mode only; UCFG:FSEN = 1) (USB clock source comes directly from the primary oscillator block with no postscale)

// CONFIG1H
#pragma config FOSC = HS   // Oscillator Selection bits (XT oscillator (XT))
#pragma config FCMEN = OFF      // Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor disabled)
#pragma config IESO = OFF       // Internal/External Oscillator Switchover bit (Oscillator Switchover mode disabled)

// CONFIG2L
#pragma config PWRT = OFF       // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOR = OFF        // Brown-out Reset Enable bits (Brown-out Reset disabled in hardware and software)
#pragma config BORV = 3         // Brown-out Reset Voltage bits (Minimum setting 2.05V)
#pragma config VREGEN = OFF     // USB Voltage Regulator Enable bit (USB voltage regulator disabled)

// CONFIG2H
#pragma config WDT = OFF        // Watchdog Timer Enable bit (WDT disabled (control is placed on the SWDTEN bit))
#pragma config WDTPS = 32768    // Watchdog Timer Postscale Select bits (1:32768)

// CONFIG3H
#pragma config CCP2MX = OFF     // CCP2 MUX bit (CCP2 input/output is multiplexed with RB3)
#pragma config PBADEN = OFF     // PORTB A/D Enable bit (PORTB<4:0> pins are configured as digital I/O on Reset)
#pragma config LPT1OSC = OFF    // Low-Power Timer 1 Oscillator Enable bit (Timer1 configured for higher power operation)
#pragma config MCLRE = ON       // MCLR Pin Enable bit (MCLR pin enabled; RE3 input pin disabled)

// CONFIG4L
#pragma config STVREN = OFF     // Stack Full/Underflow Reset Enable bit (Stack full/underflow will not cause Reset)
#pragma config LVP = OFF        // Single-Supply ICSP Enable bit (Single-Supply ICSP disabled)
#pragma config ICPRT = OFF      // Dedicated In-Circuit Debug/Programming Port (ICPORT) Enable bit (ICPORT disabled)
#pragma config XINST = OFF      // Extended Instruction Set Enable bit (Instruction set extension and Indexed Addressing mode disabled (Legacy mode))

// CONFIG5L
#pragma config CP0 = OFF        // Code Protection bit (Block 0 (000800-001FFFh) is not code-protected)
#pragma config CP1 = OFF        // Code Protection bit (Block 1 (002000-003FFFh) is not code-protected)
#pragma config CP2 = OFF        // Code Protection bit (Block 2 (004000-005FFFh) is not code-protected)
#pragma config CP3 = OFF        // Code Protection bit (Block 3 (006000-007FFFh) is not code-protected)

// CONFIG5H
#pragma config CPB = OFF        // Boot Block Code Protection bit (Boot block (000000-0007FFh) is not code-protected)
#pragma config CPD = OFF        // Data EEPROM Code Protection bit (Data EEPROM is not code-protected)

// CONFIG6L
#pragma config WRT0 = OFF       // Write Protection bit (Block 0 (000800-001FFFh) is not write-protected)
#pragma config WRT1 = OFF       // Write Protection bit (Block 1 (002000-003FFFh) is not write-protected)
#pragma config WRT2 = OFF       // Write Protection bit (Block 2 (004000-005FFFh) is not write-protected)
#pragma config WRT3 = OFF       // Write Protection bit (Block 3 (006000-007FFFh) is not write-protected)

// CONFIG6H
#pragma config WRTC = OFF       // Configuration Register Write Protection bit (Configuration registers (300000-3000FFh) are not write-protected)
#pragma config WRTB = OFF       // Boot Block Write Protection bit (Boot block (000000-0007FFh) is not write-protected)
#pragma config WRTD = OFF       // Data EEPROM Write Protection bit (Data EEPROM is not write-protected)

// CONFIG7L
#pragma config EBTR0 = OFF      // Table Read Protection bit (Block 0 (000800-001FFFh) is not protected from table reads executed in other blocks)
#pragma config EBTR1 = OFF      // Table Read Protection bit (Block 1 (002000-003FFFh) is not protected from table reads executed in other blocks)
#pragma config EBTR2 = OFF      // Table Read Protection bit (Block 2 (004000-005FFFh) is not protected from table reads executed in other blocks)
#pragma config EBTR3 = OFF      // Table Read Protection bit (Block 3 (006000-007FFFh) is not protected from table reads executed in other blocks)

// CONFIG7H
#pragma config EBTRB = OFF      // Boot Block Table Read Protection bit (Boot block (000000-0007FFh) is not protected from table reads executed in other blocks)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>
#define ENABLE PORTCbits.RC0
#define RS PORTCbits.RC1 
#define PUERTO LATD
#define _XTAL_FREQ 20000000
#define  ESPACIO ' '
#define ENTER 0X5A

void confi_puertos() {
    TRISD = 0x00;
    TRISC = 0xF0;
    TRISB = 0xFF;
}

int pos = 0;

typedef union {
    unsigned char _byte_complero_teclado;

    struct {
        char bit0 : 1;
        char bit1 : 1;
        char bit2 : 1;
        char bit3 : 1;
        char bit4 : 1;
        char bit5 : 1;
        char bit6 : 1;
        char bit7 : 1;

    } _bits_teclado;
} _DATO_TECLADO;

_DATO_TECLADO dato;

char tecla_presionada = 0;

//CONTROL DEL LCD 2X16

void modo_configuracion() {
    ENABLE = 0;
    RS = 0;
    __delay_ms(5);
}

void modo_escritura() {
    ENABLE = 0;
    RS = 1;
    __delay_ms(5);
}

void tiempo_enable() {
    ENABLE = 1;
    __delay_ms(1);
    ENABLE = 0;
    __delay_ms(1);
}

void LCD_init() {
    int cuenta_data;
    int matriz_data[4] = {0x01, 0x38, 0x06, 0X0E};
    modo_configuracion();
    for (cuenta_data = 0; cuenta_data < 4; cuenta_data++) {
        PUERTO = matriz_data[cuenta_data];
        tiempo_enable();
    }
}

char comparador(char comp) {
    switch (comp) {
        case 0X1C:
            return 'A';
            break;
        case 0X32:
            return 'B';
            break;
        case 0X21:
            return 'C';
            break;
        case 0X23:
            return 'D';
            break;
        case 0X24:
            return 'E';
            break;
        case 0X2B:
            return 'F';
            break;
        case 0X34:
            return 'G';
            break;
        case 0X33:
            return 'H';
            break;
        case 0X43:
            return 'I';
            break;
        case 0X3B:
            return 'J';
            break;
        case 0X42:
            return 'K';
            break;
        case 0X4B:
            return 'L';
            break;
        case 0X3A:
            return 'M';
            break;
        case 0X31:
            return 'N';
            break;
        case 0X44:
            return 'O';
            break;
        case 0X4D:
            return 'P';
            break;
        case 0X15:
            return 'Q';
            break;
        case 0X2D:
            return 'R';
            break;
        case 0X1B:
            return 'S';
            break;
        case 0X2C:
            return 'T';
            break;
        case 0X3C:
            return 'U';
            break;
        case 0X2A:
            return 'V';
            break;
        case 0X1D:
            return 'W';
            break;
        case 0X22:
            return 'X';
            break;
        case 0X35:
            return 'Y';
            break;
        case 0X1A:
            return 'Z';
            break;
        case 0X29:
            return ' ';
            break;
        case 0X16:
            return '1';
            break;
        case 0X1E:
            return '2';
            break;
        case 0X26:
            return '3';
            break;
        case 0X25:
            return '4';
            break;
        case 0X2E:
            return '5';
            break;
        case 0X36:
            return '6';
            break;
        case 0X3D:
            return '7';
            break;
        case 0X3E:
            return '8';
            break;
        case 0X46:
            return '9';
            break;
        case 0X45:
            return '0';
            break;
        case 0X41:
            return ',';
            break;
        case 0x49:
            return '.';
            break;
        case 0X4E:
            return '?';
            break;
        case 0X70:
            return '0';
            break;
        case 0X69:
            return '1';
            break;
        case 0X72:
            return '2';
            break;
        case 0X7A:
            return '3';
            break;
        case 0X6B:
            return '4';
            break;
        case 0X73:
            return '5';
            break;
        case 0X74:
            return '6';
            break;
        case 0X6C:
            return '7';
            break;
        case 0X75:
            return '8';
            break;
        case 0X7D:
            return '9';
            break;
        default:
            return ' ';
            break;
    }
}
char linea = 0x80;

void main(void) {
    confi_puertos();
    RCONbits.IPEN = 0;
    INTCON2bits.INTEDG0 = 0; //Las interrupciones se activan por flanco de bajada 
    INTCON2bits.RBPU = 0; //La interrupcion será procedente del puerto B
    INTCONbits.INT0IE = 1; // Habilitamos las interrupciones 
    INTCONbits.GIE = 1; //Activamos las interrupciones globales 
    LCD_init();
    int pista = 0;
    while (1) {
        if (tecla_presionada != 0x00 && tecla_presionada == 0x76) {
            modo_configuracion();
            PUERTO = 0x80;
            tiempo_enable();
            modo_escritura();
            for (int borrado_total = 0; borrado_total < 16; borrado_total++) {
                PUERTO = ' ';
                tiempo_enable();
            }
            modo_configuracion();
            PUERTO = 0xC0;
            tiempo_enable();
            modo_escritura();
            for (int borrado_total = 0; borrado_total < 16; borrado_total++) {
                PUERTO = ' ';
                tiempo_enable();
            }
            
            modo_configuracion();
            PUERTO = 0x80;
            tiempo_enable();
            pos = 0;
            linea = 0x80;
        } else {
        if (tecla_presionada != 0 && tecla_presionada != 0x66) {

            if (tecla_presionada == ENTER && pista == 0) {
                linea = 0xC0;
                pista = 1;
            } else {
                if (tecla_presionada == ENTER && pista == 1) {
                    linea = 0x80;
                    pista = 0;
                }
            }
            modo_configuracion();
            PUERTO = linea + pos;
            tiempo_enable();
            modo_escritura();
            if (tecla_presionada != ENTER && tecla_presionada != 0x66) {
                PUERTO = comparador(tecla_presionada);
                tiempo_enable();
                pos++;
                __delay_ms(150);
            } else {
                __delay_ms(10);
            }
            tecla_presionada = 0;
            if (pos == 16) {
                pos = 0;
            } else {
                pos = pos;
            }
        } else {
            if (tecla_presionada != 0 && tecla_presionada == 0x66) {
                modo_configuracion();
                PUERTO = linea + pos - 1;
                tiempo_enable();
                modo_escritura();
                PUERTO = ESPACIO;
                tiempo_enable();
                linea = linea;
                pos = pos - 1;
                tecla_presionada = 0;
            }
        }
    }
    }
    return;
}

void __interrupt() RUT_INT0(void) {
    static char contador_interrupciones = 0;

    if (contador_interrupciones == 1) dato._bits_teclado.bit0 = PORTBbits.RB1;
    else if (contador_interrupciones == 2) dato._bits_teclado.bit1 = PORTBbits.RB1;
    else if (contador_interrupciones == 3) dato._bits_teclado.bit2 = PORTBbits.RB1;
    else if (contador_interrupciones == 4) dato._bits_teclado.bit3 = PORTBbits.RB1;
    else if (contador_interrupciones == 5) dato._bits_teclado.bit4 = PORTBbits.RB1;
    else if (contador_interrupciones == 6) dato._bits_teclado.bit5 = PORTBbits.RB1;
    else if (contador_interrupciones == 7) dato._bits_teclado.bit6 = PORTBbits.RB1;
    else if (contador_interrupciones == 8) dato._bits_teclado.bit7 = PORTBbits.RB1;

    contador_interrupciones++;

    if (contador_interrupciones == 11) {
        contador_interrupciones = 0;
        tecla_presionada = dato._byte_complero_teclado;
    }
    INTCONbits.INT0IF = 0;
}