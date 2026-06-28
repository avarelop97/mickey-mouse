//FDDEE09   PROC
//*
//**********************************************************************
//*                   I.D.S. COMERCIAL, S.A. DE C.V.                   *       *
//*                                                                    *
//*   APLICACION:  DISTRIBUCION DE FONDOS POR LA RED                   *
//*                                                                    *
//*   PROCEDIM. :  FDDEE09.                                            *
//*                                                                    *
//*   OBJETIVO  :  DESCARGA DE LA TABLA SVCTOCB.                       *
//*                                                                    *
//*   CORRE ANTES DE  :  TPJCII01.                                     *
//*                                                                    *
//*   CORRE DESPUES DE:  INDEPENDIENTE                                 *
//*                                                                    *
//*   ELABORADO POR: M.G.M.                     FECHA:  23-OCT-2000    *
//*                  IDS COMERCIAL, S.A. DE C.V.                       *
//**********************************************************************
//*                BITACORA DE LAS MODIFICACIONES                      *
//*                                                                    *
//*  MODIFICADO POR:                         FECHA:                    *
//*                                                                    *
//*  DESCRIPCION   :                                                   *
//*                                                                    *
//**********************************************************************
//* PROCESO: UNLOAD                                                    *
//* OBJETIVO : DESCARGAR TABLA SVCTOCB A UN ARCHIVO SECUENCIAL         *
//**********************************************************************
//FDDE0901 EXEC PGM=IKJEFT1A,DYNAMNBR=20
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSREC00 DD DSN=SIVA.SIA.FIX.UNLOAD.SVCTOCB,
//            DISP=(NEW,CATLG,DELETE),AVGREC=K,RECFM=FB,
//            UNIT=3390,
//            BLKSIZE=0,DSORG=PS,
//            SPACE=(CYL,(35,10),RLSE)
//SYSPUNCH DD SYSOUT=*
//SYSTSIN  DD DSN=SIVA.CARDS(FDDE09A1),DISP=SHR
//*
//SYSIN    DD DSN=SIVA.CARDS(FDDE0901),DISP=SHR
//*                                                                     00027100
