//ZMJPNZ25 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  SOCIEDADES DE INVERSION  <<<<              *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  CBJPCZ25                                            *
//*                                                                    *
//*   PROCEDIM. :  ZMJPNZ25                                            *
//*                                                                    *
//*   OBJETIVO  :  CAMBIA CR A CUENTAS CON CUSTODIA                    *
//*                                                                    *
//*   CORRE ANTES DE  : A PETICION DEL USUARIO                         *
//*                                                                    *
//*   CORRE DESPUES DE: A PETICION DEL USUARIO                         *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL                                      *
//*                                                                    *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA         DESCRIPCION                   *
//* ----------- --------- -------  ------------------------------------*
//*   @XXXXXX    XXXXXXX  DDMMMAA  ................................... *
//**********************************************************************
//*
//**********************************************************************
//*                    -- ICEMAN    --                                 *
//*  GENERA UNA COPIA DEL ARCHIVO DE INTERFAZ MIS.                     *
//**********************************************************************
//PJP25090 EXEC PGM=ICEMAN
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SORTIN   DD DSN=MBVP.PX.FIX.INTERFAZ.MIS,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBJPCZ25.INTERFAZ.MIS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,80),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=1050,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP25090),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4CINFZ  --                                 *
//* GENERA LA CONSULTA A LA TABLA ZMDT800, PARA AQUELLAS CUENTAS QUE   *
//* TENGAN CUSTODIA, SEA ISUCCASA = CTD, Y SEA EVENTO 13A.             *
//**********************************************************************
//PJP25085 EXEC PGM=IKJEFT01,COND=(4,LT)
//E1DQENT1 DD DSN=MXCP.ZM.FIX.CBJPCZ25.INTERFAZ.MIS,DISP=SHR
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.CBJPCZ25.INTERFAZ.MIS.CR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(80,40),RLSE),
//            DCB=(DSORG=PS,LRECL=1050,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP25085),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJPNZ25 SIVA MULTIEMPRESA                  *
//**********************************************************************
