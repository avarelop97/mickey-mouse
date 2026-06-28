//ZMJLPE76 PROC                                                         00001003
//*                                                                     00002003
//**********************************************************************00003004
//* SISTEMA  : ZM (BANCA PATRIMONIAL Y FIDUCIARIO)                     *00004004
//* PROCESO  : ZMJLPE76                                                *00005003
//* OBJETIVO : DISPARADOR DEL PROCESO DE ACTIVACION PARA LA GENERACION *00006003
//*            ARCHIVO TXT DE EFECTIVOS POR PROMOTOR PARA EL SISTEMA   *00007003
//*            SIVA DE CASA DE BOLSA.                                  *00007103
//**********************************************************************00008004
//**********************************************************************00008104
//*                  LOG DE MODIFICACIONES                             *00009003
//*--------------------------------------------------------------------*00009104
//* MODIFI     AUTOR        FECHA            DESCRIPCION               *00009203
//**********  *******     ********  ************************************00009303
//*---------  -------     --------  -----------------------------------*00009403
//**********************************************************************00009503
//* PJL76100   : RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA   *00009604
//*              EN ARCHIVO                                            *00009704
//* PROGRAMA   : ZM3DG001                                              *00009804
//**********************************************************************00009904
//PJL76100 EXEC PGM=ZM3DG001,                                           00010004
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00010005
//*                                                                     00030001
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMJLPE76,               00040001
//            DISP=(NEW,CATLG,DELETE),                                  00050001
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00060001
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)                        00070001
//*                                                                     00080001
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00090001
//SYSPRINT DD SYSOUT=*                                                  00100001
//SYSOUT   DD SYSOUT=*                                                  00110001
//SYSDBOUT DD SYSOUT=*                                                  00120001
//SYSABOUT DD DUMMY                                                     00130001
//SYSUDUMP DD DUMMY                                                     00140001
//*                                                                     00150002
//**********************************************************************00191004
//* PJL76101   : ACTIVA CONDICION EN CONTROL-M "CBJLNE76_IN" PARA QUE  *00192004
//*              SE ARCHIVO EJECUTE LA GENERACION DE TXT EFECTIVO POR  *00193004
//*              PROMOR                                                *00193104
//* PROGRAMA   : CTMCND                                                *00194004
//**********************************************************************00195004
//PJL76101 EXEC  PGM=CTMCND,                                            00200002
//         PARM='ADD COND CBJLNE76_BCM_SIVA_OK WDATE',COND=(4,LT)       00201002
//*                                                                     00220002
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                  00230002
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                  00240002
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                00250002
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                  00260002
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                  00270002
//PRTDBG   DD SYSOUT=*                                                  00280002
//SYSPRINT DD DUMMY                                                     00290002
//SYSUDUMP DD DUMMY                                                     00300002
//DAPRINT  DD SYSOUT=*                                                  00310002
//DACNDIN  DD DDNAME=SYSIN                                              00320002
//*                                                                     00330002
