//ZMJEPA04 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM FATCA.                                           *
//* PROCESO      : ZMJEPA04.                                           *
//* OBJETIVO     : AGREGA CONDICION PARA AVISAR A PU QUE YA SE         *
//*                GENERARON LOS ARCHIVOS DE REPORTING FACTA.          *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 21 DE JULIO DE 2015.                                *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-01 XMA3149   07SEP18 SE CAMBIA CONDICION PARA QUE SE      *
//*                               GENERE CON ODATE                     *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PJA04P01.                                             *
//* UTILERIA   : IOACND.                                               *
//* OBJETIVO   : AGREGAR CONDICION PARA PU                             *
//*--------------------------------------------------------------------*
//*PJA04P01 EXEC PGM=IOACND,PARM='ADD COND CBJEPA04_OK    WDATE'
//PJA04P01 EXEC PGM=IOACND,PARM='ADD COND CBJEPA04_OK    &FECH1'
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
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO CBJEPA04                        *
//*--------------------------------------------------------------------*
