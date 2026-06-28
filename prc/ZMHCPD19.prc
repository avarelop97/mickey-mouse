//**********************************************************************00010000
//ZMHCPD19  PROC                                                        00020000
//**********************************************************************00030000
//*                                                                    *00040000
//*                   C A S A   D E  B O L S A                         *00050000
//*                   ========================                         *00060000
//*                   <<  M E R C A D O   D E   C A P I T A L E S  >>  *00070000
//*                                                                    *00080000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00090000
//*                                                                    *00100000
//* PROCESO        :  ZMHCPD19.                                        *00110000
//*                                                                    *00120000
//* OBJETIVO:      :  GENERA ARCHIVOS DE MOVIMIENTOS DE INTERSIVA,     *00130000
//*                   PARA LOS FORMATOS 'E','J','K' Y 'O.              *00140000
//*                                                                    *00150000
//* CORRE                                                              *00160000
//* ANTES DE       :  NINGUNO.                                         *00170000
//*                                                                    *00180000
//* DESPUES DE     :  DESPUES DEL FIN DE TRANSMISIÓN DE BMV.           *00190000
//*                   (15:50 HRS.).                                    *00200000
//*                                                                    *00210000
//* REALIZO        :  ERNESTO MANUEL CUAUTLE MARTINEZ                  *00220000
//*                                                                    *00230000
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA.   *00240000
//*                                                                    *00250000
//**********************************************************************00260000
//*                      LOG DE MODIFICACIONES                         *00270000
//**********************************************************************00280000
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00290000
//*--------------------------------------------------------------------*00300000
//*@BIVA |22/06/2018|XMY1894|PHC19P01|SE MODIFICA LA LONGITUD DEL      *00310000
//*                                   ARCHIVO DE SALIDA Y SE AGREGA UN *00320000
//*                                   NUEVO PASO PARA ORDENAR          *00330000
//**********************************************************************00340000
//*                                                                    *00350000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00360000
//*  PHC19P02     GRABA EN UN ARCHIVO SECUENCIAL.                      *00370000
//*                                                         ZM3DH001   *00380000
//**********************************************************************00390000
//*                     ===   INICIO DE     ===                        *00400000
//*                     ===   CAPITALES     ===                        *00410000
//**********************************************************************00420000
//PHC19P02 EXEC PGM=ZM3DG001,                                           00430000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00440000
//PF601765  DD DUMMY                                                    00450000
//*                                                                     00460000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD19,               00470000
//            DISP=(NEW,CATLG,DELETE),                                  00480000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00490000
//            UNIT=3390,SPACE=(CYL,(04,02),RLSE)                        00500000
//*                                                                     00510000
//SYSTSPRT DD SYSOUT=*                                                  00520000
//SYSPRINT DD SYSOUT=*                                                  00530000
//SYSOUT   DD SYSOUT=*                                                  00540000
//SYSDBOUT DD SYSOUT=*                                                  00550000
//SYSABOUT DD DUMMY                                                     00560000
//SYSUDUMP DD DUMMY                                                     00570000
//*                                                                     00580000
//**********************************************************************00590000
//*                       -- ZM4DHW06 --                               *00600000
//* OBJETIVO : GENERAR ARCHIVOS SECUENCIALES DE LOS FORMATOS           *00610000
//*            DENOMINADOS "E", "J", "K" Y "O", QUE CONTIENEN LA       *00620000
//*            INFORMACION DE LA BMV.                                  *00630000
//**********************************************************************00640000
//PHC19P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00650000
//PF601765  DD DUMMY                                                    00660000
//*                                                                     00670000
//ZMHW06A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD19,DISP=SHR       00680000
//*                                                                     00690000
//ZMHW06A2 DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..FORMATO.E,                 00700000
//        DISP=(NEW,CATLG,DELETE),                                      00710000
//        DCB=(LRECL=251,BLKSIZE=0,RECFM=FB,DSORG=PS),                  00720000
//        UNIT=3390,                                                    00730000
//        SPACE=(CYL,(4,2),RLSE)                                        00740000
//*                                                                     00750000
//ZMHW06A3 DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..FORMATO.J,                 00760000
//        DISP=(NEW,CATLG,DELETE),                                      00770000
//        DCB=(LRECL=251,BLKSIZE=0,RECFM=FB,DSORG=PS),                  00780000
//        UNIT=3390,                                                    00790000
//        SPACE=(CYL,(4,2),RLSE)                                        00800000
//*                                                                     00810000
//*@BIVA-I                                                              00820000
//*ZMHW06A4 DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..FORMATO.K,                00830000
//ZMHW06A4 DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..FORMATO.K1,                00840000
//        DISP=(NEW,CATLG,DELETE),                                      00850000
//*       DCB=(LRECL=251,BLKSIZE=0,RECFM=FB,DSORG=PS),                  00860000
//        DCB=(LRECL=258,BLKSIZE=0,RECFM=FB,DSORG=PS),                  00870000
//*@BIVA-F                                                              00880000
//        UNIT=3390,                                                    00890000
//        SPACE=(CYL,(4,2),RLSE)                                        00900000
//*                                                                     00910000
//ZMHW06A5 DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..FORMATO.O,                 00920000
//        DISP=(NEW,CATLG,DELETE),                                      00930000
//        DCB=(LRECL=251,BLKSIZE=0,RECFM=FB,DSORG=PS),                  00940000
//        UNIT=3390,                                                    00950000
//        SPACE=(CYL,(4,2),RLSE)                                        00960000
//*                                                                     00970000
//SYSTSPRT DD SYSOUT=*                                                  00980000
//SYSPRINT DD SYSOUT=*                                                  00990000
//SYSOUT   DD SYSOUT=*                                                  01000000
//SYSDBOUT DD SYSOUT=*                                                  01010000
//SYSABOUT DD DUMMY                                                     01020000
//SYSUDUMP DD DUMMY                                                     01030000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC19T01),DISP=SHR                   01040000
//*                                                                     01050000
//*@BIVA-I                                                              01060000
//*-------------------------------------------------------------------* 01070000
//* PASO       : PHC19P00                                              *01080000
//* UTILERIA   : ICEMAN                                                *01090000
//* OBJETIVO   : ORDENA ARCHIVO DEL FORMATO K                          *01100000
//*--------------------------------------------------------------------*01110000
//PHC19P00 EXEC PGM=ICEMAN,COND=(4,LT)                                  01120000
//*                                                                     01130000
//SORTIN   DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..FORMATO.K1,                01140000
//            DISP=SHR                                                  01150000
//SORTOUT  DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..FORMATO.K,                 01160000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        01170000
//            SPACE=(CYL,(4,2),RLSE),                                   01180000
//            DCB=(LRECL=251,RECFM=FB,BLKSIZE=0,DSORG=PS)               01190000
//SYSOUT   DD SYSOUT=*                                                  01200000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC19T00),DISP=SHR                   01210000
//*@BIVA-F                                                              01220000
//*                                                                     01230000
