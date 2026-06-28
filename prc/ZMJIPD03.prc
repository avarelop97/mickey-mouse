//ZMJIPD03 PROC
//**********************************************************************
//*    G R U P O   F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBJICD03                                         *
//*                   FIN DE DIA DEL SIVA.                             *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LOS PROCESOS DE BAJAS AUTOMATICAS       *
//*                   MENSUALES Y CARGOS VARIOS DEL MODULO DE          *
//*                   PROCESO ESTADISTICO PARTE II                     *
//*                                                               OSCT *
//**********************************************************************
//PJI03P05 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD03,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//**********************************************************************
//*                         -- VOBE45M --                              *
//*                         -- ZM4MGE45 --                             *
//*  OBJETIVO :   APLICACION DE INDICATIVOS PARA LOS CARGOS VARIOS     *
//*               DEL AREA DE VALORES                                  *
//*  ACTUALIZA :                                                       *
//*  PROCESO : CARGOS VARIOS (VALORES)
//*                                                                    *
//*  PASO REINICIABLE POR RESTART                *** VALORES           *
//**********************************************************************
//PJI03P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMGE45A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD03,
//         DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI03T04),DISP=SHR
//**********************************************************************
//*                         -- VOBE45M --                              *
//*                         -- ZM4MGE45 --                             *
//*  OBJETIVO :   APLICACION DE INDICATIVOS PARA LOS CARGOS VARIOS     *
//*               DEL AREA DE TESORERIA                                *
//*                                                                    *
//*  PROCESO : CARGOS VARIOS  (TESORERIA)                              *
//*                                                                    *
//*  PASO REINICIABLE POR RESTART                  ***  TESORERIA      *
//**********************************************************************
//PJI03P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMGE45A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD03,
//         DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI03T03),DISP=SHR
//**********************************************************************
//*                         -- VOBF00M --                              *
//*                         -- ZM4MGF00 --                             *
//*  OBJETIVO: VENTA DE LA SOCIEDAD DE INVERSION PARA PODER CUBRIR     *
//*           EL MONTO DE CARGOS VARIOS                                *
//*                                                                    *
//* ESTE PASO SE COMENTARIZO A SOLICITUD DE LUPITA ALDANA PORQUE EL    *
//* PROGRAMA BUENO ES EL SIGUIENTE PASO SE DEJA EN CASO DE CONTINGENCIA*
//*                                                                    *
//*  PASO REINICIABLE POR RESTART                                      *
//**********************************************************************
//PJI03P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMGF00A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD03,
//         DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI03T02),DISP=SHR
//**********************************************************************
//*                          --- VOBF27M ---                           *
//*                          --- ZM4MGF27 ---                          *
//* OBJETIVO : PASAR INF. DE TABLAS OPERASI,OPERATE A OPERA            *
//*            (ACTUALIZA OPERA )                                      *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                 *** TESORERIA         *
//**********************************************************************
//PJI03P01 EXEC PGM=IKJEFT01,COND=(0,NE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMGF27A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJIPD03,
//         DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI03T01),DISP=SHR
//**********************************************************************
//*               FIN DEL PROCEDIMIENTO ZMJIPD03                       *
//**********************************************************************
