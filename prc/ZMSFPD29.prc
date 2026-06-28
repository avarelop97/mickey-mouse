//ZMSFPD29 PROC                                                         00010002
//**********************************************************************00020002
//* SISTEMA        :  SIVA.                                            *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMSFPD29                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  GENERA ARCHIVO DE RFC'S DE LA TABLA CUENTA       *00090002
//*                                                                    *00100002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  NINGUNA                                          *00140002
//*                                                                    *00150002
//* REALIZACION    :  GETRONICS MAYO 2016                              *00160002
//*                                                                    *00170002
//* OBSERVACION    :  NINGUNA                                          *00180002
//*                                                                    *00190002
//*
//*                                                                    *00190002
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMF29P30                                                 *00240002
//* UTIL/PGM: ZM3CR020                                                 *00240002
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *00240002
//*--------------------------------------------------------------------*
//ZMF29P30 EXEC PGM=ZM3CR020,PARM=&FECHA                                00780700
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZMF29P30),DISP=SHR
//S1DQ0001 DD DSN=MXC&AMB..ZM.TMP.ZM4RVA04.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**=======================================================*
//** PASO01 - COMPRUEBA SI EL FICHERO EXISTE
//**=======================================================*
//ZMF29P25 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD  DSN=MXC&AMB..ZM.TMP.ZM4RVA04.CTC,DISP=SHR
// IF ZMF29P25.RC EQ 00 THEN
//**********************************************************************
//* SORT PARA VERIFICAR SI UN ARCHIVO VIENE VACIO                      *
//**********************************************************************
//ZMF29P20 EXEC  PGM=ICETOOL,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//TOOLMSG  DD SYSOUT=*
//DFSMSG   DD SYSOUT=*
//SORTIN1  DD  DSN=MBVP.TP.FIX.RIC.MXFILTRO.F&FECHA,DISP=SHR
//SORTOUT1 DD  DSN=MXCP.ZM.TMP.RIC.CUENTAS.ESPANIA,
//             DISP=(NEW,CATLG,CATLG),
//             DCB=(RECFM=FB,LRECL=25,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(2,1),RLSE),UNIT=3390
//OUT      DD SYSOUT=*
//SRT1CNTL DD  DSN=ZIVA.ZME.CONTROL(ZMF29P22),DISP=SHR
//* OUTPUT
//TOOLIN   DD  DSN=ZIVA.ZME.CONTROL(ZMF29P21),DISP=SHR
// IF ZMF29P20.RC EQ 00 THEN
//********************************************************************
//* PASO    : ZMF29P15                                                 *
//* PROGRAMA: ICETOOL                                                 *
//* SORT PARA OBTENER PRIMERA OCURRENCIA EN ARCCHIVO CUENTAS
//********************************************************************
//ZMF29P15 EXEC  PGM=ICETOOL,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//TOOLMSG  DD SYSOUT=*
//DFSMSG   DD SYSOUT=*
//ENTRADA  DD DSN=MXCP.ZM.TMP.RIC.CUENTAS.ESPANIA,DISP=SHR
//SALIDA   DD DSN=MXCP.ZM.TMP.RIC.CUENTAS.FIRST,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=25,BLKSIZE=0,DSORG=PS)
//TOOLIN   DD DSN=ZIVA.ZME.CONTROL(ZMF29P15),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZMF29P10                                                 *
//* PROGRAMA: ICEMAN                                                  *
//* OBJETIVO: SORT PARA ORDENAR ARCHIVO.                               *
//**********************************************************************
//ZMF29P10 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.TMP.RIC.CUENTAS.FIRST,DISP=SHR               04083167
//*
//SORTOUT  DD  DSN=MXCP.ZM.TMP.RIC.CUENTAS.SORT,                        04083267
//             DISP=(NEW,CATLG,DELETE),                                 04083367
//             DCB=(RECFM=FB,LRECL=25,BLKSIZE=0,DSORG=PS),              04083467
//             SPACE=(CYL,(50,20),RLSE),UNIT=3390                       04083567
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMF29P10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO      : ZMF29P05.                                              *
//* UTILERIA  : ICEGENER.                                              *
//* OBJETIVO  : GENERA EL PRIMER GDG A PARTIR DE ARCHIVO DE ENTRADA    *
//*--------------------------------------------------------------------*
//**********************************************************************
//ZMF29P05 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.TMP.RIC.CUENTAS.SORT,DISP=SHR
//*
//SYSUT2   DD DSN=MXCP.ZM.GDGD.RIC.CUENTAS(+1),
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(BKUP.MODEL,LRECL=25,BLKSIZE=0,RECFM=FB,DSORG=PS)
//*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMMP9F00.                                             *
//* UTILERIA   : IEFBR14.                                              *
//* OBJETIVO   : DESCATALOGA ARCHIVOS DE PASO.                         *
//*--------------------------------------------------------------------*
//ZMF29P00 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
// ENDIF
// ENDIF
