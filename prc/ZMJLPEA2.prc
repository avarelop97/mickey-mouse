//ZMJLPEA2 PROC                                                         00000100
//********************************************************************* 00000200
//*                     C A S A   D E   B O L S A                     * 00000300
//*                     =========================                     * 00000400
//*                    << MERCADO DE CAPITALES >>                     * 00000500
//*                                                                   * 00000600
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL  * 00000700
//*                                                                   * 00000800
//*   JCL              :  CBJLNEA2                                    * 00000900
//*                                                                   * 00001000
//*   CADENA           :  OPCION ZB7 -> JCL SIVAXAP9 -> PRC ZMJLPEA9  * 00001100
//*                                                                   * 00001200
//*   OBJETIVO         :  DESCARGA DE LA TABLA DE PRECIOS PARA ENVIO  * 00001300
//*                       A DPIGO,  DIFO Y DCALOG                     * 00001400
//*                                                                   * 00001500
//*   CORRE DESPUES DE :  SIVAXAP9                                    * 00001600
//*                                                                   * 00001700
//*   CORRE ANTES   DE :  NINGUNO                                     * 00001800
//*                                                                   * 00001900
//*   PERIODICIDAD     :  A PETICION DEL USUARIO                      * 00002000
//*                                                                   * 00002100
//*   ELABORADO POR    :  EVERIS                                      * 00002200
//*                                                                   * 00002300
//*   FECHA            :  NOVIEMBRE/ 2007                             * 00002400
//*                                                                   * 00002500
//********************************************************************* 00002600
//*  PASO: 01    DESCARGA DE LA TABLA DE PRECIOS                      * 00002700
//*>>>>>--------------------------------------------------------------* 00002900
//**IMFA01122011                                                      * 00002900
//*  SE MODIFICA LONGITUD DE ARCHIVOS DE PRECIOS DE 85 A 82           * 00002900
//*<<<<<--------------------------------------------------------------* 00002900
//********************************************************************* 00003200
//PJLA2P02 EXEC PGM=IKJEFT01                                            00003300
//*                                                                     00003500
//ZMJA08S1 DD DSN=MXCP.ZM.FIX.SIN.PRECIO.VH.D&FECHA,                    00004000
//            DISP=(NEW,CATLG,DELETE),                                  00004100
//            DCB=(LRECL=085,RECFM=FB,BLKSIZE=0,DSORG=PS),              00004110
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00004300
//ZMJA08S2 DD DSN=MXCP.ZM.FIX.SIN.PRECIO.VN.D&FECHA,                    00004500
//            DISP=(NEW,CATLG,DELETE),                                  00004600
//            DCB=(LRECL=085,RECFM=FB,BLKSIZE=0,DSORG=PS),              00004610
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00004620
//ZMJA08S3 DD DSN=MXCP.ZM.FIX.SIN.PRECIO.DCLG.D&FECHA,                  00005000
//            DISP=(NEW,CATLG,DELETE),                                  00005100
//            DCB=(LRECL=300,RECFM=FB,BLKSIZE=0,DSORG=PS),              00005110
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00005300
//ZMJA08S4 DD DSN=MXCP.ZM.FIX.SIN.PRECIO.BPIG.D&FECHA,                  00005400
//            DISP=(NEW,CATLG,DELETE),                                  00005410
//            DCB=(LRECL=045,RECFM=FB,BLKSIZE=0,DSORG=PS),              00005420
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00005430
//SYSTSPRT DD SYSOUT=*                                                  00005500
//SYSPRINT DD SYSOUT=*                                                  00005600
//SYSOUT   DD SYSOUT=*                                                  00005700
//SYSDBOUT DD SYSOUT=*                                                  00005800
//SYSABOUT DD SYSOUT=*                                                  00005900
//SYSUDUMP DD SYSOUT=*                                                  00006000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLA2T02),DISP=SHR                   00006100
//********************************************************************* 00002600
//*  PASO: 02    SORT PARA LA UNION DE ARCHIVOS DE DIFO               * 00002700
//*                                                                   * 00002900
//********************************************************************* 00003200
//PJLA2P01 EXEC PGM=ICEMAN,COND=(4,LT)                                  00003300
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.SIN.PRECIO.VN.D&FECHA,DISP=SHR            00003500
//         DD DSN=MXCP.ZM.FIX.SIN.PRECIO.VH.D&FECHA,DISP=SHR            00003500
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.SIN.PRECIO.DIFO.D&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=085,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//*
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLA2TA1),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROL-M, INDICANDO QUE YA      *
//*            TERMINO DE GENERARSE EL ARCHIVO DE PRECIO PARA          *
//*            QUE EL AREA DE DIFO TOME EL ARCHIVO Y CARGUE LOS PRECIOS*
//*            EN SUS TABLAS                                           *
//* PROGRAMA: IOACND                                                   *
//**********************************************************************
//PJLA2P0A EXEC  PGM=IOACND,COND=(4,LT),
//         PARM='ADD COND CBJLNEA2_OK    WDATE'
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
