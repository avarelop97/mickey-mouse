//ZMHCPD91 PROC
//**********************************************************************
//* OBJETIVO       :  CARGA INICIAL REFORMA FISCAL BANCA               *
//*                                                                    *
//* PROCESO        :  ZMHCPD91                                         *
//*                                                                    *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* SORT POR ISIN ARCHIVO ENTREGADO POR BOLSA
//*--------------------------------------------------------------------*
//PHC91P01 EXEC PGM=ICEMAN,COND=(4,LT)
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
//*   FILTRA POR ISIN PARA CONTRATOS BANCA
//*   PROGRAMA: ZM4COP08
//*--------------------------------------------------------------------*
//PHC91P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUD08E1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..ISSIN.F&FECHA,
//            DISP=SHR
//ZMUD08S1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..SALIDA.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=32,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(30,15),RLSE)
//ZMUD08S2 DD DSN=MXC&AMB..ZM.FIX.E&EMP..PRECI2.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=32,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(30,15),RLSE)
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC91T01),DISP=SHR
//*--------------------------------------------------------------------*
//* SORT POR CUENTA Y CONCEPT
//*--------------------------------------------------------------------*
//PHC91P03 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.E&EMP..SALIDA.F&FECHA,DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.E&EMP..SALIDA1.SORT.F&FECHA,
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
//*   CARGA INICIAL REFORMA FISCAL BANCA
//*   PROGRAMA: ZM4COP11
//*--------------------------------------------------------------------*
//PHC91P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUD11E1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..SALIDA1.SORT.F&FECHA,
//            DISP=SHR
//ZMUD11S1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..ERRORE2.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=76,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(30,15),RLSE)
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC91T03),DISP=SHR
