//ZMHCPD36  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / CASA DE BOLSA                                   *
//* PROCESO     : ZMHCPD36                                             *
//*____________________________________________________________________*
//*                                                                    *
//* AUTOR       : FSW-DGCM (OAM).                                      *
//* FECHA       : 11 DE NOVIEMBRE DEL 2013.                            *
//*____________________________________________________________________*
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//*   PROCESO ACTUALIZA COSTO PROMEDIO EN TABLA HISTóRICA DE CARTERA   *
//*                           (SECART).                                *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*====================================================================*
//*====================================================================*
//* PASO     : PHC36P10                                                *
//* PROGRAMA : IKJEFT01/ZM4COP07                                       *
//* OBJETIVO : EJECUTA PROGRAMA QUE ACTUALIZA SECART, EL COSTO PROMEDIO*
//*====================================================================*
//PHC36P10 EXEC PGM=IKJEFT01                                            01151027
//*                                                                     01153001
//ZMUD07S1 DD DSN=MXC&AMB..ZM.FIX.Z07.LOGERR.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//            DCB=(RECFM=FB,LRECL=250,BLKSIZE=0,DSORG=PS)
//*                                                                     01153001
//ZMUD07S2 DD DSN=MXC&AMB..ZM.FIX.Z07.CCONTROL.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*                                                                     01153001
//ZMUD07S3 DD DSN=MXC&AMB..ZM.FIX.Z07.SECART.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*                                                                     01155001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC36T10),DISP=SHR                   01230041
//*====================================================================*
//*         F I N    D E L    P R O C E S O    Z M H C P D 3 6         *
//*====================================================================*
