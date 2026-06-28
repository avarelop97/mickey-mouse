//ZMHCPD32 PROC
//**********************************************************************00009500
//* SISTEMA        :  MUV                                              *00010006
//* PROCESO        :  ZMHCPD32                                         *00010006
//*                                                                    *00010006
//* OBJETIVO       :  GENERAR LAS INTERFACES DE CUENTAS VIGENTES Y NO  *00010006
//*                   VIGENTES MUV HACIA EL APLICATIVO GL.             *00010006
//* CORRE             DIARIO                                           *00010006
//* ANTES DE       :  EN HORARIO DE LAS 15:55                          *00010006
//* DESPUES DE     :  EN HORARIO DE LAS 15:55                          *00010006
//* REALIZO        :  IRMA JULIA CAMACHO NUNEZ                         *00010006
//* FECHA          :  NOVIEMBRE DE 2009                                *00010006
//* OBSERVACION    :                                                   *00010006
//********************************************************************* 00010006
//*                EJECUCION DEL PROGRAMA:  ZM4CT0AL                  * 00370006
//*                CUENTAS VIGENTES AL CIERRE DE DIA                  *
//*********************************************************************
//PHC32P02 EXEC PGM=IKJEFT01                                            00400006
//*
//UTS00PR2 DD DSN=MXCP.ZM.FIX.CUENTAS.SVIGENTE,                         00450006
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=75,RECFM=FB,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC32T02),DISP=SHR                   00530006
//*
//********************************************************************* 00010006
//*                EJECUCION DEL PROGRAMA:  ZM4CT0BJ                  * 00370006
//*              CUENTAS NO VIGENTES AL CIERRE DE DIA                 *
//*********************************************************************
//PHC32P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00400006
//*
//UTS00PR2 DD DSN=MXCP.ZM.FIX.CUENTAS.NVIGENTE,                         00450006
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=75,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE)
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC32T01),DISP=SHR                   00530006
//*
//**********************************************************************00900006
//*                    F I N   Z M H C P D 3 2                         *00900006
//**********************************************************************00900006
