//ZMPDAD01 PROC
//*********************************************************************
//* MODIFICACION: XM02826      FECHA : 09-FEB-2010
//* COMENTARIOS : SE INCREMENTA LA LONG DE REGISTRO DE 491 A 531 EN
//*               PASO ZMPDA001.
//*               CAMBIA 'MBVP.AJ.WKF' POR 'MXCP.ZM.WKF' EN AMBOS PASOS
//*********************************************************************
//* MODIFICACION: XM07242      FECHA : 23-ABR-2014
//* COMENTARIOS : SE ADICIONA PASO PARA COPIAR EL ARCHVI ADABPSAT Y ASI
//*               OBTENER LOS REGISTROS DADOS DE BAJA
//*********************************************************************
//**********************************************************************
//*AUTOR:ALEJANDRO SEGURA CUADROS               FECHA: MARZO-2019.     *
//*TEMA:MIGRACION SAT. SE ADICIONAN 4 CAMPOS INDICATIVO FID,           *
//*                    INDICADOR FONDO/OPERATIVA,RECIDENCIA PAIS,      *
//*                    INDICADOR CTOS EXT/MEX.                         *
//*INICIAL DE MODIFICACION  ASC XME0646.                               *
//**********************************************************************
//*********************************************************************
//* FILTRA EL AMCP CON % PARA PROCESAR SOLO T Y ORDENADOS EN FORMA DESC
//*********************************************************************
//ZMPDA003 EXEC PGM=ICEMAN
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MBVP.AJ.FIX.AMCP.RELPRD21.PORCEN,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.AMCP.RELPRD21.PORCEN,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=512,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCDAD02),DISP=SHR
//*
//*********************************************************************
//*   OBJETIVO: GENERA EL ARCHIVO CON DATOS ADMINISTRATIVO DE BP PARA
//*             ACLARACIONES DEL SAT.
//*********************************************************************
//ZMPDA002 EXEC PGM=IKJEFT01,COND=(4,LT)
//ARCHAMCP DD DSN=MXCP.ZM.WKF.AMCP.RELPRD21.PORCEN,DISP=SHR
//ARCHSAL  DD DSN=MXCP.ZM.FIX.ZM4CRX15.ADABPSAT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(80,40),RLSE),
//            DCB=(DSORG=PS,LRECL=696,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//ARCHAMC1 DD DSN=MXCP.ZM.FIX.ZM4CRX15.ADABPSA1,DISP=SHR
//ARCHSA1  DD DSN=MXCP.ZM.FIX.ZM4CRX15.ADABPSA4,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(80,40),RLSE),
//            DCB=(DSORG=PS,LRECL=696,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=1024
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCDAD01),DISP=SHR
//SYSIN    DD DUMMY
//*
//*********************************************************************
//*   OBJETIVO: GENERA EL ARCHIVO CON DATOS ADMINISTRATIVO DE BP PARA
//*   ZM4CRX16  ACLARACIONES DEL SAT SE AGREGAN 4 CAMPOS
//*********************************************************************
//ZMPDA001 EXEC PGM=IKJEFT01,COND=(4,LT)
//ARCHAMCP DD DSN=MXCP.ZM.WKF.AMCP.RELPRD21.PORCEN,DISP=SHR
//ARCHSAL  DD DSN=MXCP.ZM.FIX.ZM4CRX16.ADABPSAT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(80,40),RLSE),
//            DCB=(DSORG=PS,LRECL=740,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//ARCHAMC1 DD DSN=MXCP.ZM.FIX.ZM4CRX15.ADABPSA1,DISP=SHR
//ARCHSA1  DD DSN=MXCP.ZM.FIX.ZM4CRX16.ADABPSA4,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(80,40),RLSE),
//            DCB=(DSORG=PS,LRECL=740,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=1024
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCDAD05),DISP=SHR
//SYSIN    DD DUMMY
//*
//*********************************************************************
//*   OBJETIVO: GENERA ARCHIVO CONSOLIDADO DE DATOS ADMINISTRATIVOS SAT
//*             (MUV, CTD, POP)  Y  ARCHIVO SIVA.
//*   PROGRAMA: ZM4MGS0A
//*********************************************************************
//ZMPDA000 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ARCHENT  DD DSN=MXCP.ZM.WKF.AMCP.RELPRD21.PORCEN,DISP=SHR
//ZMGS0AR1 DD DSN=MXCP.ZM.FIX.SATMCP.CONSOLID,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(80,40),RLSE),
//            DCB=(DSORG=PS,LRECL=532,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//ZMGS0AR2 DD DSN=MXCP.ZM.FIX.SATSIVA.CONSOLID,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,LRECL=532,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=1024
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCDAD03),DISP=SHR
//SYSIN    DD DUMMY
//*
