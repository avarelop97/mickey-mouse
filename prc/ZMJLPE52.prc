//ZMJLPE52 PROC                                                         00010030
//*                                                                     00020000
//**********************************************************************00120015
//*                     C A S A   D E  B O L S A                       *00130015
//*                     ========================                       *00140015
//*                                                                    *00150015
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00160015
//*                                                                    *00170015
//*   OBJETIVO  :  CARGA LOS REGISTROS DEL ARCHIVO DIARIO DE           *00180015
//*                PRECIOS DE SIEFORES DENTRO DE LA TABLA ZMDT900      *00190015
//*                                                                    *00200015
//*   ESTE PROC CORRESPONDE A LA OPCION 2 DE LA TRANSACCION Z110.      *00201017
//*                                                                    *00202017
//**********************************************************************00210015
//********************************************************************* 00280000
//*                                                                   * 00290000
//*  PASO:  3    RECIBE LOS PARAMETROS ENVIADOS DE LINEA.             * 00300000
//*                                                                   * 00340000
//********************************************************************* 00350000
//PJL52P03 EXEC PGM=ZM3DG001,                                           00360030
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00370000
//*                                                                     00380000
//ZMG001A1 DD DUMMY                                                     00410031
//*ZMG001A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJLPE52,                  00411031
//*            DISP=(NEW,CATLG,DELETE),                                 00420031
//*            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),             00430031
//*            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                         00440031
//SYSTSPRT DD SYSOUT=*,                                                 00450000
//            DCB=BLKSIZE=0                                             00460000
//SYSPRINT DD SYSOUT=*                                                  00470000
//SYSOUT   DD SYSOUT=*                                                  00480000
//SYSDBOUT DD SYSOUT=*                                                  00490000
//SYSABOUT DD DUMMY                                                     00500000
//SYSUDUMP DD DUMMY                                                     00510000
//*                                                                     00520000
//********************************************************************* 00530000
//*                                                                   * 00540000
//*  PASO:  2    COPIA ARCHIVO DE PRECIOS.                            * 00550000
//*                                                                   * 00580000
//********************************************************************* 00590000
//PJL52P02 EXEC PGM=ICEGENER,COND=(4,LT)                                00600030
//*                                                                     00610000
//SYSPRINT DD SYSOUT=*                                                  00620000
//SYSIN    DD DUMMY                                                     00630000
//*                                                                     00640000
//SYSUT1   DD DSN=MXCP.ZM.TMP.ECBP.SZPR.PRECIOS.SIEFORES,DISP=SHR       00650028
//SYSUT2   DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PREC.SIEF,                  00660028
//            DISP=(NEW,CATLG,DELETE),                                  00670000
//            DCB=(LRECL=300,RECFM=FB,BLKSIZE=0,DSORG=PS),              00680000
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00690000
//********************************************************************* 00690100
//*                                                                   * 00690200
//*  PASO:  1    EJECUTA PROGRAMA QUE FILTRA REGISTROS.               * 00690300
//*                                                                   * 00690400
//*  PROGRAMA: ZM4DJ908                                               * 00690500
//********************************************************************* 00690600
//PJL52P0A EXEC PGM=IKJEFT01,COND=(4,LT)                                00690700
//PI601765 DD DUMMY                                                     00690800
//E1DQ9000 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PREC.SIEF,DISP=SHR          00690900
//S1DQ9000 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PREC.SIEFIL,                00691000
//            DISP=(NEW,CATLG,DELETE),                                  00691100
//            DCB=(LRECL=300,RECFM=FB,BLKSIZE=0,DSORG=PS),              00691200
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00691300
//SYSTSPRT DD SYSOUT=*,                                                 00691400
//            DCB=BLKSIZE=0                                             00691500
//SYSPRINT DD SYSOUT=*                                                  00691600
//SYSOUT   DD SYSOUT=*                                                  00691700
//SYSDBOUT DD SYSOUT=*                                                  00691800
//SYSABOUT DD DUMMY                                                     00691900
//SYSUDUMP DD DUMMY                                                     00692000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL52T0A),DISP=SHR                   00692100
//*                                                                     00692200
//********************************************************************* 00880000
//*                                                                   * 00890000
//*  PASO:  1    EJECUTA PROGRAMA QUE CARGA PRECIOS.                  * 00900000
//*                                                                   * 00910000
//*  PROGRAMA: ZM4DJ900                                               * 00920016
//********************************************************************* 00940000
//PJL52P00 EXEC PGM=IKJEFT01,COND=(4,LT)                                00950030
//PI601765 DD DUMMY                                                     00960025
//E1DQ9000 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PREC.SIEFIL,DISP=SHR        00980028
//SYSTSPRT DD SYSOUT=*,                                                 01020025
//            DCB=BLKSIZE=0                                             01030025
//SYSPRINT DD SYSOUT=*                                                  01040025
//SYSOUT   DD SYSOUT=*                                                  01050025
//SYSDBOUT DD SYSOUT=*                                                  01060025
//SYSABOUT DD DUMMY                                                     01070025
//SYSUDUMP DD DUMMY                                                     01080025
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL52T00),DISP=SHR                   01090030
//*                                                                     01100000
