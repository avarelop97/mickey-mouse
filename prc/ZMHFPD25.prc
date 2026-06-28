//ZMHFPD25 PROC
//*
//**********************************************************************
//* APLICACION  : ZM                                                   *
//* PROCESO     : ZMHFPD25                                             *
//* OBJETIVO    : GENERAR UN REPORTE DE TODOS LOS CLIENTES QUE SON NO  *
//*               ELEGIBLES QUE ENVIARON ORDENES DE MERCADO DE         *
//*               CAPITALES A LA MESA Y SU TEXTO EXPLICATIVO.          *
//* REALIZO     : FABRICA DE SOFTWARE BBVA BANCOMER (XM09287)          *
//* FECHA       : 05/NOVIEMBRE/2010.                                   *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-03  CDRXXX  DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX       *
//*                                                                    *
//**********************************************************************
//* PASO        : PHF25P01                                             *
//* PROGRAMA    : IKJEFT01/ZHF25T01                                    *
//* DESCRIPCION : GENERA REPORTE DE CLLIENTES.                         *
//**********************************************************************
//PHF25P01 EXEC PGM=IKJEFT01
//*
//ZMFH1051 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//CLIENTES DD DSN=MXCP.ZM.FIX.EBCM.S000.ZMHFPD25.CTES.N.ELE,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//ZMHV98R1 DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF25T01),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//*                           FIN DE PROCESO                           *
//*                                                                    *
//**********************************************************************
