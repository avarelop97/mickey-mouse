//ZMLFPD52 PROC
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA  : ZM                                                      *
//*                                                                    *
//* PROCESO  : ZMLFPD52                                                *
//*                                                                    *
//* OBJETIVO : GENERA REPORTES EN LOS QUE CONTENGAN LA INFORMACION     *
//*            REFERENTE A LAS OPERACIONES DE LA BANCA PATRIMONIAL.    *
//*                                                                    *
//* REALIZO  : FSW-TECNOCOM                                            *
//*                                                                    *
//* FECHA    : 25-FEBRERO-2013.                                        *
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//*                       LOG DE MODIFICACIONES                        *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR     FECHA              DESCRIPCION              *
//* ----------- --------  -------  ------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO     : PLF52P60                                                *
//* PROGRAMA : IKJEFT01/ZM4ILL03                                       *
//* FUNCION  : GENERA ARCHIVO EN EL QUE SE CONTENGA LA INFORMACION     *
//*            DE LOS CLIENTES ACTIVOS DE LA BANCA PATRIMONIAL AL FINAL*
//*            DEL TRIMESTRE PARA SER TRANSFERIDO A UN SERVIDOR.       *
//*--------------------------------------------------------------------*
//PLF52P60 EXEC PGM=IKJEFT01
//*
//ZMLL03S1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPORT24.CLIENTBP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=146,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF52T60),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLF52P50                                                *
//* PROGRAMA : IKJEFT01/ZM4ILL04                                       *
//* FUNCION  : GENERA ARCHIVO EN EL QUE INFORMA EL NUMERO Y MONTO DE   *
//*            LAS OPERACIONES CORRESPONDIENTES AL MERCADO DE CAPITALES*
//*            DE LA BANCA PATRIMONIAL AL FINAL DEL TRIMESTRE PARA SER *
//*            TRANSFERIDO A UN SERVIDOR.                              *
//*--------------------------------------------------------------------*
//PLF52P50 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLL04S1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPORT24.TIPMONBP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=46,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//ZMLL04S2 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPORT24.TIPREGBP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=51,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//ZMLL04S3 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPORT24.OPECAPBP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=46,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF52T50),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLF52P40                                                *
//* PROGRAMA : IKJEFT01/ZLF52T40                                       *
//* FUNCION  : GENERA ARCHIVO EN EL QUE INFORMA EL NUMERO Y MONTO DE   *
//*            LAS OPERACIONES CORRESPONDIENTES SOCIEDADES DE INVERSION*
//*            DE LA BANCA PATRIMONIAL AL FINAL DEL TRIMESTRE PARA SER *
//*            TRANSFERIDO A UN SERVIDOR.                              *
//*--------------------------------------------------------------------*
//PLF52P40 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLL05S1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPORT24.TIPMONBP,
//            DISP=MOD
//*
//ZMLL05S2 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPORT24.TIPREGBP,
//            DISP=MOD
//*
//ZMLL05S3 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPORT24.OPESOCBP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=46,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF52T40),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLF52P30                                                *
//* PROGRAMA : IKJEFT01/ZM4ILL06                                       *
//* FUNCION  : GENERA ARCHIVO EN EL QUE INFORMA EL NUMERO Y MONTO DE   *
//*            LAS OPERACIONES CORRESPONDIENTES A DIRECTOS DE LA BANCA *
//*            PATRIMONIAL AL FINAL DEL TRIMESTRE PARA SER TRANSFERIDO *
//*            A UN SERVIDOR.                                          *
//*--------------------------------------------------------------------*
//PLF52P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLL06S1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPORT24.TIPMONBP,
//            DISP=MOD
//*
//ZMLL06S2 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPORT24.TIPREGBP,
//            DISP=MOD
//*
//ZMLL06S3 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPORT24.OPEDIRBP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=46,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF52T30),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLF52P20                                                *
//* PROGRAMA : IKJEFT01/ZM4ILL07                                       *
//* FUNCION  : GENERA ARCHIVO EN EL QUE INFORMA EL NUMERO Y MONTO DE   *
//*            LAS OPERACIONES CORRESPONDIENTES A REPORTOS DE LA BANCA *
//*            PATRIMONIAL AL FINAL DEL TRIMESTRE PARA SER TRANSFERIDO *
//*            A UN SERVIDOR.                                          *
//*--------------------------------------------------------------------*
//PLF52P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLL07S1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPORT24.TIPMONBP,
//            DISP=MOD
//*
//ZMLL07S2 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPORT24.TIPREGBP,
//            DISP=MOD
//*
//ZMLL07S3 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPORT24.OPEREPBP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=46,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF52T20),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLF52P10                                                *
//* PROGRAMA : IKJEFT01/ZM4ILL17                                       *
//* FUNCION  : GENERA ARCHIVO EN EL QUE CONTENGA LA INFORMACION        *
//*            REFERENTE A LOS CLIENTES INACTIVOS DE CASA DE BOLSA AL  *
//*            FINAL DEL TRIMESTRE PARA SER TRANSFERIDO A UN SERVIDOR. *
//*--------------------------------------------------------------------*
//PLF52P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLL17S1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPORT24.CLIENBCB,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=16,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF52T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                  FIN DE PROCESO ZMLFPD52                           *
//*--------------------------------------------------------------------*
