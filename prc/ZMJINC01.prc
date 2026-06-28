//ZMJINC01  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / CASA DE BOLSA                                   *
//* PROCESO     : ZMJINC01                                             *
//*____________________________________________________________________*
//*                                                                    *
//* AUTOR       : FSW-DGCM                                             *
//* FECHA       : 13 DE JULIO DEL 2015                                 *
//*____________________________________________________________________*
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* REPROCESO DE CALCULO DE COSTO PROMEDIO LIQUIDADO PARA INCUMPLIMI-  *
//* ENTOS.                                                             *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*                                                                    *
//*====================================================================*
//* PASO     : PHINCP02                                                *
//* PROGRAMA : IKJEFT01/ZM4ISR10                                       *
//* OBJETIVO : REPROCESO DE COSTO PROMEDIO LIQUIDADO POR INCUMPLIMIENTO*
//*====================================================================*
//PHINCP02 EXEC PGM=IKJEFT01                                            01151027
//*                                                                     01153001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHINCT01),DISP=SHR                   01230041
//*====================================================================*
//* PASO     : PHINCP01                                                *
//* PROGRAMA : IKJEFT01/ZM4ISR10                                       *
//* OBJETIVO : EN CASO DE QUE SE ENCONTRARA UN REPROCESO PENDIENTE SE  *
//* RECALCULA EL COSTO PROMEDIO LIQUIDADO Y EN ESTE PASO SE CALCULA EL *
//* COSTO PROMEDIO LIQUIDADO POR INCUMPLIMIENTO.                       *
//*====================================================================*
// IF  PHINCP02.RC EQ 01 THEN
//PHINCP01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*                                                                     01153001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHINCT01),DISP=SHR                   01230041
//*
// ENDIF
//*====================================================================*
//* PASO     : PHINCP00                                                *
//* PROGRAMA : IKJEFT01/ZM4DHV10                                       *
//* OBJETIVO : EN CASO DE QUE SE TRATE DE UNA EMISORA DE CKD SE EJECUTA*
//* INVERSOR PARA OBTENER COSTO HISTORICO CORRECTO                     *
//*====================================================================*
// IF  PHINCP02.RC EQ 02 THEN
//PHINCP00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*                                                                     01153001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHINCT00),DISP=SHR                   01230041
//*
// ENDIF
//*====================================================================*
//*         F I N    D E L    P R O C E S O    Z M H C P D 2 5         *
//*====================================================================*
