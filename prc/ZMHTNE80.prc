//ZMHTNE80 PROC                                                         00060000
//**********************************************************************00150000
//*                                                                    *00160000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00170000
//*                                                                    *00180000
//* PROCESO        :  ZMHTNE80 (JCL-CBHTNE80).                         *00190000
//*                                                                    *00220000
//* OBJETIVO       :  GENERA Y TRANSFIERE ARCHIVO DE BACK UP CAPITALES.*00230000
//*                                                                    *00240000
//* CORRE                                                              *00260000
//* ANTES DE       :  NINGUNO.                                         *00280000
//*                                                                    *00290000
//* DESPUES DE     :           (        ).                             *00300000
//*                                                                    *00321000
//* PERIODICIDAD   :  CICLICO CORRE CADA 10 MIN.                       *00330000
//*                                                                    *00340000
//* ELABORADO POR  :  DAMIAN LUNA PE¦A.                                *00350000
//*                                                                    *00350100
//**********************************************************************00360000
//*                                                                    *00370000
//* REGION DE OVERRIDES EN CASO DE CONTINGENCIA :                      *00380000
//*                                                                    *00390000
//**********************************************************************00410000
//* OBJETIVO : GENERA Y TRANSFIERE ARCHIVO BACK UP CAPITALES GENERADO  *00420000
//*            A LA CARPETA PUBLIC "150.200.97.120"                    *00430000
//*            (Z:) / CAPITALES / "BACK UP CAPITALES"                  *00431000
//*--------------------------------------------------------------------*00431100
//*  MARCA       AUTOR   FECHA   DESCRIPCION                           *00431200
//* ----------- ------- ------- -------------------------------------- *00431300
//* FS-1.0.0-01 CDAINFO 20JUL11 SE MODIFICA LA LOGITUD DEL ARCHIVO DE  *00431400
//*                             SALIDA EN EL PASO PHT80P02.            *00431500
//*                                                                    *00431600
//* ------- ------- ---------- ----------------------------------------*00431700
//* JGF01   XME1788 20200904  -SE MIGRAN LAS TRANSFERENCIAS DEL        *00431800
//*                            SERVIDOR SBBV04 AL NASBBVAMXP.          *00431900
//**********************************************************************00450000
//*-------------------------------------------------------------------- 00460400
//* PASO 1                                                              00460500
//* ARCHIVO DE BACK UP:                                                 00460600
//* PROGRAMA: ZM4DBC80                                                  00460700
//* FUNCION:  GENERA ARCHIVO BACK UP CAPITALES.                         00460800
//*-------------------------------------------------------------------- 00460900
//PHT80P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00461003
//*                                                                     00461103
//ZMOH80R1 DD DSN=MXCP.ZM.FIX.ARCHIVO.BACKUP,                           00461203
//            DISP=(NEW,CATLG,CATLG),                                   00461303
//* FS-1.0.0-01-INI                                                     00461304
//*           DCB=(DSORG=PS,RECFM=FBA,LRECL=158,BLKSIZE=0),             00461403
//*AJUSTES-EMG-INI                                                      00461404
//*           DCB=(DSORG=PS,RECFM=FBA,LRECL=278,BLKSIZE=0),             00461405
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=274,BLKSIZE=0),             00461406
//*AJUSTES-EMG-FIN                                                      00461407
//* FS-1.0.0-01-FIN                                                     00461408
//            UNIT=3390,                                                00461503
//            SPACE=(CYL,(4,2),RLSE)                                    00461603
//SYSTSPRT DD SYSOUT=*                                                  00461703
//SYSPRINT DD SYSOUT=*                                                  00461803
//SYSOUT   DD SYSOUT=*                                                  00461903
//SYSDBOUT DD SYSOUT=*                                                  00462003
//SYSABOUT DD DUMMY                                                     00462103
//SYSUDUMP DD DUMMY                                                     00462203
//*SYSPRINT DD DUMMY                                                    00462303
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZHT80T02)                   00462403
//*                                                                     00464500
//*JGF01 INI                                                            00464510
//*--------------------------------------------------------------------*00464600
//* PASO:  2     REALIZA LA TRANSFERENCIA DEL ARCHIVO BACK UP CAPITALES.00464700
//* PHT80P01                                                            00464800
//*--------------------------------------------------------------------*00464900
//*PHT80P01 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(1,LT)                 00465000
//**                                                                    00470000
//*STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB                   00480100
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                 00490100
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS                           00500000
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                    00500100
//**                                                                    00500200
//*DMPRINT   DD SYSOUT=*                                                00500300
//*SYSPRINT  DD SYSOUT=*                                                00500400
//*SYSDUMP   DD SYSOUT=*                                                00500500
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHT80T01),DISP=SHR                 00500800
//**                                                                    00500900
//*--------------------------------------------------------------------*00500910
//* PASO:  2     REALIZA LA TRANSFERENCIA DEL ARCHIVO BACK UP CAPITALES.00500920
//* PHT80P01                                                            00500930
//*--------------------------------------------------------------------*00500940
//PHT80P01 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(1,LT)                  00500950
//*                                                                     00500960
//STEPLIB  DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB                     00500961
//DMNETMAP DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                   00500962
//DMPUBLIB DD DISP=SHR,DSN=SIVA.NDM.PROCESS                             00500963
//DMMSGFIL DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                      00500964
//DMPRINT  DD SYSOUT=*                                                  00500965
//SYSDUMP  DD SYSOUT=*                                                  00500966
//SYSPRINT DD SYSOUT=*                                                  00500967
//NDMCMDS  DD SYSOUT=*                                                  00500968
//SYSIN    DD *                                                         00500969
  SIGNON CASE(YES) ESF=NO                                               00500970
  SUBMIT PROC=MSAHDDX1                                             -    00500971
  &HOST=SYSP.PROP.HOST1                                            -    00500972
  &DIST=CDWVPCDTXREPOMX0                                           -    00500973
  &DSNI='MXCP.ZM.FIX.ARCHIVO.BACKUP'                               -    00500975
  &DSNO='\\NASBBVAMXP\PUBLIC\CAPITALES\BACKUPCA.CSV'               -    00500976
  &SYSOPTS='DATATYPE(TEXT) STRIP.BLANKS(NO)'                            00500977
  SIGNOFF                                                               00500978
//*                                                                     00500979
//*JGF01 FIN                                                            00500997
//*--------------------------------------------------------------------*00501000
//*                 F I N   Z M H T P E 6 5                             00501100
//*-------------------------------------------------------------------- 00501200
