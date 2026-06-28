//ZMHINS01  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMHINS01                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* REALIZA LA DEPURACION DE LA TABLA ZMDTCND EN BASE A LA INFORMACION *
//* DE LA TABLA HISORDE                                                *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*                                                                    *
//*====================================================================*
//* PASO     : ZHINS201                                                *
//* PROGRAMA : IKJEFT01/ZM4HORD1                                       *
//* OBJETIVO : DEPURA TABLA ZMDTCND                                    *
//*====================================================================*
//ZHINS201 EXEC PGM=IKJEFT01                                            01151027
//*                                                                     01153001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHINS201),DISP=SHR                   01230041
//*====================================================================*
