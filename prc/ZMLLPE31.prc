//ZMLLPE31 PROC                                                         00001000
//*                                                                     00002000
//**********************************************************************
//* SISTEMA  : ZM                                                      *
//* PROCESO  : ZMLLPE31                                                *
//* OBJETIVO : EL OBJETIVO DE ESTE PROCESO ES LIBERAR LA CADENA        *
//*            GENERACIóN DE INTERFAZ DIFO.                            *
//*                                                                    *
//* AUTHOR   : FABRICA DE ACCENTURE                                    *
//* FECHA    : 11 NOVIEMBRE DEL 2011                                   *
//*                                                                    *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*            *         *       *                                     *
//**********************************************************************
//**********************************************************************
//* PASO        : PLC31P02                                             *
//* PROGRAMA    : ZM3DG001                                             *
//* DESCRIPCION : RECIBE LOS PARAMETROS ENVIADOS DE LINEA              *
//*               Y LOS GRABA EN  ARCHIVO                              *
//**********************************************************************
//*                                                                     00310000
//PLC31P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZXLLPC31,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************02560000
//*                         -- CTMCND --                               *02570000
//* OBJETIVO: ACTIVA CONDICION EN CONTROL-M "BCLLPC31_IN" PARA QUE SE  *02580000
//*           EJECUTE LA CADENA DE CARGA AUTOMATICA DE FACTORES.       *02590000
//*                                                                    *02600000
//* PASO REINICIABLE POR RESTART                                       *02610000
//**********************************************************************02620000
//PLC12P01 EXEC  PGM=CTMCND,
//         PARM='ADD COND BCLLPC31_BCM_SIVA_OK WDATE',COND=(4,LT)
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                 02630000
//PRTDBG   DD   SYSOUT=Z                                                02640000
//SYSPRINT DD   DUMMY                                                   02650000
//SYSUDUMP DD   DUMMY                                                   02660000
//DAPRINT  DD   SYSOUT=Z                                                02670000
//DACNDIN  DD   DDNAME=SYSIN                                            02680000
//*                                                                     02690000
