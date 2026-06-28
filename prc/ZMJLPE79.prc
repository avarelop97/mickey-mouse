//ZMJLPE79 PROC                                                         00001003
//*                                                                     00002003
//**********************************************************************00003004
//* SISTEMA  : ZM (BANCA PATRIMONIAL Y FIDUCIARIO)                     *00004004
//* PROCESO  : ZMJLPE79                                                *00005003
//* OBJETIVO : DISPARADOR DEL PROCESO DE TRANSMISION PARA OBTENER      *00006003
//*            ARCHIVO DE OPERACIONES COMPRAS, VENTAS Y CANCELACIONES  *00007003
//*            DE ARBITRAJE INTERNACIONAL Y SER OPERADAS EN CASA DE    *00007103
//*            BOLSA DE FORMA AUTOMATICA..                             *00007104
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
//PJL79100 EXEC PGM=ZM3DG001,                                           00150003
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00150004
//PI601765 DD DUMMY                                                     00150005
//*                                                                     00150006
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMJLPE79,               00150007
//            DISP=(NEW,CATLG,DELETE),                                  00150008
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00150009
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE)                          00150010
//*                                                                     00150020
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00150030
//SYSPRINT DD SYSOUT=*                                                  00150040
//SYSOUT   DD SYSOUT=*                                                  00150050
//SYSDBOUT DD SYSOUT=*                                                  00150060
//SYSABOUT DD DUMMY                                                     00150070
//SYSUDUMP DD DUMMY                                                     00150080
//*                                                                     00150090
//**********************************************************************00191004
//* PJL76101   : ACTIVA CONDICION EN CONTROL-M "SIVAXSCA_SIVA_OK' PARA *00192004
//*              TRANSMITIR ARCHIVO DE OPERACIONES DE COMPRA, VENTA Y  *00193004
//*              CANCELACIONES EN SIVA.                                *00193104
//* PROGRAMA   : CTMCND                                                *00194004
//**********************************************************************00195004
//PJL79101 EXEC  PGM=CTMCND,                                            00200002
//         PARM='ADD COND SIVAXSCA_SIVA_OK WDATE',COND=(4,LT)           00201002
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
