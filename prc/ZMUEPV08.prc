//ZMUEPV08 PROC EMP=BCM,SUC=,INT1=' ',INT2=' '                          00010000
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                   >>>>  INFORMACION S.A.T. <<<<                    *00050000
//*                                                                    *00060000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMUEPV08                                            *00090000
//*                                                                    *00100000
//*   OBJETIVO  :  GENERA ARCHIVO  SECUENCIAL CON LOS DIFERENTES       *00110000
//*                TIPOS DE I.S.R. RETENIDOS POR CUENTA MENSUAL        *00120000
//*                                                                    *00130000
//*   CORRE ANTES DE  : NINGUNO                                        *00140000
//*                                                                    *00150000
//*   CORRE DESPUES DE: NINGUNO                                        *00160000
//*                                                                    *00170000
//*   PERIODICIDAD    :  EVENTUAL                                      *00180000
//*                                                                    *00190000
//**********************************************************************00200000
//*                      LOG DE MODIFICACIONES                         *00210000
//**********************************************************************00220000
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *00230000
//**********************************************************************00240000
//PUE08P02 EXEC PGM=ZM3DG001,                                           00250000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00260000
//SYSTSPRT DD SYSOUT=*                                                  00270000
//SYSPRINT DD SYSOUT=*                                                  00280000
//SYSOUT   DD SYSOUT=*                                                  00290000
//SYSDBOUT DD SYSOUT=*                                                  00300000
//SYSABOUT DD DUMMY                                                     00310000
//SYSUDUMP DD DUMMY                                                     00320000
//*                                                                     00330000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.SAT.EBCM.ZMUEPV08,                        00340000
//            DISP=(NEW,CATLG,DELETE),                                  00350000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00360000
//            UNIT=3390,                                                00370000
//            SPACE=(CYL,(2,1),RLSE)                                    00380000
//*                                                                     00380100
//**********************************************************************00380200
//*                           -- ZM4MU023 --                           *00380300
//*  GENERA ARCHIVO  SECUENCIAL CON LOS DIFERENTES TIPOS DE I.S.R.     *00380400
//*  RETENIDOS POR CUENTA MENSUAL                                      *00380500
//**********************************************************************00380600
//PJI02P0Y EXEC PGM=IKJEFT01,COND=(4,LT)                                00380700
//*                                                                     00380800
//ZMU023A1 DD DSN=MXCP.ZM.FIX.ECBP.ISRXCTA.SAT,                         00380900
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00381000
//            DCB=(DSORG=PS,LRECL=292,RECFM=FB,BLKSIZE=0),              00381100
//            SPACE=(CYL,(100,50),RLSE)                                 00381200
//ZMU023A2 DD DSN=MXCP.ZM.FIX.EBCM.ISRXCTA.SAT,                         00381300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00381400
//            DCB=(DSORG=PS,LRECL=292,RECFM=FB,BLKSIZE=0),              00381500
//            SPACE=(CYL,(100,50),RLSE)                                 00381600
//SYSTSPRT DD SYSOUT=*                                                  00381700
//SYSPRINT DD SYSOUT=*                                                  00381800
//SYSOUT   DD SYSOUT=*                                                  00381900
//SYSDBOUT DD SYSOUT=*                                                  00382000
//SYSABOUT DD SYSOUT=*                                                  00382100
//SYSUDUMP DD DUMMY                                                     00382200
//*                                                                     00382300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUV08T01),DISP=SHR                   00382400
//*                                                                     02200100
//**********************************************************************02210000
//*        TERMINA PROCESO ZMUEPV08 SIVA MULTIEMPRESA                  *02220000
//**********************************************************************02230000
