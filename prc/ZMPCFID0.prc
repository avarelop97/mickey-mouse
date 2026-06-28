//ZMPCFID0 PROC
//*--------------------------------------------------------------------*
//* APLICATIVO  : BANCA PATRIMONIAL                                    *
//* OBJETIVO    : CARGA INICIAL A LA TABLA ZMDT815                     *
//* AUTOR       : FABRICA DE SOFTWARE.                                 *
//* FECHA       : 13 DE SEPTIEMBRE 2017.                               *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR    FECHA   DESCRIPCION                          *
//* ---------- --------- ------- ------------------------------------- *
//*  XXXXXXX   XMZ2170   13SEP17 CARGA INICIAL A LA TABLA ZMDT815      *
//*--------------------------------------------------------------------*
//* PASO    : ZMTCFID1.                                                *
//* PROGRAMA: ZM4CFID0                                                 *
//* OBJETIVO: GENERA CARGA INICIAL A TABLA ZMDT815.                    *
//*--------------------------------------------------------------------*
//ZMTCFID0 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DQZMD1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..ZMDQZMD1,
//            DISP=SHR
//*
//S1DQZMD1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..ZMJCFID0.REGDUPS,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=07,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*                                                  01790000
//SYSPRINT DD SYSOUT=*                                                  01800000
//SYSTSPRT DD SYSOUT=*                                                  01810000
//SYSDBOUT DD SYSOUT=Z                                                  01820000
//SYSABOUT DD SYSOUT=Z                                                  01830000
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMTCFID0),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                       FIN PROCESO  MPPCTDGR                        *
//*--------------------------------------------------------------------*
