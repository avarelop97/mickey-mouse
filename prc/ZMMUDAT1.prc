//ZMMUDAT1 PROC
//*====================================================================*
//*   APLICACION      :  SIVA/MUV                                      *
//*   PROCEDIMIENTO   :  ZMMUDAT1                                      *
//*   OBJETIVO        :  REALIZA TRANSFERENCIA DE ARCHIVO TXT A HOST   *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*   PERIODICIDAD    :  DIARIO                                        *
//*   ELABORADO POR   :  INDRA ABRIL 2022                              *
//*====================================================================*
//*   MODIFICACION    :                                                *00030000
//*                   :                                                *00030000
//*   ELABORADO POR   :                                                *00030000
//*   FECHA           :                                                *00030000
//*====================================================================*
//* PASO     : PTRADAT1                                                *
//* PROGRAMA : IEFBR14                                                 *
//* OBJETIVO : CREA ARCHIVO PARA LA TRANSMISION DE TXT A HOST          *
//*====================================================================*
//PTRADAT1 EXEC PGM=IEFBR14
//ARCHIVO   DD DSN=MXCP.ZM.FIX.EBCM.FIAM.INTERFAZ.PENSION,
//             DISP=(NEW,CATLG,CATLG),
//             DCB=(LRECL=328,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             UNIT=3390,SPACE=(CYL,(50,50),RLSE)
//*
//*====================================================================*00010000
//*                 F I N   Z M M U D A T 1                            *00020000
//*====================================================================*00010000
