//BCPMTRAE  PROC                                                        00010025
//*====================================================================*
//* ELABORO : HECTOR CAMACHO (ACCENTURE).                              *
//* FECHA   : 22JUN2017.                                               *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//* FS-1.0.0-01  EVERIS  07AGO17 SE AMPLIA EL ARCHIVO DE REPORTES      *
//*=======V============================================================*
//PHC00009 EXEC PGM=IKJEFT01,COND=(4,LT)                                01151027
//*                                                                     01153001
//ZMJTRASP DD DSN=MXC&AMB..ZM.FIX.BC.ZM4DTRAE,
//            DISP=(NEW,CATLG,DELETE),
//*FS-1.0.0-01-INI                                                      01155001
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=150,BLKSIZE=0),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=409,BLKSIZE=0),
//*FS-1.0.0-01-FIN                                                      01155001
//            UNIT=3390,SPACE=(CYL,(80,40),RLSE)
//*                                                                     01155001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(BCCMTRAE),DISP=SHR                   01230041
//*====================================================================*
//*====================================================================*
