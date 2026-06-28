//ZMHPCD20  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMHPCD20                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* REESTRUCTURAR LA TABLA ZMDTEMI EN BASE A LAS ORDENES QUE NO        *
//* TUVIERON ASIGNACION (CTITASG OF DCLORDENES = 0).                   *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*  @DGCM01     XMZ8533 30OCT18  SE AGREGAN PASOS DE ZMDTCND          *
//*====================================================================*
//* PASO     : PHC20P01                                                *
//* PROGRAMA : IKJEFT01/ZM4DREMI                                       *
//* OBJETIVO : REESTRUCTURA TABLA ZMDTEMI                              *
//*====================================================================*
//PHC20P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                01151027
//*                                                                     01153001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC20T02),DISP=SHR                   01230041
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMF29P30                                                 *00240002
//* UTIL/PGM: ZM3CR020                                                 *00240002
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *00240002
//*--------------------------------------------------------------------*
//PHC20P02 EXEC PGM=ZM3DRE02,PARM=&FECHA2,COND=(4,LT)                   00780700
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZHC20TB3),DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZM4DRE02.CTC,
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
//*====================================================================*
//* PASO     : PHC20P03                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ORDENES.                           *
//*====================================================================*
//PHC20P03 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PHC20P03,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZORDENE.F&FECHA1..DESC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ZM4DRE02.CTC,DISP=SHR
//**********************************************************************
//* PASO     : PHC20P04                                                *
//* UTILERIA   : IKJEFT01/ZM4DRE02                                     *
//* OBJETIVO   : ACTUALIZA LOS TITULOS EN LA ZMDTCND PARA LAS ORDENES  *
//*              QUE TENGAN VIGENCIA DEL DIA                           *
//**********************************************************************
//PHC20P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFDRE02 DD DSN=MXCP.ZM.FIX.ZORDENE.F&FECHA1..DESC,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC20T08),DISP=SHR                   01230041
//*@HITSS1-I
//*--------------------------------------------------------------------*00240002
//* PASO    : PHC20P05                                                 *00240002
//* UTIL/PGM: ZM3DRE01                                                 *00240002
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA STATUS = 'N'     *00240002
//*--------------------------------------------------------------------*
//PHC20P05 EXEC PGM=ZM3DRE01,PARM=&FECHA2,COND=(4,LT)                   00780700
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZHC20TC3),DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZM4DRE01.CTC,
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
//*====================================================================*
//* PASO     : PHC20P06                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ORDENES.                           *
//*====================================================================*
//PHC20P06 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PHC20P06,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZZMDTCN.F&FECHA1..DESC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ZM4DRE01.CTC,DISP=SHR
//*====================================================================*
//* PASO     : PHC20P07                                                *
//* PROGRAMA : IKJEFT01/ZM4DRE01                                       *
//* OBJETIVO : REESTRUCTURA TABLA ZMDTEMI                              *
//*====================================================================*
//PHC20P07 EXEC PGM=IKJEFT01,COND=(4,LT)                                01151027
//*
//ZMFDRE01 DD DSN=MXCP.ZM.FIX.ZZMDTCN.F&FECHA1..DESC,
//            DISP=SHR
//*                                                                     01153001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC20T07),DISP=SHR                   01230041
//*@HITSS1-F
//*@DGCM01-I
//*====================================================================*
//* PASO     : PHC20P08                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDTCND.                           *
//*====================================================================*
//PHC20P08 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PHC20P08,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BCHCND20.ZMDTCND.COMPRAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC20T03),DISP=SHR
//*====================================================================*
//* PASO     : PHC20P09                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDTPCC.                           *
//*====================================================================*
//PHC20P09 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PHC20P09,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BCHCND20.ZMDTPCC.COMPRAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC20T04),DISP=SHR
//*====================================================================*
//* PASO     : PHC20P10                                                *
//* PROGRAMA : ZM4OC106                                                *
//* OBJETIVO : ACTUALIZA LOS ESTATUS DE LAS ORDENES CONDICIONADAS QUE  *
//*            ESTAN DADAS DE BAJA O QUE REFRENDAN.                    *
//*====================================================================*
//PHC20P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1DQENT1 DD DSN=MXCP.ZM.FIX.BCHCND20.ZMDTCND.COMPRAS,DISP=SHR
//E2DQENT2 DD DSN=MXCP.ZM.FIX.BCHCND20.ZMDTPCC.COMPRAS,DISP=SHR
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.BCHCND20.ZMDTCND.DETALLE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(80,40),RLSE),
//            DCB=(DSORG=PS,LRECL=42,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC20T05),DISP=SHR
//*====================================================================*
//* PASO     : PHC20P11                                                *
//* PROGRAMA : IKJEFT01/ZM4DREMA                                       *
//* OBJETIVO : REESTRUCTURA TABLA ZMDTEMI                              *
//*====================================================================*
//PHC20P11 EXEC PGM=IKJEFT01,COND=(4,LT)                                01151027
//*                                                                     01153001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC20T06),DISP=SHR                   01230041
//*@DGCM01-F
//*====================================================================*
//*                                                                     01153001
//**********************************************************************
//* PASO     : PHC20P12                                                *
//* PROGRAMA : ZM4DGV89                                                *
//* OBJETIVO : ARCHIVO DE ORDENES POR VENCER                           *
//**********************************************************************
//PHC20P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//PF601765  DD DUMMY
//*
//ZMGV89A1 DD DSN=MXCP.ZM.FIX.ORDCON.XVENC,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,1),RLSE),
//            DCB=(DSORG=PS,LRECL=120,RECFM=FB,BLKSIZE=0)
//*
//ZMGV89A2 DD DSN=MXCP.ZM.FIX.ORDWTR.XVENC,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,1),RLSE),
//            DCB=(DSORG=PS,LRECL=120,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD SYSOUT=X
//SYSUDUMP DD SYSOUT=X
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC20T12),DISP=SHR
//*
//**********************************************************************
//* PASO     : PHC20P13                                                *
//* PROGRAMA : SORT                                                    *
//* OBJETIVO : SORT ARCHIVO ORDCON                                     *
//**********************************************************************
//PHC20P13 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ORDCON.XVENC,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ORDCON.XVENC.V1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=120,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,1),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC20T13),DISP=SHR
//*
//**********************************************************************
//* PASO     : PHC20P14                                                *
//* PROGRAMA : SORT                                                    *
//* OBJETIVO : SORT ARCHIVO ORDWTR                                     *
//**********************************************************************
//PHC20P14 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ORDWTR.XVENC,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ORDWTR.XVENC.V1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=120,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,1),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC20T13),DISP=SHR
//*
//**********************************************************************
//* PASO     : PHC20P15                                                *
//* PROGRAMA : ZM4DGV90                                                *
//* OBJETIVO : REPORTE DE ORDENES CON POR VENCER                       *
//**********************************************************************
//PHC20P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//PF601765  DD DUMMY
//*
//ZMGV90A1 DD DSN=MXCP.ZM.FIX.ORDCON.XVENC.V1,DISP=SHR
//ZMGV90R1 DD DSN=MXCP.ZM.FIX.ORDCON.XVENC.R1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FBA,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD SYSOUT=X
//SYSUDUMP DD SYSOUT=X
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC20T14),DISP=SHR
//*
//**********************************************************************
//* PASO     : PHC20P16                                                *
//* PROGRAMA : ZM4DGV90                                                *
//* OBJETIVO : REPORTE DE ORDENES WTR POR VENCER                       *
//**********************************************************************
//PHC20P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//PF601765  DD DUMMY
//*
//ZMGV90A1 DD DSN=MXCP.ZM.FIX.ORDWTR.XVENC.V1,DISP=SHR
//ZMGV90R1 DD DSN=MXCP.ZM.FIX.ORDWTR.XVENC.R1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FBA,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD SYSOUT=X
//SYSUDUMP DD SYSOUT=X
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC20T14),DISP=SHR
//*
//**********************************************************************
//*                    -- ICEGENER  --                                 *
//*        COPIA EL ARCHIVO HACIA EL SISTEMA DE CTL-D                  *
//**********************************************************************
//PHC20P17 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ORDCON.XVENC.R1,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
