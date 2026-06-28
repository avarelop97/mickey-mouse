//**********************************************************************00780600
//ZMHFPD68 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  MUV MODULO UNICO DE VALORES                      *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMHFPD68                                         *00060002
//*                                                                    *00070002
//*                                                                    *00080002
//* OBJETIVO       :  RESPALDO DE ARCHIVO DE ACUMULADO DE              *00090002
//*                   COMISIONES Y BORRADO DEL MISMO                   *00100002
//*                                                                    *00100002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX       *00140002
//*                                                                    *00150002
//* REALIZACION    :  INDRA MAYO 2021                                  *00160002
//*                                                                    *00170002
//* OBSERVACION    :  ESTE JOB CORRE SOLO DE MANERA MENSUAL            *00180002
//*                                                                    *00180002
//**********************************************************************00240002
//*                                                                    *00240002
//*--------------------------------------------------------------------*
//* PASO         : PHF68P95                                            *
//* PROGRAMA     : ICEGENER                                            *
//* DESCRIPCION  : SE REALIZA RESPALDO AL ARCHIVO CON INFORMACION DE   *
//*                ACUMULADO DE COMISIONES QUE SE ENVIAN A LA CONTA    *
//*--------------------------------------------------------------------*
//PHF68P95 EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACUCOMIS,DISP=SHR
//*
//SYSUT2   DD DSN=MXCP.ZM.GDGD.INTFAZ.ACECMVS(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,LRECL=400,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,100),RLSE)
//*
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//**********************************************************************00779900
//*                                                                    *00780000
//* OBJETIVO : LIMPIAR EL ARCHIVO DE ACUMULADO DE COMISIONES           *00780200
//*            MXCP.ZM.FIX.ECO.INTFAZ.ACUCOMIS                         *
//*                                                                    *00780300
//**********************************************************************00780600
//PHF68P90 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF68T90),DISP=SHR
//*
