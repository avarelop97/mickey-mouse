//FDD3000 PROC
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  PFDFDD30                                         *
//*                   FIN DE DIA DEL SIVA.                             *
//*                                                                    *
//* OBJETIVO       :  GENERACION DE REPORTE(VIBJ52D).                  *
//*                                                                    *
//*                                                                    *
//* DESPUES DE     :  PFDFDD08                                         *
//*                                                                    *
//*                                                                    *
//* OBSERVACION    :  EL PROCESO FINDIA SE DIVIDIO EN    SUBPROCESOS   *
//*                   A MANERA DE OPTIMIZAR EL TIEMPO TOTAL DE EJECU - *
//*                   CION LOS CUALES SERAN SUBMITIDOS POR DISPARADOR  *
//*                   Y NO POR CONSOLA                                 *
//*                                                                    *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//*                                                                     00003000
//**********************************************************************00003000
//*                       * IDCAMS  *                                  *
//* OBJETIVO: DELETE DE LOS ARCHIVOS TEMPORALES (VOBB26A1)             *
//**********************************************************************00003000
//FDD3003  EXEC PGM=IDCAMS,REGION=4M,COND=(4,LT)                        00070000
//SYSIN    DD DSN=SIVA.CARDS(FDD3003),DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//********************************************************************* 00100000
//*                         PROGRAMA VOBB26D                            00100000
//* OBJETIVO: CREA ARCHIVO CON INFORMACION   EMISORAS CAPITALES         00100000
//*           ACTUALIZA LA TABLA SECOMIS CON EMISORAS CAPITALES         00100000
//********************************************************************* 00100000
//FDD3002 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,          00070000
//        PARM='/DEBUG',TIME=100                                        00090000
//*                                                                     00130000
//VOBB26A1 DD DSN=SIVA.OTR.WKF.VOBB26A1,                                00140027
//           DISP=(NEW,CATLG,DELETE),                                   00151028
//           DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),                00160026
//           UNIT=SYSDA,                                                00170028
//           SPACE=(CYL,(10,5),RLSE)                                    00180028
//*                                                                     00181000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=X                                                  00240000
//SYSOUT   DD SYSOUT=X                                                  00250000
//SYSDBOUT DD SYSOUT=X                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3002),DISP=SHR                          00300000
//*                                                                     00310000
