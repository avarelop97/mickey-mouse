//ZMSFPDA9 PROC                                                         00010006
//**********************************************************************00010006
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *00010006
//* PROCESO        :  BCSFCDA9                                         *00010006
//*                   ACTUALIZACION A ZMDT800                          *00010006
//* CORRE                                                              *00010006
//* ANTES DE       :                                                   *00010006
//* DESPUES DE     :                                                   *00010006
//* REALIZO        :  FSW DGCM.                                        *00010006
//* FECHA          :  AGOSTO 2017.                                     *00010006
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *00010006
//**********************************************************************00010006
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM4DS0A3                                 00370006
//*   ACTUALIZACION DEL CAMPO ZMDT800_ETXTOPER                          00380006
//********************************************************************* 00390006
//ZMPDA990 EXEC PGM=IKJEFT01                                            00400006
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ACT.ETXTOPER.BTRADER,                     00450006
//            DISP=SHR                                                  00460006
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDA990),DISP=SHR                   00530006
//*
//**********************************************************************00900006
//*                    F I N   Z M S F P D A 9                         *00900006
//**********************************************************************00900006
