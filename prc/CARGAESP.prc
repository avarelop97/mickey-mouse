//CARGAESP PROC
//*
//*---------------------------------------------------------------------
//* PROGRAMA: VOBN26D.
//* FUNCION:  ACTUALIZA PRECIOS DE MDD EN TABLA DE PRECIOS
//*---------------------------------------------------------------------
//CARGA19 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4096K,       00070000
//             TIME=100                                                 00080000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=2420                                00090000
//SYSPRINT DD  SYSOUT=X                                                 00100000
//SYSOUT   DD  SYSOUT=X                                                 00110000
//SYSDBOUT DD  SYSOUT=X                                                 00160000
//SYSABOUT DD  DUMMY                                                    00170000
//SYSUDUMP DD  DUMMY                                                    00180000
//SYSTSIN  DD  DSN=SIVA.CARDS(CARG0110),DISP=SHR                        00190006
//*---------------------------------------------------------------------
//* PROGRAMA: VOBN04D.
//* FUNCION:  GENERAR ARCHIVO DE DEMANDAS.
//*---------------------------------------------------------------------
//CARGA18 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4096K,       00070000
//             TIME=100                                                 00080000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=2420                                00090000
//SYSPRINT DD  SYSOUT=X                                                 00100000
//SYSOUT   DD  SYSOUT=X                                                 00110000
//VOBN04A1 DD  DSN=SIVA.MDD.WKF.DEMANDA2,                               00120005
//           DISP=(NEW,CATLG,DELETE),                                   00120005
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=250,BLKSIZE=0),              00120005
//           UNIT=SYSDA,                                                00120005
//           SPACE=(TRK,(5,5))                                          00120005
//SYSDBOUT DD  SYSOUT=X                                                 00160000
//SYSABOUT DD  DUMMY                                                    00170000
//SYSUDUMP DD  DUMMY                                                    00180000
//SYSTSIN  DD  DSN=SIVA.CARDS(MTZDEM2),DISP=SHR                         00190006
//*---------------------------------------------------------------------
//* PROGRAMA: VOBN17D.
//* FUNCION:  REALIZA LA CARGA DE LA DEMANDA Y EL PAPEL ESPECIFICO.
//*---------------------------------------------------------------------
//*
//CARGA17 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4096K,
//             TIME=100
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=2420
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(APD0121),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: VIBD83D.
//* FUNCION:  EMITIR REPORTE DE DEMANDAS DUPLICADAS.
//*---------------------------------------------------------------------
//*
//CARGA16  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=2048K,COND=(4,LT)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//VIBD83DR DD SYSOUT=(O,,TD70)
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=2420
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(APD0118),DISP=SHR
//*---------------------------------------------------------------------
//* PROGRAMA: VIBD77D.
//* FUNCION:  REPORTE: DEMANDA NO CUBIERTA.
//*                    POSICION DE OFERTA.
//*---------------------------------------------------------------------
//*                   PASO PARA BANCO
//*---------------------------------------------------------------------
//CARGA15  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4096K,
//             TIME=100
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=2420
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(CARG0106),DISP=SHR
//*
//VIBD77R1 DD DSN=SIVA.MDD.WKF.D77R1B,
//           DISP=(NEW,PASS),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=0),
//           UNIT=SYSDA,
//           SPACE=(TRK,(5,5))
//*
//VIBD77R3 DD DSN=SIVA.MDD.WKF.D77R3B,
//           DISP=(NEW,PASS),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=0),
//           UNIT=SYSDA,
//           SPACE=(TRK,(5,5))
//*
//VTB644A1 DD DSN=SIVA.MDD.WKF.D77R9B,
//           DISP=(NEW,PASS),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=132,BLKSIZE=0),
//           UNIT=SYSDA,
//           SPACE=(TRK,(5,5))
//*
//AGS644R1 DD SYSOUT=(O,,AD56),DCB=RECFM=FBA
//CDJ644R1 DD SYSOUT=(O,,BD56),DCB=RECFM=FBA
//CHI644R1 DD SYSOUT=(O,,CD56),DCB=RECFM=FBA
//GUA644R1 DD SYSOUT=(O,,DD56),DCB=RECFM=FBA
//HER644R1 DD SYSOUT=(O,,ED56),DCB=RECFM=FBA
//JAL644R1 DD SYSOUT=(O,,FD56),DCB=RECFM=FBA
//JER644R1 DD SYSOUT=(O,,GD56),DCB=RECFM=FBA
//KRO644R1 DD SYSOUT=(O,,HD56),DCB=RECFM=FBA
//LEO644R1 DD SYSOUT=(O,,ID56),DCB=RECFM=FBA
//MAZ644R1 DD SYSOUT=(O,,JD56),DCB=RECFM=FBA
//MER644R1 DD SYSOUT=(O,,KD56),DCB=RECFM=FBA
//MOR644R1 DD SYSOUT=(O,,LD56),DCB=RECFM=FBA
//MTY644R1 DD SYSOUT=(O,,MD56),DCB=RECFM=FBA
//PDR644R1 DD SYSOUT=(O,,ND56),DCB=RECFM=FBA
//POL644R1 DD SYSOUT=(O,,OD56),DCB=RECFM=FBA
//PUE644R1 DD SYSOUT=(O,,PD56),DCB=RECFM=FBA
//SAT644R1 DD SYSOUT=(O,,QD56),DCB=RECFM=FBA
//SLP644R1 DD SYSOUT=(O,,RD56),DCB=RECFM=FBA,FCB=CD03
//TAM644R1 DD SYSOUT=(O,,SD56),DCB=RECFM=FBA
//TIJ644R1 DD SYSOUT=(O,,UD56),DCB=RECFM=FBA
//TOL644R1 DD SYSOUT=(O,,VD56),DCB=RECFM=FBA
//TOR644R1 DD SYSOUT=(O,,WD56),DCB=RECFM=FBA,FCB=CD03
//VER644R1 DD SYSOUT=(O,,XD56),DCB=RECFM=FBA
//ZAC644R1 DD SYSOUT=(O,,YD56),DCB=RECFM=FBA
//ZPR644R1 DD SYSOUT=(O,,TD56),DCB=RECFM=FBA
//MMU644R1 DD SYSOUT=(O,,1D56),DCB=RECFM=FBA
//WWW644R1 DD SYSOUT=(O,,UWWW),DCB=RECFM=FBA
//MMP644R1 DD SYSOUT=(O,,3D56),DCB=RECFM=FBA
//SAN644R1 DD SYSOUT=(O,,4D56),DCB=RECFM=FBA
//ZZZ644R1 DD SYSOUT=(O,,UZZZ),DCB=RECFM=FBA
//*
//**********************************************************************
//*                      - VNBE11D -
//* OBJETIVO : INICIALIZA EL EVENTO PARA FINALIZAR CARGA ESPECIFICA
//*            APAGA EL EVENTO PD6 -- 'F' --
//**********************************************************************
//*
//CARGA14 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4096K,
//             TIME=100
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=2420
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(CARG0105),DISP=SHR
//*
