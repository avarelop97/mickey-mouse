//ZMHCPD90 PROC
//**********************************************************************
//* OBJETIVO       :  CARGA INICIAL REFORMA FISCAL CASA DE BOLSA       *
//*                                                                    *
//* PROCESO        :  ZMHCPD90                                         *
//*                                                                    *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* SORT POR ISIN
//*--------------------------------------------------------------------*
//PHC90P01 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ZMHCPD90.PRECIO,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.E&EMP..ISSIN.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=49,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(30,15),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC90T01),DISP=SHR
//*--------------------------------------------------------------------*
//*  FILTRA POR ISIN / CASA DE BOLSA
//*  PROGRAMA: ZM4COP12
//*--------------------------------------------------------------------*
//PHC90P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUD12E1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..ISSIN.F&FECHA,
//            DISP=SHR
//ZMUD12S1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..SALCBP.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=32,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(30,15),RLSE)
//ZMUD12S2 DD DSN=MXC&AMB..ZM.FIX.E&EMP..PRCBP2.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=32,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(30,15),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC90T02),DISP=SHR
//*--------------------------------------------------------------------*
//* SORT POR CUENTA Y CONCEPT
//*--------------------------------------------------------------------*
//PHC90P03 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.E&EMP..SALCBP.F&FECHA,DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.E&EMP..SALCBP1.SORT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,LRECL=32,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD  SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC90T06),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   CARGA INICIAL REFORMA FISCAL CASA DE BOLSA
//*  PROGRAMA: ZM4COP14
//*--------------------------------------------------------------------*
//PHC90P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUD14E1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..SALCBP1.SORT.F&FECHA,
//            DISP=SHR
//ZMUD14S1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..ERRCBP2.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=76,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(30,15),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC90T07),DISP=SHR
//
