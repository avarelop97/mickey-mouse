//ZMARCD04 PROC                                                         00010006
//********************************************************************* 00010006
//* PROCESO        :  BCARCD04                                          00010006
//*                :  PROCESO QUE GENERA ARCHVIVOS EN VACIO PARA        00010006
//*                   TRANSMITIR A SERVIDOR APX (PHYSC)                 00010006
//* CORRE          :                                                    00010006
//* DESPUES DE     :  MZMDAPR1                                          00010006
//* CREADOR        :  XMY9195                                           00010006
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE
//*********************************************************************
//* PASO     : MAP01P01
//* OBJETIVO : GENERA ARCHIVO VACIO ESTRUCTURA TABLA CUENTA
//* PROGRAMA : ICEGENER
//*********************************************************************
//MAP01P01 EXEC  PGM=ICEGENER
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=NULLFILE,
//            DCB=(RECFM=FB,LRECL=840)
//SYSUT2   DD DSN=MXCP.ZM.TMP.CUENTA.PHYSC,UNIT=3390,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(RECFM=FB,LRECL=840,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : MAP01P02
//* OBJETIVO : GENERA ARCHIVO VACIO ESTRUCTURA TABLA ZMDTPRM
//* PROGRAMA : IEFBR14
//*********************************************************************
//MAP01P02 EXEC  PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=NULLFILE,
//            DCB=(RECFM=FB,LRECL=203)
//SYSUT2   DD DSN=MXCP.ZM.TMP.ZMDTPRM.PHYSC,UNIT=3390,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(RECFM=FB,LRECL=203,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : MAP01P03
//* OBJETIVO : GENERA ARCHIVO VACIO ESTRUCTURA TABLA CCOSTO
//* PROGRAMA : ICEGENER
//*********************************************************************
//MAP01P03 EXEC  PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=NULLFILE,
//            DCB=(RECFM=FB,LRECL=176)
//SYSUT2   DD DSN=MXCP.ZM.TMP.CCOSTO.PHYSC,UNIT=3390,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(RECFM=FB,LRECL=176,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : MAP01P04
//* OBJETIVO : GENERA ARCHIVO VACIO ESTRUCTURA TABLA SUCURSA
//* PROGRAMA : ICEGENER
//*********************************************************************
//MAP01P04 EXEC  PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=NULLFILE,
//            DCB=(RECFM=FB,LRECL=195)
//SYSUT2   DD DSN=MXCP.ZM.TMP.SUCURSA.PHYSC,UNIT=3390,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(RECFM=FB,LRECL=195,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : MAP01P05
//* OBJETIVO : GENERA ARCHIVO VACIO ESTRUCTURA TABLA ZMDT611
//* PROGRAMA : ICEGENER
//*********************************************************************
//MAP01P05 EXEC  PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=NULLFILE,
//            DCB=(RECFM=FB,LRECL=57)
//SYSUT2   DD DSN=MXCP.ZM.TMP.ZMDT611.PHYSC,UNIT=3390,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(RECFM=FB,LRECL=57,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : MAP01P06
//* OBJETIVO : GENERA ARCHIVO VACIO ESTRUCTURA TABLA PROMOT
//* PROGRAMA : ICEGENER
//*********************************************************************
//MAP01P06 EXEC  PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=NULLFILE,
//            DCB=(RECFM=FB,LRECL=530)
//SYSUT2   DD DSN=MXCP.ZM.TMP.PROMOT.PHYSC,UNIT=3390,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(RECFM=FB,LRECL=530,DSORG=PS,BLKSIZE=0)
//*
//*********************************************************************
//* PASO     : MAP01P07
//* OBJETIVO : GENERA ARCHIVO VACIO ESTRUCTURA TABLA CTABCO
//* PROGRAMA : ICEGENER
//*********************************************************************
//MAP01P07 EXEC  PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=NULLFILE,
//            DCB=(RECFM=FB,LRECL=407)
//SYSUT2   DD DSN=MXCP.ZM.TMP.CTABCO.PHYSC,UNIT=3390,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(RECFM=FB,LRECL=407,DSORG=PS,BLKSIZE=0)
//*
//**********************************************************************00900006
//*                    F I N   Z M A R C D 0 4                         *00900006
//**********************************************************************00900006
