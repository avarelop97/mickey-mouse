//ZMPMSG01 PROC                                                         00010002
//*
//ZMPMSG20 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMPMSG01,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//*--------------------------------------------------------------------*
//* PROCESO      : ZMPMSG01.                                           *
//* PERIODICIDAD : UNICA VEZ                                           *
//* OBJETIVO     : CARGA MENSAJES                                      *
//*--------------------------------------------------------------------*
//* PASO    : ZMPMSG10                                                 *00240002
//* UTIL/PGM: ZMPMSG01                                                 *00240002
//* OBJETIVO:                                                          *00240002
//*--------------------------------------------------------------------*
//ZMPMSG10 EXEC PGM=IKJEFT01                                            00780700
//MENSAJE  DD DSN=MXCP.ZM.FIX.MENSAJES.SIVA,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDMSG01),DISP=SHR
//*
