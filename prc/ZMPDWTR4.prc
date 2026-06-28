//ZMPDWTR4  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMPDWTR4                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* ACTUALIZACION DE DATOS DE ALARMAS DE CLIENTES BURSATILES           *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*--------------------------------------------------------------------*00240002
//*--------------------------------------------------------------------*00240002
//* PASO    : PWT04P00                                                 *00240002
//* UTIL/PGM: IKJEFT01/ZM4BTR01                                        *00240002
//* OBJETIVO: ACTUALIZACION DE DATOS DE ALARMAS DEN CTECOMP            *00240002
//*--------------------------------------------------------------------*
//PWT04P00 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//*
//ZMBTRE01 DD DSN=MBVP.AJ.FIX.BTRADER.F&FECHA..PERSONAS,
//            DISP=SHR
//ZMBTRS01 DD DSN=MXCP.ZM.FIX.INTERFAZ.CLIENTES.BTR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=108,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*                                                  01170038
//SYSPRINT DD SYSOUT=*                                                  01180038
//SYSOUT   DD SYSOUT=*                                                  01190038
//SYSDBOUT DD SYSOUT=*                                                  01200038
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZWT04T01),DISP=SHR                   01230041
