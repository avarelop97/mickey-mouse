//ZMHCPD25  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / CASA DE BOLSA                                   *
//* PROCESO     : ZMHCPD25                                             *
//*____________________________________________________________________*
//*                                                                    *
//* AUTOR       : FSW-DGCM                                             *
//* FECHA       : 10 DE OCTUBRE DEL 2013                               *
//*____________________________________________________________________*
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//*   PROCESO DE CALCULO DE COSTO PROMEDIO PARA LA EJECUCION ESPERA    *
//*    TERMINE LA CONDICION DE FIN DE CIERRE DE CAPITALES Y VALORES    *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*====================================================================*
//* PASO     : PHC25P45                                                *
//* PROGRAMA : IDCAMS                                                  *
//* OBJETIVO : BORRA ARCHIVO LOG                                       *
//*====================================================================*
//PHC25P45 EXEC PGM=IDCAMS
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC25T13),DISP=SHR
//*====================================================================*
//* PASO     : PHC25P40                                                *
//* PROGRAMA : IKJEFT01/ZM4COP01                                       *
//* OBJETIVO : CARGA DE PRECIOS                                        *
//*====================================================================*
//PHC25P40 EXEC PGM=IKJEFT01,COND=(4,LT)                                01151027
//*                                                                     01153001
//ZMUD10S1 DD DSN=MXC&AMB..ZM.FIX.ERROR.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//            DCB=(LRECL=76,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*                                                                     01155001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC25T10),DISP=SHR                   01230041
//*                                                                     01155001
//**====================================================================*
//** PASO    : PHC25P35                                                *
//** PROGRAMA : IKJEFT01/ZM4COP15                                      *
//** OBJETIVO : CALCULO DE COSTO PROMEDIO (REPROCESO) ACTUALIZA CARTERA *
//**====================================================================*
//*PHC25P35 EXEC PGM=IKJEFT01,COND=(4,LT)                               01151027
//**                                                                    01153001
//*ZMUD15S1 DD DSN=MXC&AMB..ZM.FIX.Z15.LOGERR.F&FECHA,
//*            DISP=(NEW,CATLG,DELETE),
//*            UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS)
//*ZMUD15S2 DD DSN=MXC&AMB..ZM.FIX.Z15.CCONTROL.F&FECHA,                01155001
//*            DISP=(NEW,CATLG,DELETE),
//*            UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*ZMUD15S3 DD DSN=MXC&AMB..ZM.FIX.Z15.CARTERA.F&FECHA,
//*            DISP=(NEW,CATLG,DELETE),                                 01155001
//*            UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS)
//**                                                                    01155001
//*SYSTSPRT DD SYSOUT=*                                                 01170038
//*SYSPRINT DD SYSOUT=*                                                 01180038
//*SYSOUT  DD SYSOUT=*                                                  01190038
//*SYSDBOUT DD SYSOUT=*                                                 01200038
//*SYSABOUT DD DUMMY                                                    01210000
//*SYSUDUMP DD DUMMY                                                    01220000
//**                                                                    01155001
//*SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZHC25T15),DISP=SHR                   01230041
//*                                                                     01155001
//*====================================================================*
//*====================================================================*
//* PASO     : PHC25P33                                                *
//* PROGRAMA : IKJEFT01/ZM4COP39                                       *
//* OBJETIVO : CALCULO DE COSTO PROMEDIO (REPROCESO), APARTIR ZMDT107  *
//*====================================================================*
//*PHC25P33 EXEC PGM=IKJEFT01,COND=(4,LT)                               01151027
//**                                                                    01153001
//*ZMUD39S1 DD DSN=MXC&AMB..ZM.FIX.Z39.LOGERR.F&FECHA,
//*            DISP=(NEW,CATLG,DELETE),
//*            UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS)
//**                                                                    01155001
//*ZMUD39S2 DD DSN=MXC&AMB..ZM.FIX.Z39.CCONTROL.F&FECHA,
//*            DISP=(NEW,CATLG,DELETE),
//*            UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//**                                                                    01155001
//*ZMUD39S3 DD DSN=MXC&AMB..ZM.FIX.Z39.CANCELA.F&FECHA,
//*            DISP=(NEW,CATLG,DELETE),
//*            UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS)
//**                                                                    01155001
//*SYSTSPRT DD SYSOUT=*                                                 01170038
//*SYSPRINT DD SYSOUT=*                                                 01180038
//*SYSOUT   DD SYSOUT=*                                                 01190038
//*SYSDBOUT DD SYSOUT=*                                                 01200038
//*SYSABOUT DD DUMMY                                                    01210000
//*SYSUDUMP DD DUMMY                                                    01220000
//**                                                                    01155001
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC25T17),DISP=SHR                  01230041
//*                                                                     01155001
//*====================================================================*
//*====================================================================*
//* PASO     : PHC25P30                                                *
//* PROGRAMA : IKJEFT01/ZM4COP33                                       *
//* OBJETIVO : CALCULO DE COSTO PROMEDIO (REPROCESO) APARTIR OPERA     *
//*====================================================================*
//*PHC25P30 EXEC PGM=IKJEFT01,COND=(4,LT)                               01151027
//**                                                                    01153001
//*ZMUD33S1 DD DSN=MXC&AMB..ZM.FIX.Z03R.LOGERR.F&FECHA,
//*            DISP=(NEW,CATLG,DELETE),
//*            UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS)
//**                                                                    01155001
//*ZMUD33S2 DD DSN=MXC&AMB..ZM.FIX.Z03R.CCONTROL.F&FECHA,
//*            DISP=(NEW,CATLG,DELETE),
//*            UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//**                                                                    01155001
//*ZMUD33S3 DD DSN=MXC&AMB..ZM.FIX.Z03R.CANCELA.F&FECHA,
//*            DISP=(NEW,CATLG,DELETE),
//*            UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS)
//**                                                                    01155001
//*SYSTSPRT DD SYSOUT=*                                                 01170038
//*SYSPRINT DD SYSOUT=*                                                 01180038
//*SYSOUT   DD SYSOUT=*                                                 01190038
//*SYSDBOUT DD SYSOUT=*                                                 01200038
//*SYSABOUT DD DUMMY                                                    01210000
//*SYSUDUMP DD DUMMY                                                    01220000
//**                                                                    01155001
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC25T14),DISP=SHR                  01230041
//*                                                                     01155001
//*====================================================================*
//* PASO     : PHC25P28                                                *
//* PROGRAMA : IKJEFT01/ZM4COP34                                       *
//* OBJETIVO : ACTUALIZA SECART Y CARTERA, APARTIR DE ZMDT100          *
//*            (REPROCESO)                                             *
//*====================================================================*
//*PHC25P28 EXEC PGM=IKJEFT01,COND=(4,LT)                               01151027
//**                                                                    01153001
//*ZMUD34S1 DD DSN=MXC&AMB..ZM.FIX.Z34.CCONTROL.F&FECHA,
//*            DISP=(NEW,CATLG,DELETE),
//*            UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//**                                                                    01155001
//*ZMUD34S2 DD DSN=MXC&AMB..ZM.FIX.Z34.SIACTUAL.F&FECHA,
//*            DISP=(NEW,CATLG,DELETE),
//*            UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS)
//**                                                                    01155001
//*ZMUD34S3 DD DSN=MXC&AMB..ZM.FIX.Z34.NOACTUAL.F&FECHA,
//*            DISP=(NEW,CATLG,DELETE),
//*            UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS)
//**                                                                    01155001
//*SYSTSPRT DD SYSOUT=*                                                 01170038
//*SYSPRINT DD SYSOUT=*                                                 01180038
//*SYSOUT   DD SYSOUT=*                                                 01190038
//*SYSDBOUT DD SYSOUT=*                                                 01200038
//*SYSABOUT DD DUMMY                                                    01210000
//*SYSUDUMP DD DUMMY                                                    01220000
//**                                                                    01155001
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC25T16),DISP=SHR                  01230041
//*                                                                     01155001
//*====================================================================*
//* PASO     : PHC25P25                                                *
//* PROGRAMA : IKJEFT01/ZM4COP03          MERCADO DE CAPITALES RTA.VAR.*
//* OBJETIVO : CALCULO DE COSTO PROMEDIO (PROCESO NORMAL)              *
//*====================================================================*
//PHC25P25 EXEC PGM=IKJEFT01,COND=(4,LT)                                01151027
//*                                                                     01153001
//ZMUD01S1 DD DSN=MXC&AMB..ZM.FIX.Z03.LOGERR.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS)
//*                                                                     01155001
//ZMUD01S2 DD DSN=MXC&AMB..ZM.FIX.Z03.CCONTROL.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*                                                                     01155001
//ZMUD01S3 DD DSN=MXC&AMB..ZM.FIX.Z03.CANCELA.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS)
//*                                                                     01155001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC25T09),DISP=SHR                   01230041
//*                                                                     01155001
//*====================================================================*
//* PASO     : PHC25P20                                                *
//* PROGRAMA : ICEMAN                                                  *
//* OBJETIVO : SORT ARCHIVO DE CANCELACIONES                           *
//*====================================================================*
//PHC25P20 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.Z03.CANCELA.F&FECHA,DISP=SHR
//*        DD DSN=MXC&AMB..ZM.FIX.Z03R.CANCELA.F&FECHA,DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.Z03.CANCELA.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC25T11),DISP=SHR
//*====================================================================*
//* PASO     : PHC25P15                                                *
//* PROGRAMA : IKJEFT01/ZM4COP06                                       *
//* OBJETIVO : CALCULO COSTO PROMEDIO CANCELACIONES                    *
//*====================================================================*
//PHC25P15 EXEC PGM=IKJEFT01,COND=(4,LT)                                01151027
//*                                                                     01153001
//ZMUD06E1 DD DSN=MXC&AMB..ZM.FIX.Z03.CANCELA.SORT,DISP=SHR
//*                                                                     01155001
//ZMUD06S1 DD DSN=MXC&AMB..ZM.FIX.Z06.CANCELA.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS)
//*                                                                     01155001
//ZMUD06S2 DD DSN=MXC&AMB..ZM.FIX.Z06.CCONTROL.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*                                                                     01155001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC25T12),DISP=SHR                   01230041
//*====================================================================*
//* PASO     : PHC25P10                                                *
//* PROGRAMA : IKJEFT01/ZM4COP02                                       *
//* OBJETIVO :                                                         *
//*====================================================================*
//PHC25P10 EXEC PGM=IKJEFT01,COND=(4,LT)                                01151027
//*                                                                     01153001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC25T08),DISP=SHR                   01230041
//*====================================================================*
//* PASO     : PHC25P05                                                *
//* PROGRAMA : IKJEFT01/ZM4COP05                                       *
//* OBJETIVO : INFORMACION DE ZMDT100 HISTORICO DE OPERACIONES         *
//*            DIVIDE INFORMACION EN DIVISIONES, FIDEICOMISOS Y OTROS  *
//*====================================================================*
//PHC25P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                01151027
//*                                                                     01153001
//ZMUD05S1 DD DSN=MXC&AMB..ZM.FIX.ECO.NORTE.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(40,20),RLSE)
//*                                                                     01155001
//ZMUD05S2 DD DSN=MXC&AMB..ZM.FIX.ECO.CIFRAS2.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=79,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*                                                                     01153001
//ZMUD05S3 DD DSN=MXC&AMB..ZM.FIX.ECO.NORESTE.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(40,20),RLSE)
//*                                                                     01153001
//ZMUD05S4 DD DSN=MXC&AMB..ZM.FIX.ECO.SUR.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(40,20),RLSE)
//*                                                                     01153001
//ZMUD05S5 DD DSN=MXC&AMB..ZM.FIX.ECO.BAJIO.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(40,20),RLSE)
//*                                                                     01153001
//ZMUD05S6 DD DSN=MXC&AMB..ZM.FIX.ECO.SURESTE.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(40,20),RLSE)
//*                                                                     01153001
//ZMUD05S7 DD DSN=MXC&AMB..ZM.FIX.ECO.OCCIDEN.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(40,20),RLSE)
//*                                                                     01153001
//*ZMUD05S8 DD DSN=MXC&AMB..ZM.FIX.ECO.METRO1.F&FECHA,
//ZMUD05S8 DD DSN=MXC&AMB..ZM.FIX.ECO.METRON.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(40,20),RLSE)
//*                                                                     01153001
//*ZMUD05S9 DD DSN=MXC&AMB..ZM.FIX.ECO.METRO2.F&FECHA,
//ZMUD05S9 DD DSN=MXC&AMB..ZM.FIX.ECO.METROS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(40,20),RLSE)
//*                                                                     01153001
//ZMUD05SA DD DSN=MXC&AMB..ZM.FIX.ECO.FIDEIC1.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(40,20),RLSE)
//*                                                                     01153001
//ZMUD05SB DD DSN=MXC&AMB..ZM.FIX.ECO.FIDEIC2.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(40,20),RLSE)
//*                                                                     01153001
//ZMUD05SC DD DSN=MXC&AMB..ZM.FIX.ECO.OTROS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(40,20),RLSE)
//*                                                                     01153001
//ZMUD05SD DD DSN=MXC&AMB..ZM.FIX.ECO.OTROS2.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(40,20),RLSE)
//*                                                                     01153001
//ZMUD05SE DD DSN=MXC&AMB..ZM.FIX.ECO.OTROS3.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(40,20),RLSE)
//ZMUD05SF DD DSN=MXC&AMB..ZM.FIX.ECO.OTROS4.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(40,20),RLSE)
//*                                                                     01155001
//*SE AGREGA SALIDA DIV-UHNMX                                           01155001
//ZMUD05SG DD DSN=MXC&AMB..ZM.FIX.ECO.UHNMX.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(40,20),RLSE)
//*                                                                     01155001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC25T07),DISP=SHR                   01230041
//*                                                                     01155001
//**********************************************************************01155001
//* PASO     : PHC25P04                                                *01155001
//* OBJETIVO : ORDENA ARCHIVO DIVISION NORTE                           *01155001
//*    POR CUENTA, EMISORA, SERIE, FECHA OPERACION Y FOLIO OPERACION   *01155001
//* UTILERIA : ICEMAN                                                  *01155001
//**********************************************************************01155001
//PHC25P04 EXEC PGM=ICEMAN,COND=(4,LT)                                  01155001
//SYSOUT   DD SYSOUT=*                                                  01155001
//SYSTSPRT DD SYSOUT=*                                                  01155001
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.NORTE.F&FECHA,DISP=SHR            01155001
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECO.SORT.NORTE.F&FECHA,               01155001
//            DISP=(NEW,CATLG,DELETE),                                  01155001
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE),UNIT=3390                        01155001
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC25T06),DISP=SHR                   01155001
//*                                                                     01155001
//**********************************************************************01155001
//* PASO     : PHC25P03                                                *01155001
//* OBJETIVO : ORDENA ARCHIVO DIVISION NORESTE                         *01155001
//*    POR CUENTA, EMISORA, SERIE, FECHA OPERACION Y FOLIO OPERACION   *01155001
//* UTILERIA : ICEMAN                                                  *01155001
//**********************************************************************01155001
//PHC25P03 EXEC PGM=ICEMAN,COND=(4,LT)                                  01155001
//SYSOUT   DD SYSOUT=*                                                  01155001
//SYSTSPRT DD SYSOUT=*                                                  01155001
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.NORESTE.F&FECHA,DISP=SHR          01155001
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECO.SORT.NORESTE.F&FECHA,             01155001
//            DISP=(NEW,CATLG,DELETE),                                  01155001
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE),UNIT=3390                        01155001
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC25T06),DISP=SHR                   01155001
//*                                                                     01155001
//**********************************************************************01155001
//* PASO     : PHC25P02                                                *01155001
//* OBJETIVO : ORDENA ARCHIVO DIVISION SUR                             *01155001
//*    POR CUENTA, EMISORA, SERIE, FECHA OPERACION Y FOLIO OPERACION   *01155001
//* UTILERIA : ICEMAN                                                  *01155001
//**********************************************************************01155001
//PHC25P02 EXEC PGM=ICEMAN,COND=(4,LT)                                  01155001
//SYSOUT   DD SYSOUT=*                                                  01155001
//SYSTSPRT DD SYSOUT=*                                                  01155001
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.SUR.F&FECHA,DISP=SHR              01155001
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECO.SORT.SUR.F&FECHA,                 01155001
//            DISP=(NEW,CATLG,DELETE),                                  01155001
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE),UNIT=3390                        01155001
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC25T06),DISP=SHR                   01155001
//*                                                                     01155001
//**********************************************************************01155001
//* PASO     : PHC25P01                                                *01155001
//* OBJETIVO : ORDENA ARCHIVO DIVISION BAJIO                           *01155001
//*    POR CUENTA, EMISORA, SERIE, FECHA OPERACION Y FOLIO OPERACION   *01155001
//* UTILERIA : ICEMAN                                                  *01155001
//**********************************************************************01155001
//PHC25P01 EXEC PGM=ICEMAN,COND=(4,LT)                                  01155001
//SYSOUT   DD SYSOUT=*                                                  01155001
//SYSTSPRT DD SYSOUT=*                                                  01155001
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.BAJIO.F&FECHA,DISP=SHR            01155001
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECO.SORT.BAJIO.F&FECHA,               01155001
//            DISP=(NEW,CATLG,DELETE),                                  01155001
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE),UNIT=3390                        01155001
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC25T06),DISP=SHR                   01155001
//*                                                                     01155001
//**********************************************************************01155001
//* PASO     : PHC25P0A                                                *01155001
//* OBJETIVO : ORDENA ARCHIVO DIVISION SURESTE                         *01155001
//*    POR CUENTA, EMISORA, SERIE, FECHA OPERACION Y FOLIO OPERACION   *01155001
//* UTILERIA : ICEMAN                                                  *01155001
//**********************************************************************01155001
//PHC25P0A EXEC PGM=ICEMAN,COND=(4,LT)                                  01155001
//SYSOUT   DD SYSOUT=*                                                  01155001
//SYSTSPRT DD SYSOUT=*                                                  01155001
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.SURESTE.F&FECHA,DISP=SHR          01155001
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECO.SORT.SURESTE.F&FECHA,             01155001
//            DISP=(NEW,CATLG,DELETE),                                  01155001
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE),UNIT=3390                        01155001
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC25T06),DISP=SHR                   01155001
//*                                                                     01155001
//**********************************************************************01155001
//* PASO     : PHC25P0B                                                *01155001
//* OBJETIVO : ORDENA ARCHIVO DIVISION OCCIDENTE                       *01155001
//*    POR CUENTA, EMISORA, SERIE, FECHA OPERACION Y FOLIO OPERACION   *01155001
//* UTILERIA : ICEMAN                                                  *01155001
//**********************************************************************01155001
//PHC25P0B EXEC PGM=ICEMAN,COND=(4,LT)                                  01155001
//SYSOUT   DD SYSOUT=*                                                  01155001
//SYSTSPRT DD SYSOUT=*                                                  01155001
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.OCCIDEN.F&FECHA,DISP=SHR          01155001
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECO.SORT.OCCIDEN.F&FECHA,             01155001
//            DISP=(NEW,CATLG,DELETE),                                  01155001
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE),UNIT=3390                        01155001
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC25T06),DISP=SHR                   01155001
//*                                                                     01155001
//**********************************************************************01155001
//* PASO     : PHC25P0C                                                *01155001
//* OBJETIVO : ORDENA ARCHIVO DIVISION METRO NORTE (ANTES METRO1)      *01155001
//*    POR CUENTA, EMISORA, SERIE, FECHA OPERACION Y FOLIO OPERACION   *01155001
//* UTILERIA : ICEMAN                                                  *01155001
//**********************************************************************01155001
//PHC25P0C EXEC PGM=ICEMAN,COND=(4,LT)                                  01155001
//SYSOUT   DD SYSOUT=*                                                  01155001
//SYSTSPRT DD SYSOUT=*                                                  01155001
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.METRON.F&FECHA,DISP=SHR           01155001
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECO.SORT.METRON.F&FECHA,              01155001
//            DISP=(NEW,CATLG,DELETE),                                  01155001
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE),UNIT=3390                        01155001
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC25T06),DISP=SHR                   01155001
//*                                                                     01155001
//**********************************************************************01155001
//* PASO     : PHC25P0D                                                *01155001
//* OBJETIVO : ORDENA ARCHIVO DIVISION METRO SUR (ANTES METRO2)        *01155001
//*    POR CUENTA, EMISORA, SERIE, FECHA OPERACION Y FOLIO OPERACION   *01155001
//* UTILERIA : ICEMAN                                                  *01155001
//**********************************************************************01155001
//PHC25P0D EXEC PGM=ICEMAN,COND=(4,LT)                                  01155001
//SYSOUT   DD SYSOUT=*                                                  01155001
//SYSTSPRT DD SYSOUT=*                                                  01155001
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.METROS.F&FECHA,DISP=SHR           01155001
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECO.SORT.METROS.F&FECHA,              01155001
//            DISP=(NEW,CATLG,DELETE),                                  01155001
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE),UNIT=3390                        01155001
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC25T06),DISP=SHR                   01155001
//*                                                                     01155001
//**********************************************************************01155001
//* PASO     : PHC25P0E                                                *01155001
//* OBJETIVO : ORDENA ARCHIVO DIVISION FIDEICOMISOS 1                  *01155001
//*    POR CUENTA, EMISORA, SERIE, FECHA OPERACION Y FOLIO OPERACION   *01155001
//* UTILERIA : ICEMAN                                                  *01155001
//**********************************************************************01155001
//PHC25P0E EXEC PGM=ICEMAN,COND=(4,LT)                                  01155001
//SYSOUT   DD SYSOUT=*                                                  01155001
//SYSTSPRT DD SYSOUT=*                                                  01155001
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.FIDEIC1.F&FECHA,DISP=SHR          01155001
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECO.SORT.FIDEIC1.F&FECHA,             01155001
//            DISP=(NEW,CATLG,DELETE),                                  01155001
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE),UNIT=3390                        01155001
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC25T06),DISP=SHR                   01155001
//*                                                                     01155001
//**********************************************************************01155001
//* PASO     : PHC25P0F                                                *01155001
//* OBJETIVO : ORDENA ARCHIVO DIVISION FIDEICOMISOS 2                  *01155001
//*    POR CUENTA, EMISORA, SERIE, FECHA OPERACION Y FOLIO OPERACION   *01155001
//* UTILERIA : ICEMAN                                                  *01155001
//**********************************************************************01155001
//PHC25P0F EXEC PGM=ICEMAN,COND=(4,LT)                                  01155001
//SYSOUT   DD SYSOUT=*                                                  01155001
//SYSTSPRT DD SYSOUT=*                                                  01155001
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.FIDEIC2.F&FECHA,DISP=SHR          01155001
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECO.SORT.FIDEIC2.F&FECHA,             01155001
//            DISP=(NEW,CATLG,DELETE),                                  01155001
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE),UNIT=3390                        01155001
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC25T06),DISP=SHR                   01155001
//*                                                                     01155001
//**********************************************************************01155001
//* PASO     : PHC25P0G                                                *01155001
//* OBJETIVO : ORDENA ARCHIVO DIVISION NORTE                           *01155001
//*    POR CUENTA, EMISORA, SERIE, FECHA OPERACION Y FOLIO OPERACION   *01155001
//* UTILERIA : ICEMAN                                                  *01155001
//**********************************************************************01155001
//PHC25P0G EXEC PGM=ICEMAN,COND=(4,LT)                                  01155001
//SYSOUT   DD SYSOUT=*                                                  01155001
//SYSTSPRT DD SYSOUT=*                                                  01155001
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.OTROS.F&FECHA,DISP=SHR            01155001
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECO.SORT.OTROS.F&FECHA,               01155001
//            DISP=(NEW,CATLG,DELETE),                                  01155001
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE),UNIT=3390                        01155001
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC25T06),DISP=SHR                   01155001
//*                                                                     01155001
//**********************************************************************01155001
//* PASO     : PHC25P0H                                                *01155001
//* OBJETIVO : ORDENA ARCHIVO DIVISION NORTE                           *01155001
//*    POR CUENTA, EMISORA, SERIE, FECHA OPERACION Y FOLIO OPERACION   *01155001
//* UTILERIA : ICEMAN                                                  *01155001
//**********************************************************************01155001
//PHC25P0H EXEC PGM=ICEMAN,COND=(4,LT)                                  01155001
//SYSOUT   DD SYSOUT=*                                                  01155001
//SYSTSPRT DD SYSOUT=*                                                  01155001
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.OTROS2.F&FECHA,DISP=SHR           01155001
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECO.SORT.OTROS2.F&FECHA,              01155001
//            DISP=(NEW,CATLG,DELETE),                                  01155001
//            DCB=(DSORG=PS,RECFM=FB,LRECL=321,BLKSIZE=0),
//            SPACE=(CYL,(40,20),RLSE),UNIT=3390                        01155001
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC25T06),DISP=SHR                   01155001
//*                                                                     01155001
//*====================================================================*
//*         F I N    D E L    P R O C E S O    Z M H C P D 2 5         *
//*====================================================================*
