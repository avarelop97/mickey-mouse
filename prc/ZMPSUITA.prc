//ZMPSUITA  PROC
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / CASA DE BOLSA                                   *
//* PROCESO     : ZMPSUITA                                             *
//*====================================================================*
//*                                                                    *
//* AUTOR       : FSW-EVERIS                                           *
//* FECHA       : 25 DE OCTUBRE 2016.                                  *
//*====================================================================*
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* PROCESO QUE INSERTA O ACTUALIZA LA TABLA ZMDTRAZ Y TOMA COMO       *
//* ENTRADA EL ARCHIVO DE SUITABILITY                                  *
//*                                                                    *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*====================================================================*
//* UTILERIA : IKJEFT01/ZM4SUITA                                       *
//* OBJETIVO : PROC QUE FUNCIONA PARA EL PROCESO SUITABILITY           *
//*====================================================================*
//PHC00009 EXEC PGM=IKJEFT01
//*
//ENTRADA1 DD DSN=MXB&AMB..YH.FIX.F&FECHA..MYHPPSUI.MATCHSUI,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCSUITA),DISP=SHR
//*====================================================================*
//*         F I N    D E L    P R O C E S O    Z M P S U I T A         *
//*====================================================================*
