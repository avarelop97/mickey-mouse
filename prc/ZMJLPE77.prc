//ZMJLPE77 PROC                                                         00010001
//**********************************************************************00011001
//* SISTEMA  : ZM (BANCA PATRIMONIAL Y FIDUCIARIO)                     *00012001
//* PROCESO  : ZMJLPE77                                                *00013001
//* OBJETIVO : DISPARADOR PARA CREAR DEL ARCHIVO DE TEXTO QUE CONTIENE *00014001
//*            INFORMACION AL DIA DE EL EFECTIVO POR PROMOTOR EN LAS   *00015001
//*            TABLAS CORRESPONDIENTES DEL MUV.                        *00016001
//**********************************************************************00017001
//**********************************************************************00018001
//*                  LOG DE MODIFICACIONES                             *00019001
//*--------------------------------------------------------------------*00019101
//* MODIFI     AUTOR        FECHA            DESCRIPCION               *00019201
//**********  *******     ********  ************************************00019301
//*---------  -------     --------  -----------------------------------*00019401
//**********************************************************************00019501
//* PJL77100   : GENERACION DE ARCHIVO DE EFECTIVO POR PROMOTOR        *00019601
//* PROGRAMA   : IKJEFT01                                              *00019701
//**********************************************************************00019801
//PJL77100 EXEC PGM=IKJEFT01                                            00019901
//*                                                                     00020001
//SALIDA   DD DSN=MXCP.ZM.FIX.ECBP.EFVOPROM.OPC127,                     00030001
//            DISP=(NEW,CATLG,DELETE),                                  00031001
//            UNIT=3390,                                                00032001
//            SPACE=(CYL,(4,2),RLSE),                                   00033001
//            DCB=(RECFM=FB,LRECL=190,BLKSIZE=0,DSORG=PS)               00034001
//*                                                                     00035001
//SYSTSPRT DD SYSOUT=*                                                  00036001
//SYSPRINT DD SYSOUT=*                                                  00037001
//SYSOUT   DD SYSOUT=*                                                  00038001
//SYSDBOUT DD SYSOUT=*                                                  00039001
//SYSABOUT DD DUMMY                                                     00040001
//SYSUDUMP DD DUMMY                                                     00050001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PJL77100),DISP=SHR                   00060001
