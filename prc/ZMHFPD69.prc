//**********************************************************************00780600
//ZMHFPD69 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  MUV MODULO UNICO DE VALORES                      *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMHFPD69                                         *00060002
//*                                                                    *00070002
//*                                                                    *00080002
//* OBJETIVO       :  EXTRAE COMISIONES DE LA TABLA DE MOVIMIENTOS     *00090002
//*                   DE ESTADOS DE CUENTA                             *00100002
//*                                                                    *00100002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  PROCESO DE VACIADO A LAS TABLAS 93'S DE EDC      *00140002
//*                                                                    *00150002
//* REALIZACION    :  INDRA JUNIO 2021                                 *00160002
//*                                                                    *00170002
//* OBSERVACION    :  ESTE JOB CORRE DESPUES DE QUE YA ESTA            *00180002
//*                   GENERADA LA TABLA ZMDT933                        *00180002
//**********************************************************************00240002
//**********************************************************************
//*        L O G    D E   M O D I F I C A C I O N E S                *
//*--------------------------------------------------------------------*
//*  MARCA    AUTOR     FECHA    DESCRIPCION                         *
//*-------- ----------- -------- --------------------------------------*
//*@SDA35666 IEF-INDRA  AGO-2021 PASO PHF69P80                         *
//*                              SE INCLUYE EN LOS DATOS DE SALIDA     *
//*                              LA CUENTA BPIGO SE INCREMENTA LONG.   *
//*                              DEL ARCHIVO DE SALIDA                 *
//*                              MXCP.ZM.FIX.PRELL.TIMBRADO.F&FECHA    *
//*                              A 135                                 *
//*                                                                    *
//*                              PASO PHF69P70                         *
//*                              SE INCLUYE EN LOS DATOS DE SALIDA     *
//*                              DE TIMBRADO LA CUENTA MUV Y           *
//*                              EL FOLIO FISCAL,SE AJUSTA     LA      *
//*                              LONGITUD DEL ARCHIVO                  *
//*                              MXCP.ZM.FIX.PRELL.MATCH.PREVIO        *
//*                              A 501                                 *
//*                                                                    *
//*                     OCT-2021 PASO PHF69P55,PHF69P50                *
//*                              SE INCLUYEN  DOS CAMPOS EXTRA EN EL   *
//*                              ARCHIVO DE SALIDA  CAMBIA LONGITUD    *
//*                              DE 53 A 66 POSICIONES                 *
//*                                                                    *
//*                     OCT-2021 PASO PHF69P45 PHF69P40                *
//*                              SE INCLUYEN  DOS CAMPOS EXTRA EN EL   *
//*                              ARCHIVO DE SALIDA  CAMBIA LONGITUD    *
//*                              DE 581 A 594 POSICIONES               *
//*                                                                    *
//*                     NOV-2021 PASO                                  *
//*                              SE INCLUYEN  LA FUNCIONALIDAD DE      *
//*                              OBTENCION DE ERROR DE TIMBRADO        *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//*                                                                    *00240002
//**********************************************************************00779900
//*            ZM4PLL02                                                *00780000
//* OBJETIVO : EXTRAE MOVIMIENTOS DE COMISIONES DE LA TABLA            *00780200
//*            DE MOVIMIENTOS DE ESTADOS DE CUENTA                     *
//*                                                                    *00780300
//**********************************************************************00780600
//PHF69P80 EXEC PGM=IKJEFT01
//PI601765 DD  DUMMY
//*
//S1DLL02  DD  DSN=MXCP.ZM.FIX.PRELL.TIMBRADO.F&FECHA,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*@SDA35666-I
//*            DCB=(DSORG=PS,LRECL=127,RECFM=FB,BLKSIZE=0),
//             DCB=(DSORG=PS,LRECL=135,RECFM=FB,BLKSIZE=0),
//*@SDA35666-F
//             SPACE=(CYL,(500,250),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF69T80),DISP=SHR
//*
//**********************************************************************
//* SORT/ OMIT                                                         *
//* OBJETIVO : ELIMINA REGISTROS QUE PERTENECEN A SUCURSAL CUSTODIA    *
//*            YA QUE ESTOS NO SE CONSIDERAN EN LOS EDOSCTA DE BPATRIM *
//**********************************************************************
//PHF69P75 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.GDGD.INTFAZ.ACECMVS(0),DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.INTFAZ.ACECMVS.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE),
//            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF69T75),DISP=SHR
//*
//**********************************************************************00779900
//*            ZM3PLL03                                                *00780000
//* OBJETIVO : REALIZA MATCH ENTRE ARCHIVO DE MOVIMIENTOS ZMDT933      *00780200
//*            Y ARCHIVO DE COMISIONES EXTRAIDOS DE LA CONTABILIDAD    *
//*                                                                    *00780300
//**********************************************************************00780600
//PHF69P70 EXEC PGM=ZM3PLL03,COND=(4,LT)
//PI601765 DD  DUMMY
//*
//ZMLL03A1 DD  DSN=MXCP.ZM.FIX.PRELL.TIMBRADO.F&FECHA,
//             DISP=SHR
//*
//ZMLL03A2 DD  DSN=MXCP.ZM.FIX.INTFAZ.ACECMVS.SORT,
//             DISP=SHR
//*
//S1DLL03  DD  DSN=MXCP.ZM.FIX.PRELL.MATCH.PREVIO,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*@PRELL-I
//*            DCB=(DSORG=PS,LRECL=538,RECFM=FB,BLKSIZE=0),
//             DCB=(DSORG=PS,LRECL=501,RECFM=FB,BLKSIZE=0),
//*@PRELL-F
//             SPACE=(CYL,(500,250),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* SORT/SUM  FIELDS=NONE                                              *
//* OBJETIVO : ELIMINA CUENTAS DUPLICADAS PARA APLICAR MATCH CON       *
//*            ARCHIVO DE SELLOS, ORDENA POR CUENTA BPIGO              *
//**********************************************************************
//PHF69P65 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.PRELL.MATCH.PREVIO,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.PRELL.MATCH.CTOBP.UNICO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=501,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE),
//            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF69T65),DISP=SHR
//*
//**********************************************************************
//* SORT                                                               *
//* OBJETIVO : CONCATENA ARCHIVOS DE SELLOS FISCALES QUE SE            *
//*            RECUPERAN DEL SERVIDOR DE MEDC Y ORDENA POR CUENTA      *
//*            BPIGO                                                   *
//**********************************************************************
//PHF69P60 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.PLL.PATRSI.SELLOS.D&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.PLL.PATRNO.SELLOS.D&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.PLL.PRIVSI.SELLOS.D&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.PLL.PRIVNO.SELLOS.D&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.PLL.UHNSI.SELLOS.D&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.PLL.UHNNO.SELLOS.D&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.PLL.SELLOS.CONCA.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=1563,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE),
//            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF69T60),DISP=SHR
//**********************************************************************00779900
//*            ZM3PLL04                                                *00780000
//* OBJETIVO : REALIZA MATCH PARA VERIFICAR EL SELLADO FISCAL DE       *00780200
//*            LAS CUENTAS PATRIMONIALES ENVIADAS A MEDC               *
//*                                                                    *00780300
//**********************************************************************00780600
//PHF69P55 EXEC PGM=ZM3PLL04,COND=(4,LT)
//PI601765 DD  DUMMY
//*
//ZMLL04A1 DD  DSN=MXCP.ZM.FIX.PRELL.MATCH.CTOBP.UNICO,
//             DISP=SHR
//*
//ZMLL04A2 DD  DSN=MXCP.ZM.FIX.PLL.SELLOS.CONCA.F&FECHA,
//             DISP=SHR
//*
//S1DLL04  DD  DSN=MXCP.ZM.FIX.PLL.RESULT.SELLO,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*@SDA35666-I
//*            DCB=(DSORG=PS,LRECL=053,RECFM=FB,BLKSIZE=0),
//             DCB=(DSORG=PS,LRECL=066,RECFM=FB,BLKSIZE=0),
//*@SDA35666-F
//             SPACE=(CYL,(500,250),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* SORT                                                               *
//* OBJETIVO : ORDENA MXCP.ZM.FIX.PLL.RESULT.SELLO                     *
//*            POR CUENTA BPIGO                                        *
//**********************************************************************
//PHF69P50 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.PLL.RESULT.SELLO,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.PLL.RESULT.SELLO.SORT,
//            DISP=(NEW,CATLG,DELETE),
//*@SDA35666-I
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=053,BLKSIZE=0),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=066,BLKSIZE=0),
//*@SDA35666-F
//            SPACE=(CYL,(500,250),RLSE),
//            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF69T50),DISP=SHR
//*
//**********************************************************************
//* SORT                                                               *
//* OBJETIVO : ORDENA MXCP.ZM.FIX.PRELL.MATCH.PREVIO                   *
//*            POR CUENTA BPIGO                                        *
//**********************************************************************
//PHF69P48 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.PRELL.MATCH.PREVIO,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.PRELL.MATCH.PREVIO.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=501,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE),
//            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF69T48),DISP=SHR
//*NOV-2021-I
//**********************************************************************00779900
//*            ZM3PLL05                                                *00780000
//* OBJETIVO : REALIZA MATCH PARA INCLUIR EN EL ARCHIVO                *00780200
//*            MXCP.ZM.FIX.PRELL.MATCH.PREVIO EL UUID (FOLIO FISCAL)   *
//*                                                                    *00780300
//**********************************************************************00780600
//PHF69P45 EXEC PGM=ZM3PLL05,COND=(4,LT)
//PI601765 DD  DUMMY
//*
//ZMLL05A1 DD  DSN=MXCP.ZM.FIX.PRELL.MATCH.PREVIO.SORT,
//             DISP=SHR
//*
//ZMLL05A2 DD  DSN=MXCP.ZM.FIX.PLL.RESULT.SELLO.SORT,
//             DISP=SHR
//*
//S1DLL05  DD  DSN=MXCP.ZM.FIX.PRELL.MATCH.UUID,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*@SDA35666-I
//*            DCB=(DSORG=PS,LRECL=581,RECFM=FB,BLKSIZE=0),
//*            DCB=(DSORG=PS,LRECL=594,RECFM=FB,BLKSIZE=0),
//             DCB=(DSORG=PS,LRECL=602,RECFM=FB,BLKSIZE=0),
//*@SDA35666-F
//             SPACE=(CYL,(500,250),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* SORT                                                               *
//* OBJETIVO : ORDENA MXCP.ZM.FIX.PRELL.MATCH.UUID                     *
//*            POR CUENTA BPIGO PARA EL MATCH CON ARCHIVO DE ERROR     *
//**********************************************************************
//PHF69P43 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.PRELL.MATCH.UUID,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.PRELL.MATCH.UUID.ERRO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=602,BLKSIZE=0),
//*
//            SPACE=(CYL,(500,250),RLSE),
//            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF69T43),DISP=SHR
//*
//**********************************************************************
//* SORT                                                               *
//* OBJETIVO : CONCATENA ARCHIVOS DE ERRORES DE TIMBRADO               *
//*                                                                    *
//**********************************************************************
//PHF69P38 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REC.PATRSI.LOGERRM.D&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REC.PRIVSI.LOGERRM.D&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REC.UHNSI.LOGERRM.D&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REC.PATRNO.LOGERRM.D&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REC.PRIVNO.LOGERRM.D&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.REC.UHNNO.LOGERRM.D&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ERR.SELLOS.CONCA.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=1500,BLKSIZE=0),
//            SPACE=(CYL,(100,050),RLSE),
//            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF69T38),DISP=SHR
//**********************************************************************00779900
//*            ZM3PLL06                                                *00780000
//* OBJETIVO : UNIFICA LAYOUT VARIABLE ENVIADO POR MEDC                *00780200
//*                                                                    *00780300
//**********************************************************************00780600
//PHF69P36 EXEC PGM=ZM3PLL06,COND=(4,LT)
//PI601765 DD  DUMMY
//*
//ZMLL06A1 DD  DSN=MXCP.ZM.FIX.ERR.SELLOS.CONCA.F&FECHA,
//             DISP=SHR
//*
//S1DLL06  DD  DSN=MXCP.ZM.FIX.PRELL.CONCA.UNIF,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             DCB=(DSORG=PS,LRECL=017,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(100,050),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* SORT                                                               *
//* OBJETIVO : ORDENA MXCP.ZM.FIX.PRELL.CONCA.UNIF                     *
//*            POR CUENTA BPIGO PARA EL MATCH CON ARCHIVO MAESTRO      *
//**********************************************************************
//PHF69P35 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.PRELL.CONCA.UNIF,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.PRELL.CONCA.UNIF.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=017,BLKSIZE=0),
//            SPACE=(CYL,(100,050),RLSE),
//            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF69T35),DISP=SHR
//*
//**********************************************************************00779900
//*            ZM3PLL07                                                *00780000
//* OBJETIVO : REALIZA MATCH PARA INCLUIR EN EL ARCHIVO                *00780200
//*            MXCP.ZM.FIX.PRELL.MATCH.PREVIO EL UUID (FOLIO FISCAL)   *
//*                                                                    *00780300
//**********************************************************************00780600
//PHF69P33 EXEC PGM=ZM3PLL07,COND=(4,LT)
//PI601765 DD  DUMMY
//*
//ZMLL07A1 DD  DSN=MXCP.ZM.FIX.PRELL.MATCH.UUID.ERRO,
//             DISP=SHR
//*
//ZMLL07A2 DD  DSN=MXCP.ZM.FIX.PRELL.CONCA.UNIF.SORT,
//             DISP=SHR
//*
//S1DLL07  DD  DSN=MXCP.ZM.FIX.PRELL.MATCH.UUID2,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             DCB=(DSORG=PS,LRECL=594,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(500,250),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* SORT                                                               *
//* OBJETIVO : ORDENA MXCP.ZM.FIX.PRELL.MATCH.UUID2                    *
//*            POR FOLIO MUV PARA ENTREGA A HA                         *
//**********************************************************************
//PHF69P30 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.PRELL.MATCH.UUID2,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.PRELL.MATCH.UUID.SORT,
//            DISP=(NEW,CATLG,DELETE),
//*@SDA35666-I
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=581,BLKSIZE=0),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=594,BLKSIZE=0),
//*@SDA35666-F
//            SPACE=(CYL,(500,250),RLSE),
//            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF69T40),DISP=SHR
//*NOV-2021-F
//*
//**********************************************************************
//*                SE ADICIONA CONDICION CTL-M ALTAMIRA                *
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROL-M ALTAMIRA PARA QUE      *
//*            EJECUTE EL REPORTE DE CONCILIACION COMISIONES TIMBRADAS *
//*            VS. CONTABILIZADAS                                      *
//* PROGRAMA: IOACND                                                   *
//**********************************************************************
//PHF69P35 EXEC  PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND BCHFND69_OK_PR WDATE'
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
//**********************************************************************00779900
