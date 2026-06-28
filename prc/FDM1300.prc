//FDM1300 PROC
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PFDFDM13                                         *
//*                   FIN DE DIA DEL SIVA.                             *
//*                                                                    *
//* OBJETIVO       :  GENERA ARCHIVO DE CONTRATOS DADOS DE BAJA PARA   *
//*                   CANCELACION EN ALTAMIRA.                         *
//*                                                                    *
//* CORRE ANTES DE :  PFDFDD13                                         *
//*                                                                    *
//* REALIZO        :  OSCAR URBANO FERNANDEZ (ASATECK).                *
//* FECHA          :  MAYO/2000                                        *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*
//*  BORRA ARCHIVO ARCAICO DE UN MES ANTERIOR
//*--------------------------------------------------------------------*
//FDM1302  EXEC PGM=IDCAMS,REGION=4M
//SYSIN    DD DSN=SIVA.CARDS(FDM1302),DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//********************************************************************* 00040000
//* GENERA INFORMACION DE CONTRATOS SOC. INV. QUE SERAN DADOS DE BAJA   00050000
//********************************************************************* 00060000
//FDM1301 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,          00070000
//        TIME=100                                                      00090000
//*                                                                     00130000
//VIBK87A1 DD  DSN=SIVA.CTO.FIX.BAJAS,DISP=(NEW,CATLG,DELETE),
//             UNIT=SYSDA,SPACE=(CYL,(1,1),RLSE),
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*                                                                     00181000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=2420                                 00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=SIVA.CARDS(FDM1301),DISP=SHR                          00300000
//*                                                                     00310000
