//ZMJLLC41 PROC
//*--------------------------------------------------------------------*
//* SISTEMA  : ZM - CASA DE BOLSA.                                     *00003000
//* PROCESO  : ZMJLLC41.                                               *
//* OBJETIVO : TRANSMISION DE SERVIDOR A HOST. OPCION (C1) TRANS ZIS4  *
//*            ARCHIVO CRP                                             *
//* REALIZO  : CDA-INFORMATICA (CABS).                                 *
//* FECHA    : 02-04-2014.                                             *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-0.0.0-00  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*                                                                    *
//*--------------------------------------------------------------------*
//*---------------------------------------------------------------------
//* PASO    : ZMLC4101
//* PROGRAMA: CTMCND
//* OBJETIVO: PRENDE CONDICION DE CTRLM.
//*---------------------------------------------------------------------
//ZMLC4101 EXEC PGM=CTMCND,PARM='ADD COND CBJLPC41_OK WDATE'
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=Z
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=Z
//DACNDIN  DD DDNAME=SYSIN
