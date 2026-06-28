//FDM2800 PROC
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PFDFDM28                                         *
//*                                                                    *
//* OBJETIVO       :  GENERA ARCHIVO DE COMISIONES COBRADAS A CLIENTES *
//*                   EXTRANJEROS RESIDENTES EN EL EXTRANJERO.         *
//*                                                                    *
//* CORRE DESP. DE :                                                   *
//*                                                                    *
//* REALIZO        :  ALFONSO DAMIAN ESPINOSA (ASATECK).               *
//* FECHA          :  JUNIO/2001                                       *
//********************************************************************* 00040000
//* GENERA INFORMACION DE COMISIONES COBRADAS A CLIENTES EXTRANJEROS    00050000
//********************************************************************* 00060000
//FDM2801 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,          00070000
//        TIME=100                                                      00090000
//*                                                                     00130000
//VOB870A1 DD  DSN=SIVA.CTR.FIX.COMEXT.F&FECHA,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=SYSDA,SPACE=(CYL,(1,1),RLSE),
//             DCB=(RECFM=FB,LRECL=107,BLKSIZE=1070,DSORG=PS)
//*                                                                     00181000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=2420                                 00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=SIVA.CARDS(FDM2801),DISP=SHR                          00300000
//*                                                                     00310000
