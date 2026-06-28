//ZMHFPD65 PROC
//**********************************************************************
//* SISTEMA        :  ZM - RIESGO DE LIQUIDEZ                          *
//*                                                                    *
//* PROCESO        :  CBHFND65 - CORRE EN LA MALLA FINDIA              *
//*                   ZMHFPD65                                         *
//*                                                                    *
//* OBJETIVO       :  CARGA LA TABLA ZMDTINT A PARTIR DE CARTERA       *
//*                   Y DEPURA EN ZMDTINT EL DIA 35 MAS ANTIGUO        *
//*                                                                    *
//* PERIODICIDAD   :  DIARIO                                           *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*  MARCA      AUTOR     FECHA  DESCRIPCION                           *
//* ----------- --------- ------ --------------------------------------*
//* FS-9.9.9-99 XXXXXXXXX DDMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//**********************************************************************
//* OBJETIVO : CARGA LA CARTERA DE CLIENTES CON LA POSICION PROPIA PARA*
//*            REPROCESAMIENTO DEL SISTEMA SIRE (ZM4DH070 - ZMDTINT)   *
//**********************************************************************
//PHF65P02 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(PHF65P02),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : DEPURA LA CARTERA DE CLIENTES SIEMPRE MANTENDRA 35      *
//*            DIAS Y DEPURARA EL DIA MAS ANTIGUO (ZM4DH071 - ZMDTINT) *
//**********************************************************************
//PHF65P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(PHF65P01),DISP=SHR
//*
//**********************************************************************
//**              FIN DEL PROCEDIMIENTO ZMHFPD65                       *
//**********************************************************************
