//ZMHFPZ56 PROC
//*
//**********************************************************************
//*PASO        : ZMPD5610                                              *
//*PROGRAMA    : ZM4CFI56                                              *
//*DESCRIPCION : COMPROBANTE DE INVERSION DE PLAZOS (BATCH)            *
//*REALIZO     : FABRICA DE SOFTWARE BBVA BANCOMER (XM09441)           *
//*FECHA       : 17/NOVIEMBRE/2010.                                    *
//**********************************************************************
//ZMPZ5605 EXEC PGM=IKJEFT01
//ZMHFIENT DD DSN=MXC&AMB..ZM.FIX.EBMC.ZMLCFI56,DISP=SHR
//ZMHFISAL DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPZ5601),DISP=SHR
//*
