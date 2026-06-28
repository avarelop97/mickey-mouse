//ZMJLPZ08 PROC FECHA=
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                        >>>>  TESORERIA   <<<<                      *
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMJLPZ08                                            *00003000
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
//**********************************************************************
//*                    -- ZM4DJ744  --                                 *
//*                 CONCENTRADO DE BANCOS                              *
//**********************************************************************
//PJL08P02 EXEC PGM=IKJEFT01
//*                                                                     00006300
//*                                                                     00006300
//ZMJ744A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE08,
//            DISP=SHR
//*                                                                     00006300
//ZMJ744R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*                                                                     00006300
//ZMJ744R2 DD DSN=MXCP.ZM.FIX.TES.EMP.S.CONBAN.F&FECHA,
//            DCB=(DSORG=PS,LRECL=147,BLKSIZE=0,RECFM=FB),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),UNIT=3390
//*                                                                     00006300
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL08T01),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJLPZ08 SIVA MULTIEMPRESA                  *
//**********************************************************************
