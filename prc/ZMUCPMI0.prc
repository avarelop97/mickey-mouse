//ZMUCPMI0 PROC
//**********************************************************************
//* PROCESO        : ZMUCPMI0                                          *
//* DESCRIPCION    : PROCESO DE CARGA INICIAL DE MONTOS MINIMOS BATCH  *
//* REALIZO        : CAPGEMINI                                         *
//* FECHA          : 07 DE MARZO DE 2012                               *
//**********************************************************************
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA              DESCRIPCION              *
//* ----------- --------- ------- ------------------------------------ *
//* FS-9.9.9-99 CAPGEMINI DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*            *         *       *                                     *
//**********************************************************************
//* PASO     : PUR10P06                                                *
//* OBJETIVO : PASO PARA GENERAR UN ARCHIVO DE RESPALDO CON LA         *
//*            INFORMACION VIGENTE EN LA TABLA  DE MONTOS MINIMOS EN   *
//*            ESE MOMENTO.                                            *
//* PROGRAMA : ZM4EUG03                                                *
//**********************************************************************
//PUR10P06 EXEC PGM=IKJEFT01
//*
//SALIDA1  DD DSN=MXCP.ZM.FIX.TES.UNLOAD.ZMDT869,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(5,5),RLSE),
//            DCB=(RECFM=FB,LRECL=127,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZURI0T05),DISP=SHR
//**********************************************************************
//* PASO     : PUR10P05                                                *
//* OBJETIVO : PASO PARA BORRAR ARCHIVOS QUE SE VAN A GENERAR EN EL    *
//*            SIGUIENTE PASO.                                         *
//* PROGRAMA : IDCAMS                                                  *
//**********************************************************************
//PUR10P05 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//SYSIN    DD DUMMY
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PUR10P04),DISP=SHR
//**********************************************************************
//* PASO     : PUR10P04                                                *
//* OBJETIVO : PASO PARA PROCESAR EL ARCHIVO DE MONTOS MINIMOS         *
//*            VALIDANDO QUE LOS CAMPOS CONTENGAN INFORMACION Y CON    *
//*            LOS REGISTROS QUE ESTEN CORRECTOS SE UTILIZAN PARA      *
//*            POBLAR LA TABLA ZMDT869.                                *
//* PROGRAMA : ZM4EUG01                                                *
//**********************************************************************
//PUR10P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.TES.MONTOS.MINIMOS,
//            DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.FIX.TES.CARGA.MINIMOS.OK,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,5),RLSE),
//            DCB=(RECFM=FB,LRECL=107,BLKSIZE=0,DSORG=PS)
//*
//SALIDA2  DD DSN=MXCP.ZM.FIX.TES.CARGA.MINIMOS.ERR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,5),RLSE),
//            DCB=(RECFM=FB,LRECL=123,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZURI0T04),DISP=SHR
//SYSTSIN  DD DUMMY
//*
//**********************************************************************
//* PASO     : PUR10P03                                                *
//* OBJETIVO: VERIFICA QUE EL FICHERO MINIMOS.ERR TENGA INFORMACION    *
//* PROGRAMA: IDCAMS / UTILITY                                         *
//**********************************************************************
//PUR10P03 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//INPUT1   DD DSN=MXCP.ZM.FIX.TES.CARGA.MINIMOS.ERR,
//            DISP=SHR
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF04T46),DISP=SHR
//*
//**********************************************************************
//* PASO     : PUR10P02                                                *
//* OBJETIVO: SI FICHERO MINIMOS.ERR ESTA VACIO EFECTUA TRANSFER DEL   *
//*           FICHERO MINIMOS.OK A SERVIDOR                            *
//* PROGRAMA: IDCAMS / UTILITY                                         *
//**********************************************************************
//PUR10P02 EXEC PGM=ICEMAN,COND=(0,EQ,PUR10P03)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.TES.CARGA.MINIMOS.OK,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CARGA.MINIMOS.TRANSF,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,5),RLSE),
//            DCB=(RECFM=FB,LRECL=123,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF04T45),DISP=SHR
//**********************************************************************
//* PASO     : PUR10P01                                                *
//* OBJETIVO: SI FICHERO MINIMOS.ERR TIENE INFORMACION EFECTUA TRANSFER*
//*           DEL FICHERO MINIMOS.ERR AL SERVIDOR                      *
//* PROGRAMA: IDCAMS / UTILITY                                         *
//**********************************************************************
//PUR10P01 EXEC PGM=IDCAMS,COND=(0,NE,PUR10P03)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.TES.CARGA.MINIMOS.ERR,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.CARGA.MINIMOS.TRANSF,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1,5),RLSE),
//            DCB=(RECFM=FB,LRECL=123,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T47),DISP=SHR
//*
//**********************************************************************
//*    FINAL DEL PROCEDIMIENTO                                         *
//**********************************************************************
