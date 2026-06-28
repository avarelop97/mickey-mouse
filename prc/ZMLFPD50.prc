//ZMLFPD50 PROC
//****-*****************************************************************
//*DSN=ZIVA.ZME.CONTROL                                                *
//* SISTEMA: ZM(CASA DE BOLSA, MERCADO DE DINERO)                      *
//*                                                                    *
//* PROCESO: ZMLFPD50                                                  *
//*                                                                    *
//* OBJETIVO : GENERAR UN ARCHIVO EN EL QUE SE CONTENGA LA INFORMACION *
//*            REFERENTE A LOS BONOS DE LOS FONDOS DE PENSIONES Y LA   *
//*            POSICION PASIVA BANCOMER                                *
//*                                                                    *
//* REALIZO  : FSW-TECNOCOM                                            *
//*                                                                    *
//* FECHA    : OCTUBRE DEL 2012                                        *
//**********************************************************************
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PLF50P50                                              *
//* UTILERIA   : IKJEFT01                                              *
//* OBJETIVO   : GENERACION DE UN REPORTE CON LA INFORMACION REFERENTE *
//*              REFERENTE A LOS BONOS DE LOS FONDOS DE PENSIONES PARA *
//*              PARA ENVIARSE VIA TANTIA                              *
//*--------------------------------------------------------------------*
//PLF50P50 EXEC PGM=IKJEFT01
//*
//ZMLIPD01 DD DSN=MXC&AMB..ZM.FIX.E&EMP..MUV.INTERFAZ.PENSION,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,05),RLSE),
//            DCB=(DSORG=PS,LRECL=328,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//ZMLIPD02 DD DSN=MXC&AMB..ZM.FIX.E&EMP..INTERFAZ.CPENSION,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,05),RLSE),
//            DCB=(DSORG=PS,LRECL=31,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF50T20),DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : PLF50P40                                              *
//* UTILERIA   : IKJEFT01                                              *
//* OBJETIVO   : GENERACION DE UN REPORTE CON LA INFORMACION REFERENTE *
//*              A LA POSICION PASIVA BANCOMER PARA ENVIARSE VIA TANTIA*
//*--------------------------------------------------------------------*
//PLF50P40 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLIPD03 DD DSN=MXC&AMB..ZM.FIX.E&EMP..INTERFAZ.PASIVA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,05),RLSE),
//            DCB=(DSORG=PS,LRECL=328,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//ZMLIPD04 DD DSN=MXC&AMB..ZM.FIX.E&EMP..INTERFAZ.CPASIVA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,05),RLSE),
//            DCB=(DSORG=PS,LRECL=31,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF50T10),DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//*        PASO:  PLF50P30                                             *
//*    PROGRAMA:  ICEMAN                                               *
//* DESCRIPCION: JUNTA EL ARCHIVO MUV DE PENSIONES + EL ARCHIVO FIAM   *
//*              TRANSFERIDO DEL SERVIDOR PUBLICO                      *
//*               RUTA: \\150.100.180.41\public\SOCINV\FondosAM_COAPO\ *
//*       ARCHIVO DISTRIBUIDO: FondosAM_pension.txt                    *
//*       ARCHIVO HOST: 'MXC&AMB..ZM.FIX.E&EMP..FIAM.INTERFAZ.PENSION' *
//**********************************************************************
//PLF50P30 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.E&EMP..MUV.INTERFAZ.PENSION,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.E&EMP..FIAM.INTERFAZ.PENSION,DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.E&EMP..INTERFAZ.PENSION,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,05),RLSE),
//            DCB=(DSORG=PS,LRECL=328,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF50T05),DISP=SHR
//*
//**********************************************************************
//*                        == ICEGENER ==                              *
//* PASO        : PLF50P20                                             *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO VACIO:                                   *
//*                MXC&AMB..ZM.FIX.E&EMP..FIAM.INTERFAZ.VACIO          *
//*            --- ESTE ARCHIVO SE REQUIERE QUE EXISTA VACIO ---       *
//**********************************************************************
//PLF50P20 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=NULLFILE,UNIT=3390,
//            DCB=(RECFM=FB,LRECL=328)
//SYSUT2   DD DSN=MXC&AMB..ZM.FIX.E&EMP..FIAM.INTERFAZ.VACIO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,05),RLSE),
//            DCB=(DSORG=PS,LRECL=328,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*        PASO:  PLF50P10                                             *
//*    PROGRAMA:  ICEMAN                                               *
//* DESCRIPCION: INSERTA UN REGISTRO CON LA LEYENDA:                   *
//*              '********** ARCHIVO PROCESADO **********'             *
//*      ARCHIVO HOST: 'MXC&AMB..ZM.FIX.E&EMP..FIAM.INTERFAZ.PENSPROC' *
//**********************************************************************
//PLF50P10 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.E&EMP..FIAM.INTERFAZ.VACIO,DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.E&EMP..FIAM.INTERFAZ.PENSPROC,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,05),RLSE),
//            DCB=(DSORG=PS,LRECL=328,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF50T00),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PLF50P00                                              *
//* UTILERIA   : AKJEFT01                                              *
//* OBJETIVO   : ADICIONAR CONDICION EN PU BCLFND50_OK                 *
//*                                                                    *
//*--------------------------------------------------------------------*
//PLF50P00 EXEC  PGM=IOACND,PARM='ADD COND BCLFND50_OK WDATE',
//             COND=(4,LT)
//       INCLUDE MEMBER=IOASET
//       INCLUDE MEMBER=IOAENV
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
//**********************************************************************
//*                         TERMINA ZMLFPD50
//**********************************************************************
