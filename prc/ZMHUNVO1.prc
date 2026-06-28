//ZMHUNVO1 PROC
//**********************************************************************
//*    G R U P O   F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBHUNVO1                                         *
//*                   RESPALDO DE TABLAS.                              *
//*                                                                    *
//* OBJETIVO       :  RELIZAR UNA COPIA DE LAS TABLAS EN PRODUCCION    *
//*                   JUSTO ANTES DEL CIERRE, COMO RESPALDO EN CASO    *
//*                   DE CONTINGENCIA DE LA NUEVA VERSION MULTIEM-     *
//*                   PRESAS DEL CIERRE DE VALORES.                    *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*DESCARGA DE TABLAS DEL CIERRE DE VALORES.                           *
//**********************************************************************
//BMCCOPY  EXEC PGM=ACPMAIN,
//         PARM='MXP1,CAD14,NEW/RESET,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
 OPTIONS
 OUTPUT STAKTAPE
 UNIT FJVTP
 STACK YES
 DSNAME    BKPP.SEM.IC.&TS.D030721.P&PART.VALORES
 CATLG YES
 COPY TABLESPACE PRODUSVP.SAGPOCTA,
                 PRODUSVP.SCARTERA,
                 PRODUSVP.SMCAPISR,
                 PRODUSVP.SOPERAVA,
                 PRODUSVP.SOPERA,
                 PRODUSVP.SOPERESP,
                 PRODUSVP.SOPINDIC,
                 PRODUSVP.SSEATRCA,
                 PRODUSVP.SSECART,
                 PRODUSVP.SSECATAC,
                 PRODUSVP.SSEULTC,
                 PRODUSVP.SSOLGRAN,
                 PRODUSVP.STITPRES,
                 PRODUSVP.STITSOLI,
                 PRODUSVP.SWARCONF
      COPYDDN(STAKTAPE)
      RESETMOD NO
      SHRLEVEL REFERENCE
//*
