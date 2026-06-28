//ZMPLDS01 PROC
//*--------------------------------------------------------------------*
//* PERIODICIDAD : SEMESTRAL                                           *
//* OBJETIVO     : GENERA REPORTE CON ESTADISTICAS DE LOS CLIENTES     *
//*                QUE REALIZARON OPERACIONES EN EL ULTIMO SEMESTRE    *
//* FECHA        : OCTUBRE 2019                                        *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDS0102                                               *
//*   OBJETIVO: DESCARGA DE LA TABLA ZMDT107 LOS REGISTROS DE LAS      *
//*             OPERACIONES REALIZADAS EN EL SEMESTRE ANTERIOR         *
//*--------------------------------------------------------------------*
//ZMDS0102 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZMDS0102,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ECBP.ZMDT107.SEMESTRE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDS0102),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDS0101                                               *
//*   OBJETIVO: GENERA REPORTE DE ESTADISTICAS DE LOS CLIENTES DE      *
//*             CASA DE BOLSA QUE OPERARON EN EL SEMESTRE ANTERIOR     *
//*                     -- ZM4PLD02 --                                 *
//*--------------------------------------------------------------------*
//ZMDS0101 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECBP.ZMDT107.SEMESTRE,
//            DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECBP.OPERA.SEMESTRE.REPORTE,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=127,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDS0101),DISP=SHR
//*
