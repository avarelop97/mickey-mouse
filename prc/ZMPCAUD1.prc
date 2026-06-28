//ZMPCAUD1 PROC
//*********************************************************************
//*
//*   PROCESO DE GENERACION DE INCIDENCIAS PARA AUDITORIAS
//*
//*********************************************************************
//* OBJETIVO : EXTRAE MOVIMIENTOS DE BAJAS                            *
//* PROGRAMA : ICEMAN(TARJETA DE SORT PCAUD103)                       *
//*********************************************************************
//PCAUD103 EXEC PGM=ICEMAN
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MBVP.QS.FIX.C03.ARMUVCSB.REPOR,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.VAL.BCM.BAJAS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=134,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(CCAUD103),DISP=SHR
//*
//*********************************************************************
//* OBJETIVO : EXTRAE MOVIMIENTOS DE ALTA, CAMBIO, TEMPORALIDAD ALTA  *
//*            Y TEMPORALIDAD BAJA.                                   *
//* PROGRAMA : ICEMAN(TARJETA DE SORT PCAUD102)                       *
//*********************************************************************
//PCAUD102 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MBVP.QS.FIX.C03.ARMUVCSB.REPOR,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.VAL.BCM.OTROS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=134,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(CCAUD102),DISP=SHR
//*
//*********************************************************************
//* OBJETIVO : PROCESAR ARCHIVO DE RECURSOS HUMANOS E INCIDENCIAS     *
//* PROGRAMA : ZM4CAUD1                                               *
//*********************************************************************
//PCAUD101 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//AUD1RRHH DD DSN=MXC&AMB..ZM.TMP.VAL.BCM.BAJAS,
//            DISP=(OLD,PASS)
//         DD DSN=MXC&AMB..ZM.TMP.VAL.BCM.OTROS,
//            DISP=(SHARE,DELETE,DELETE)
//SALRACF  DD DSN=MXC&AMB..ZM.FIX.VAL.AUD.RACF,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=149,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(CCAUD101),DISP=SHR
//*
