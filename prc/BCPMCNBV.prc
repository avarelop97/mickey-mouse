//BCPMCNBV  PROC                                                        00010025
//*====================================================================*
//* PROCESO     : BCPMCNBV                                             *
//* AUTOR       : FSW EVERIS                                           *
//* FECHA       : FEBRERO 2017                                        *
//*                       - O B J E T I V O -                          *
//* PROCESO QUE GENERA EL ARCHIVO MENSUAL DE DATOS GENERALES DE PDV    *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*====================================================================*
//PHC00009 EXEC PGM=IKJEFT01,COND=(4,LT)                                01151027
//*                                                                     01153001
//ZMJFCNBV DD DSN=MXCP.ZM.FIX.BC.ZM4MCNBV.MEN,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=62,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(80,40),RLSE)
//*                                                                     01155001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCMCNBV),DISP=SHR                   01230041
//*====================================================================*
//* ELABORO : FSW EVERIS                                               *
//*====================================================================*
