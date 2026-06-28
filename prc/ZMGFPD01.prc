//ZMGFPD01 PROC                                                         00010004
//*                                                                     00020004
//**********************************************************************00030004
//*                     C A S A   D E  B O L S A                       *00040004
//*                     ========================                       *00050004
//*                    <<SOCIEDADES DE INVERSION>>                     *00060004
//*                                                                    *00070004
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00080004
//*                                                                    *00090004
//*   OBJETIVO  :  GRABA EVENTO 'FDD' DE     DE TERMINACION DE         *00100004
//*                PROCESO DE FIN DE DIA                               *00110004
//*                                                                    *00120004
//*   CORRE ANTES DE  :  IMAGE COPY'S POSTERIORES A FIN DE DIA         *00130004
//*                                                                    *00140004
//*   CORRE DESPUES DE: CBJFCD28,PFDFDD33,PFDFDD27,                    *00150004
//*                     CBJFND26,CBLFND23,CBHFND21                     *00160004
//*                                                                    *00170004
//*   PERIODICIDAD    :  DIARIO                                        *00180004
//*                                                                    *00190004
//*                                                                    *00200004
//**********************************************************************00210004
//*                      LOG DE MODIFICACIONES                         *00220004
//**********************************************************************00230004
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00240004
//*--------------------------------------------------------------------*00250004
//*      |          |       |        |                                 *00260004
//**********************************************************************00270004
//*                                                                    *00280004
//**********************************************************************00290004
//*                       -- ZM4DGI00 --                               *00300004
//*                                                                    *00310004
//* OBJETIVO :   ACTUALIZACION DEL REGISTRO DE FINALIZACION DEL        *00320004
//*              PROCESO FIN DE DIA                                    *00330004
//* ACTUALIZA :  CTLPROC                                               *00340004
//*                                                                    *00350004
//* PASO REINICIABLE POR RESTART                                       *00360004
//**********************************************************************00370004
//PGF01P01 EXEC PGM=IKJEFT01                                            00380004
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00390004
//SYSPRINT DD  SYSOUT=*                                                 00400004
//SYSOUT   DD  SYSOUT=*                                                 00410004
//SYSDBOUT DD  SYSOUT=*                                                 00420004
//SYSABOUT DD  DUMMY                                                    00430004
//SYSUDUMP DD  DUMMY                                                    00440004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGFP1T01),DISP=SHR                   00450004
//********************************************************************* 00460004
//*   OBJETIVO: GENERAR COPIA DEL ARCHIVO ADABPSAT DEL DIA ANTERIOR     00470004
//********************************************************************* 00480004
//PGF01P00 EXEC PGM=ICEGENER,COND=(4,LT)                                00490004
//SYSPRINT DD SYSOUT=*                                                  00500004
//SYSUT1   DD DSN=MXCP.ZM.FIX.ZM4CRX15.ADABPSAT,DISP=SHR                00510004
//SYSUT2   DD DSN=MXCP.ZM.FIX.ZM4CRX15.ADABPSA1,                        00520004
//            DISP=(NEW,CATLG,DELETE),                                  00530004
//            SPACE=(CYL,(80,40),RLSE),                                 00540004
//            DCB=(DSORG=PS,LRECL=696,RECFM=FB,BLKSIZE=0),              00550004
//            UNIT=3390                                                 00560004
//SYSIN    DD DUMMY                                                     00570004
//*                                                                     00580004
