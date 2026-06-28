//ZMLFPD51 PROC
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA  : ZM                                                      *
//*                                                                    *
//* PROCESO  : ZMLFPD51                                                *
//*                                                                    *
//* OBJETIVO : GENERA REPORTES EN LOS QUE CONTENGAN LA INFORMACION     *
//*            REFERENTE A LAS OPERACIONES DE LA BANCA PATRIMONIAL.    *
//*                                                                    *
//* REALIZO  : FSW-TECNOCOM                                            *
//*                                                                    *
//* FECHA    : 25-FEBRERO-2013.                                        *
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//*                       LOG DE MODIFICACIONES                        *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR     FECHA              DESCRIPCION              *
//* ----------- --------  -------  ------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO     : PLF51P90                                                *
//* PROGRAMA : IKJEFT01/ZM4ILL08                                       *
//* FUNCION  : IDENTIFICACION DE OPERACION POR CONTRATO.               *
//*--------------------------------------------------------------------*
//PLF51P90 EXEC PGM=IKJEFT01
//*
//ZMLL08S1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPOR24.CLIENTCB,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=146,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF51T90),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLF51P80                                                *
//* PROGRAMA : IKJEFT01/ZM4ILL09                                       *
//* FUNCION  : OPERATIVA DE MERCADO DE CAPITALES REGULATORIO R24.      *
//*--------------------------------------------------------------------*
//PLF51P80 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLL09S1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPOR24.OPESIVCB,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=46,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//ZMLL09S2 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPOR24.DETMONCB,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=87,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF51T80),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLF51P70                                                *
//* PROGRAMA : IKJEFT01/ZM4ILL10                                       *
//* FUNCION  : OPERATIVA DE MERCADO DE DINERO (REPORTOS) REGULATORIO   *
//*            R24.                                                    *
//*--------------------------------------------------------------------*
//PLF51P70 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLL10S1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPOR24.OPESIVCB,
//            DISP=MOD
//*
//ZMLL10S2 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPOR24.DETMONCB,
//            DISP=MOD
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF51T70),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLF51P60                                                *
//* PROGRAMA : IKJEFT01/ZM4ILL11                                       *
//* FUNCION  : OPERATIVA DE MERCADO DE DINERO (DIRECTO) REGULATORIO    *
//*            R24.                                                    *
//*--------------------------------------------------------------------*
//PLF51P60 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLL11S1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPOR24.OPESIVCB,
//            DISP=MOD
//*
//ZMLL11S2 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPOR24.DETMONCB,
//            DISP=MOD
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF51T60),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLF51P50                                                *
//* PROGRAMA : IKJEFT01/ZM4ILL12                                       *
//* FUNCION  : OPERATIVA DE SOCIEDADES DE INVERSION REGULATORIO R24.   *
//*--------------------------------------------------------------------*
//PLF51P50 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLL12S1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPOR24.OPESIVCB,
//            DISP=MOD
//*
//ZMLL12S2 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPOR24.DETMONCB,
//            DISP=MOD
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF51T50),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLF51P40                                                *
//* PROGRAMA : IKJEFT01/ZM4ILL13                                       *
//* FUNCION  : OPERATIVA DE CAPITALES POR REGION REGULATORIO R24.      *
//*--------------------------------------------------------------------*
//PLF51P40 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLL13S1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPOR24.OPEREGCB,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=51,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//ZMLL13S2 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPOR24.DETREGCB,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,LRECL=87,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF51T40),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLF51P30                                                *
//* PROGRAMA : IKJEFT01/ZM4ILL14                                       *
//* FUNCION  : OPERATIVA DE MERCADO DE DINERO REPORTOS POR REGION      *
//*            REGULATORIO R24.                                        *
//*--------------------------------------------------------------------*
//PLF51P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLL14S1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPOR24.OPEREGCB,
//            DISP=MOD
//*
//ZMLL14S2 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPOR24.DETREGCB,
//            DISP=MOD
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF51T30),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLF51P20                                                *
//* PROGRAMA : IKJEFT01/ZM4ILL15                                       *
//* FUNCION  : OPERATIVA DE MERCADO DE DINERO DIRECTO POR REGION       *
//*            REGULATORIO R24.                                        *
//*--------------------------------------------------------------------*
//PLF51P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLL15S1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPOR24.OPEREGCB,
//            DISP=MOD
//*
//ZMLL15S2 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPOR24.DETREGCB,
//            DISP=MOD
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF51T20),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLF51P10                                                *
//* PROGRAMA : IKJEFT01/ZM4ILL16                                       *
//* FUNCION  : OPERATIVA DE SOCIEDADES DE INVERSION POR REGION         *
//*            REGULATORIO R24.                                        *
//*--------------------------------------------------------------------*
//PLF51P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLL16S1 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPOR24.OPEREGCB,
//            DISP=MOD
//*
//ZMLL16S2 DD DSN=MXC&AMB..ZM.FIX.E&EMP..REPOR24.DETREGCB,
//            DISP=MOD
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF51T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                  FIN DE PROCESO ZMLFPD51                           *
//*--------------------------------------------------------------------*
