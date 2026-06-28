//ZMLLPZ07 PROC                                                         00040000
//********************************************************************* 00040000
//*   OBJETIVO: GENERAR REPORTE DE ISR PF Y PM                          00050000
//*   AREA    : MERCADO DE DINERO                                       00050000
//*   CUALQUIER ASUNTO RELACIONADO CON ESTE PROC COMUNICARSE A LA 3672  00050000
//**********************************************************************00003000
//*        MERCADO DE DINERO:    REPORTE DE I.S.R     BANCO             00060000
//********************************************************************* 00060000
//*
//PLL07P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//ZMLM55A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE07,DISP=SHR
//ZMLM55R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00240000
//*
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD SYSOUT=*                                                  00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL07T02),DISP=SHR                   00300000
//*                                                                     00310000
