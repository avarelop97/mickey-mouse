//ZMJLP925 PROC
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                        >>>>  TESORERIA   <<<<                      *
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMJLP925                                            *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  IMPRESION DE CONCENTRADO DE BANCOS (OPCION: 585)    *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*                                                                    *00003000
//**********************************************************************00003200
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO    *00003300
//**********************************************************************00003400
//PJL08P03 EXEC PGM=ZM3DG001,                                           00004101
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00004201
//*                                                                     00005400
//SYSTSPRT DD SYSOUT=*                                                  00004800
//SYSPRINT DD SYSOUT=*                                                  00004900
//SYSOUT   DD SYSOUT=*                                                  00005000
//SYSDBOUT DD SYSOUT=*                                                  00005100
//SYSABOUT DD DUMMY                                                     00005200
//SYSUDUMP DD DUMMY                                                     00005300
//*                                                                     00005400
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLP925,               00005701
//            DISP=(NEW,CATLG,DELETE),                                  00005800
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00006000
//            UNIT=3390,                                                00006101
//            SPACE=(CYL,(2,1),RLSE)                                    00006201
//*                                                                     00006300
//**********************************************************************
//*                    -- ZM4DJ744  --                                 *
//*                 CONCENTRADO DE BANCOS                              *
//**********************************************************************
//PJL08P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*                                                                     00006300
//*                                                                     00006300
//ZMJ744A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLP925,
//            DISP=SHR
//*                                                                     00006300
//*ZMJ744R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*                                                                     00006300
//ZMJ744R2 DD DCB=(DSORG=PS,LRECL=147,BLKSIZE=0,RECFM=FB),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),UNIT=3390,
//            DSN=MXCP.ZM.FIX.TES.SIVA.SIVA01
//*                                                                     00006300
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL08925),DISP=SHR
//*
//
//**********************************************************************
//*        TERMINA PROCESO ZMJLP925 SIVA MULTIEMPRESA                  *
//**********************************************************************
