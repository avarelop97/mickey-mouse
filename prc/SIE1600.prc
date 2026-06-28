//SIE1600   PROC                                                        00010003
//**********************************************************************00020000
//*                                                                    *00030000
//* SISTEMA        :  SOCIEDADES DE INVERSION                          *00031000
//*                                                                    *00032000
//* PROCESO        :  SIE1600                                          *00033003
//*                                                                    *00035000
//* OBJETIVO       :  CARGAR LOS DATOS GENERALES DE CLIENTES EN LA     *00036002
//*                   TABLA CUENTA QUE TIENEN LOS DATOS INCOMPLETOS.   *00038002
//*                                                                    *00038102
//* REALIZO        :  JOSSMJC ANDERSEN CONSULTING                      *00039002
//*                                                                    *00039101
//* FECHA          :  MAYO DE 1999                                     *00039202
//*                                                                    *00039300
//**********************************************************************00039400
//* PASO SIE16P01: REALIZA LA CARGA DE DATOS BASICOS DEL CLIENTE A LA   00039503
//*                TABLA CUENTA, SOLO DE CUENTAS CON DATOS INCOMPLETOS. 00039602
//**********************************************************************00039702
//SIE16P01 EXEC PGM=IKJEFT01,DYNAMNBR=20,                               00070003
//         COND=(4,LT),                                                 00090003
//         REGION=4M,                                                   00130003
//         PARM='/DEBUG',                                               00230003
//         TIME=100                                                     00240003
//E1DCBUPD  DD DSN=SIVA.OTR.WKF.CUENTAS.CASBOL,DISP=SHR                 00250003
//SYSTSPRT  DD SYSOUT=X,DCB=BLKSIZE=0                                   00270002
//SYSPRINT  DD SYSOUT=X                                                 00280002
//SYSOUT    DD SYSOUT=X                                                 00290002
//SYSDBOUT  DD SYSOUT=X                                                 00300002
//SYSABOUT  DD DUMMY                                                    00300102
//SYSUDUMP  DD DUMMY                                                    00300202
//SYSTSIN   DD DSN=SIVA.CARDS(SIE16001),DISP=SHR                        00300403
//*                                                                     00303004
