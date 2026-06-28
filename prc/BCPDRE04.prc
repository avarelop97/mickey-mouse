//BCPDRE04  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / CASA DE BOLSA                                   *
//* PROCESO     : BCPDRE04                                             *
//*____________________________________________________________________*
//*                                                                    *
//* AUTOR       : ACCENTURE (HECTOR CAMACHO GONZALEZ)                  *
//* FECHA       : MARZO  2016.                                         *
//*____________________________________________________________________*
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* PROCESO QUE GENERA EL ARCHIVOS PARA MERCADOS DE CAPITALES          *
//* PARA EL PROYECTO IRENE 2.0                                         *
//*                                                                    *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*====================================================================*
//* PASO     : PHC00009                                                *
//* PROGRAMA : IKJEFT01                                                *
//* OBJETIVO : GENERA ARCHIVO DE CAPITALES                             *
//*====================================================================*
//PHC00009 EXEC PGM=IKJEFT01,COND=(4,LT)                                01151027
//*                                                                     01153001
//ZMJCAPIT DD DSN=MXC&AMB..ZM.FIX.CAPIT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//*                                                                     01155001
//ZMJINCAP DD DSN=MXC&AMB..ZM.FIX.CAPITEC.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=90,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*                                                                     01155001
//ZMINCVAC DD DSN=MXC&AMB..ZM.FIX.INCAPIT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=63,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(30,15),RLSE)
//*                                                                     01155001
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*                                                                     01155001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCCAPI4),DISP=SHR                   01230041
//*====================================================================*
//*         F I N    D E L    P R O C E S O    B C P D R E 0 4         *
//* ELABORO : ACCENTURE (HECTOR CAMACHO GONZALEZ )                     *
//*====================================================================*
