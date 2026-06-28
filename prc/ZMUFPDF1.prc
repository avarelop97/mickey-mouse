//ZMUFPDF1 PROC
//**********************************************************************
//* NOMBRE     : ZMUFPDF1                                              *
//* APLICACION : ZM                                                    *
//* FECHA      : 04/11/2011                                            *
//* CREADOR    : CAPGEMINI                                             *
//* DESCRIPCION: PROCESO QUE SE ENCARGA DE EMITIR ARCHIVO PLANO CON    *
//*              CUENTAS DE FIDEICOMISO TESTAMENTARIA                  *
//**********************************************************************
//*             L O G  D E  M O D I F I C A C I O N E S                *
//**********************************************************************
//*    MARCA      AUTOR    FECHA               DESCRIPCION             *
//* ----------- --------- ------- ------------------------------------ *
//* FS-X.X.X-XX XXXXXXXXX XXXXXXX XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//**********************************************************************
//* PASO       : PUFF1P01                                              *
//* DESCRIPCION: GENERA ARCHIVO CON CTAS DE FIDEICOMISO TESTAMENTARIA  *
//* PROGRAMA   : ZM4DUCFT                                              *
//**********************************************************************
//PUFF1P01 EXEC PGM=IKJEFT01
//ZM4DUS01  DD DSN=MXCP.ZM.FIX.F&FECHA..ZM4DUCFT.FIDTESPE,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(4,2),RLSE),
//             DCB=(RECFM=FB,LRECL=36,BLKSIZE=0,DSORG=PS)
//SYSTSPRT  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//QRLSDB2   DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSTSIN   DD DSN=ZIVA.ZME.CONTROL(ZUFF1T01),DISP=SHR
//*
