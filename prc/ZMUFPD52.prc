//ZMUFPD52 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  BANCA PATRIMONIAL SUITABILITY                    *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD52                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  REALIZA CAMBIO DE EMPACADOS A DECIMAL PARA LA    *00090002
//*                   TABLA ZMDT809                                    *00100002
//*                                                                    *00100002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  NINGUNA                                          *00140002
//*                                                                    *00150002
//* REALIZACION    :  GESFOR MEXICO (GCC-MVD) 26/FEB/2010              *00160002
//*                                                                    *00170002
//* OBSERVACION    :  NINGUNA                                          *00180002
//*                                                                    *00190002
//*********************************************************************
//* PROGRAMA: ZM3DUA15
//* OBJETIVO: REALIZA EL LAY OUT PARA LA CARGA DE TABLA ZMDT809
//*
//*********************************************************************
//ZMUF52PA EXEC PGM=IKJEFT1A
//E1NTRADA DD DSN=MXCP.ZM.FIX.ZM4DUA12.CARGA809,
//            DISP=SHR
//S1SALIDA DD DSN=MXCP.ZM.FIX.ZM3DUA15.DECIMAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=212,BLKSIZE=0,DSORG=PS,BUFNO=30)
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF03T26),DISP=SHR
//**********************************************************************
