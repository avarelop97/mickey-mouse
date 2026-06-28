//FDD2500 PROC
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE INFORMACION ESTADISTICA      *
//*                               (S. I. I. E.)                        *
//*                                                                    *
//* PROCESO        :  PFDFDD25                                         *
//*                   TENENCIA ESTADISTICA                             *
//*                                                                    *
//* OBJETIVO       :  CONOCER LA POSICION DE LA CASA EN LOS            *
//*                   DIFERENTES GRUPOS DE INSTRUMENTO                 *
//*                                                                    *
//*                   CARGA DE INFORMACION EN TABLAS IMAGEN PARA       *
//*                   NO ENTORPECER LA EJECUCION DE OTROS PROCESOS     *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  PFDCPD01                                         *
//*                                                                    *
//* DESPUES DE     :  PFDFDD12                                         *
//*                                                                    *
//* REALIZO        :  JOEL GONZALEZ MARTINEZ / PILAR MORAGREGA VERA    *
//* FECHA          :  ENERO DE 1993            DE BONEQUI              *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//*                                                                    *
//* MODIFICO       :  RAFAEL ZULETA VARGAS                             *
//* FECHA          :  MAYO DE 1993                                     *
//*                                                                    *
//* OBSERVACION    :  SE MODIFICO PARA QUE CORRA EN EL FIN DE DIA      *
//*                   ANTES DE IMAGE COPYS DIARIOS A SOLICITUD DE      *
//*                   DOLORES CASTRO/ANTONIO URBANO.                   *
//*                                                                    *
//* MODIFICACION   :  SE AGREGO EL PROGRAMA SOBF57D EN EL PASO 01      *
//*                   PARA EL CALCULO DE LA VALUACION DE ESTADO -      *
//*                   DE CUENTA EN SIVA.                               *
//*                                                                    *
//* MODIFICO       :  CLAUDIA M. MOLINA M.                             *
//* FECHA          :  SEPTIEMBRE DE 1993.                              *
//*                                                                    *
//**********************************************************************
//**                                                         ***        00420001
//**        OJOJOJOJOJOJOJOJOJOJOJOJOJOJJOJOJOJOJ            ***        00420001
//**        OJOJOJOJOJOJOJOJOJOJOJOJOJOJJOJOJOJOJ            ***        00420001
//**        OJOJOJOJOJOJOJOJOJOJOJOJOJOJJOJOJOJOJ            ***        00420001
//**        **   NO MODIFICAR TODO ESTE PROCEDIMIENTO        ***        00420001
//**        **    SIN PREVIA AUTORIZACION DE                 ***        00420001
//**        **   DESARROLLO DE SISTEMAS     (ADRIANA VAZQUEZ)***        00420001
//**        OJOJOJOJOJOJOJOJOJOJOJOJOJOJJOJOJOJOJ            ***        00420001
//**        OJOJOJOJOJOJOJOJOJOJOJOJOJOJJOJOJOJOJ            ***        00420001
//**        OJOJOJOJOJOJOJOJOJOJOJOJOJOJJOJOJOJOJ            ***        00420001
//**                                                         ***        00420001
//**********************************************************************
//*                           -- SOBF68D --                            *
//* OBJETIVO    :  COPIAR PARAM 'P05' A PARAM 'P04'                    *
//*                                                                    *
//* ACTUALIZA   :  PARAM-P04                                           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
//FDD2517 EXEC PGM=IKJEFT01,
//        PARM='/DEBUG'
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2517),DISP=SHR
//**********************************************************************
//*                           -- SOBF59D --                            *
//* OBJETIVO    :  ACTUALIZA CATALOGO DE PERIODOS                      *
//*                                                                    *
//* ACTUALIZA   :  PARAM-TF6                                           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
//FDD2516 EXEC PGM=IKJEFT01,COND=(4,LT),
//        PARM='/DEBUG'
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2516),DISP=SHR
//**********************************************************************
//*                         -- CTMCND --                               *
//* OBJETIVO: ACTIVA CONDICION EN CONTROL-M "PFDFDD27_IN" PARA QUE SE  *
//*           EJECUTE EL RESPALDO Y DEPURACION DE TABLAS BKUP'S DE PROC*
//*           ESTADISTICO.                                             *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//FDD2515  EXEC  PGM=CTMCND,PARM='ADD COND    PFDFDD27_IN &FECHA',
//         COND=(4,LT)
//STEPLIB  DD   DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD,DISP=SHR
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//PRTDBG   DD   SYSOUT=Z
//SYSPRINT DD   DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD   SYSOUT=Z
//DACNDIN  DD   DDNAME=SYSIN
//*
//**********************************************************************
//*                           -- SOBF58D --                            *
//* OBJETIVO    :  ASIGNACION AUTOMATICA DE GRUPOS DE INSTRUMENTOS     *
//*                                                                    *
//* ACTUALIZA   :  AGPOCON                                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
//FDD2514 EXEC PGM=IKJEFT01,COND=(4,LT),
//        PARM='/DEBUG'
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SOBF58R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2514),DISP=SHR
//**********************************************************************
//*                           -- SOBF63D --                            *
//* OBJETIVO    :  CARGA INICIAL Y ACTUALIZACION DIARIA DE PRECIOS     *
//*                                                                    *
//* ACTUALIZA   :  SEPRULT                                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
//FDD2513 EXEC PGM=IKJEFT01,COND=(4,LT),
//        PARM='/DEBUG'
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2513),DISP=SHR
//**********************************************************************
//*                           -- SOBF65D --                            *
//* OBJETIVO    :  CARGA INICIAL Y ACTUALIZ. DIARIA ATRIBUTOS PROMOTOR *
//*                                                                    *
//* ACTUALIZA   :  SECATAP, SEULTP                                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
//FDD2512 EXEC PGM=IKJEFT01,COND=(4,LT),
//        PARM='/DEBUG'
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2512),DISP=SHR
//**********************************************************************
//*                           -- SOBF64D --                            *
//* OBJETIVO    :  CARGA INICIAL Y ACTUALIZ. DIARIA ATRIBUTOS CLIENTES *
//*                                                                    *
//* ACTUALIZA   :  SECATAC, SEULTC                                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
//FDD2511 EXEC PGM=IKJEFT01,COND=(4,LT),
//        PARM='/DEBUG'
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2511),DISP=SHR
//**********************************************************************
//*                           -- SOBF66D --                            *
//* OBJETIVO    :  CARGA INICIAL Y ACTUALIZ. DIARIA ATRIB. CTRO.COSTOS *
//*                                                                    *
//* ACTUALIZA   :  SECATAS, SEULTS                                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
//FDD2510 EXEC PGM=IKJEFT01,COND=(4,LT),
//        PARM='/DEBUG'
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2510),DISP=SHR
//**********************************************************************
//*                                                                    *
//* OBJETIVO    :  DEPURACION DE TABLAS DE ESTADOS DE CUENTA           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**           RESPALDO DE TABLAS ANTES DE DEPURAR             **       00030100
//***************************************************************       00030200
//FDD2509 EXEC PGM=DSNUTILB,PARM='MXP1,PFDFDD2501,',                    00031002
//        COND=(4,LT)                                                   00031002
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//PI601765 DD DUMMY
//SYSCOP01 DD  DSN=BKPP.DIA.PRODUSVP.SEDVALCA.D&DATE,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(1,SL,,,EXPDT=99000)
//SYSCOP02 DD DSN=BKPP.DIA.PRODUSVP.SEDREPER.D&DATE,                    00033604
//            DISP=(NEW,CATLG,DELETE),                                  00033700
//            UNIT=AFF=SYSCOP01,LABEL=(1,SL,EXPDT=99000)                00033800
//SYSCOP03 DD DSN=BKPP.DIA.PRODUSVP.SEDCONT.D&DATE,                     0034004
//            DISP=(NEW,CATLG,DELETE),                                  00035000
//            UNIT=AFF=SYSCOP01,LABEL=(1,SL,EXPDT=99000)                00036000
//SYSCOP04 DD DSN=BKPP.DIA.PRODUSVP.SEDSECIN.D&DATE,                    00038004
//            DISP=(NEW,CATLG,DELETE),                                  00039000
//            UNIT=AFF=SYSCOP01,LABEL=(1,SL,EXPDT=99000)                00040000
//SYSCOP05 DD DSN=BKPP.DIA.PRODUSVP.SEDMOVED.D&DATE,                    00042004
//            DISP=(NEW,CATLG,DELETE),                                  00043000
//            UNIT=AFF=SYSCOP01,LABEL=(1,SL,EXPDT=99000)                00044000
//SYSCOP06 DD DSN=BKPP.DIA.PRODUSVP.SEDIMPUE.D&DATE,                    00044204
//            DISP=(NEW,CATLG,DELETE),                                  00044300
//            UNIT=AFF=SYSCOP01,LABEL=(1,SL,EXPDT=99000)                00044400
//SYSCOP07 DD DSN=BKPP.DIA.PRODUSVP.SEDDEPRE.D&DATE,                    00045004
//            DISP=(NEW,CATLG,DELETE),                                  00045102
//            UNIT=AFF=SYSCOP01,LABEL=(1,SL,EXPDT=99000)                00045202
//SYSCOP08 DD DSN=BKPP.DIA.PRODUSVP.SCARTERA.D&DATE,                    00045004
//            DISP=(NEW,CATLG,DELETE),                                  00045102
//            UNIT=AFF=SYSCOP01,LABEL=(1,SL,EXPDT=99000)                00045202
//SYSPRINT DD SYSOUT=X                                                  00045402
//UTPRINT  DD SYSOUT=X                                                  00045502
//SYSUDUMP DD SYSOUT=X                                                  00045602
//SYSIN   DD DSN=SIVA.CARDS(FDD2502),DISP=SHR                           00045702
//************************************************************          00080000
//*                * ECB280M *                                          00150001
//*  ESTE DEBE  DE CORRER SIEMPRE Y CUANDO EXISTA EL EVENTO             00150001
//*   EC0  .                                                            00150001
//*  DEPURA LAS TABLAS DE ESTADOS DE CUENTA                  *          00150001
//*                                               ***PROC. ESTADISTICO *
//************************************************************          00160001
//FDD2508 EXEC PGM=IKJEFT01,COND=(0,NE),                                00170002
//        PARM='/DEBUG'                                                 00180001
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00220001
//SYSPRINT DD SYSOUT=X                                                  00230001
//SELECTR1 DD DSN=SIVA.ECT.WKF.EDMOVED,                                 00240004
//         DISP=(NEW,CATLG,DELETE),                                     00240004
//         SPACE=(CYL,(2,1)),DCB=(RECFM=FB,BLKSIZE=0,LRECL=80),         00250001
//         UNIT=3390                                                    00260001
//SELECTR2 DD DSN=SIVA.ECT.WKF.EDIMPUE,                                 00270004
//         DISP=(NEW,CATLG,DELETE),                                     00240004
//         SPACE=(CYL,(2,1)),DCB=(RECFM=FB,BLKSIZE=0,LRECL=80),         00280001
//         UNIT=3390                                                    00290001
//SELECTR3 DD DSN=SIVA.ECT.WKF.EDVALCA,                                 00300004
//         DISP=(NEW,CATLG,DELETE),                                     00240004
//         SPACE=(CYL,(2,1)),DCB=(RECFM=FB,BLKSIZE=0,LRECL=80),         00310004
//         UNIT=3390                                                    00320001
//SELECTR4 DD DSN=SIVA.ECT.WKF.EDREPER,                                 00300004
//         DISP=(NEW,CATLG,DELETE),                                     00240004
//         SPACE=(CYL,(2,1)),DCB=(RECFM=FB,BLKSIZE=0,LRECL=80),         00310004
//         UNIT=3390                                                    00320001
//SYSOUT   DD SYSOUT=X                                                  00330001
//SYSDBOUT DD SYSOUT=X                                                  00340001
//SYSABOUT DD DUMMY                                                     00350001
//SYSUDUMP DD DUMMY                                                     00360001
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2508),DISP=SHR
//*---------------------------------------------
//*    BORRA LOS ARCHIVOS  EDMOVED, EDVALCA, EDIMPUE
//*---------------------------------------------
//FDD2507  EXEC  PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=SIVA.CARDS(FDD2507),DISP=SHR
//**************************************************************        00410001
//**        ESTE PASO SE EJECUTARA UNICAMENTE CUANDO EL PASO ***        00420001
//**        ANTERIOR REGRESE CODIGO DISTINTO A 8             ***        00420001
//**                                                         ***        00420001
//**        OJOJOJOJOJOJOJOJOJOJOJOJOJOJJOJOJOJOJ            ***        00420001
//**        **   NO MODIFICAR SIN PREVIA AUTORIZACION DE     ***        00420001
//**        **   DESARROLLO DE SISTEMAS     (ADRIANA VAZQUEZ)***        00420001
//**        OJOJOJOJOJOJOJOJOJOJOJOJOJOJJOJOJOJOJ            ***        00420001
//**                                                         ***        00420001
//**        UNLOAD DE TABLAS DE ESTADOS DE CUENTA            ***        00420001
//**************************************************************        00430001
//**                    UNLOAD DE EDVALCA                     **        00430001
//**************************************************************        00430001
//FDD253B EXEC  PGM=IKJEFT01,                                           00450002
//      COND=(4,LT,FDD2508)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//PI601765 DD DUMMY
//SYSTSPRT   DD  SYSOUT=*
//SYSTSIN    DD DSN=SIVA.CARDS(FDD253B),DISP=SHR
//SYSPUNCH DD DUMMY
//SYSPRINT   DD  SYSOUT=*
//SYSREC00 DD DSN=SIVA.ECT.WKF.PRODUSVP.EDVALCA,
//        DISP=(NEW,CATLG,DELETE),SPACE=(CYL,(100,50),RLSE),
//        UNIT=3390,DCB=(RECFM=FB,BLKSIZE=0,LRECL=110)
//SYSIN    DD DSN=SIVA.ECT.WKF.EDVALCA,DISP=SHR                         00480001
//**************************************************************        00430001
//**                    UNLOAD DE EDMOVED                     **        00430001
//**************************************************************        00430001
//FDD253C EXEC  PGM=IKJEFT01,                                           00450002
//      COND=(4,LT,FDD2508)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//PI601765 DD DUMMY
//SYSTSPRT   DD  SYSOUT=*
//SYSTSIN    DD DSN=SIVA.CARDS(FDD253B),DISP=SHR
//SYSPUNCH DD DUMMY
//SYSPRINT   DD  SYSOUT=*
//SYSREC00 DD DSN=SIVA.ECT.WKF.PRODUSVP.EDMOVED,
//        DISP=(NEW,CATLG,DELETE),SPACE=(CYL,(100,50),RLSE),
//        UNIT=3390,DCB=(RECFM=FB,BLKSIZE=0,LRECL=87)
//SYSIN    DD DSN=SIVA.ECT.WKF.EDMOVED,DISP=SHR                         00480001
//**************************************************************        00430001
//**                    UNLOAD DE EDIMPUE                     **        00430001
//**************************************************************        00430001
//FDD253D EXEC  PGM=IKJEFT01,                                           00450002
//      COND=(4,LT,FDD2508)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//PI601765 DD DUMMY
//SYSTSPRT   DD  SYSOUT=*
//SYSTSIN    DD DSN=SIVA.CARDS(FDD253B),DISP=SHR
//SYSPUNCH DD DUMMY
//SYSPRINT   DD  SYSOUT=*
//SYSREC00 DD DSN=SIVA.ECT.WKF.PRODUSVP.EDIMPUE,
//        DISP=(NEW,CATLG,DELETE),SPACE=(CYL,(100,50),RLSE),
//        UNIT=3390,DCB=(RECFM=FB,BLKSIZE=0,LRECL=87)
//SYSIN    DD DSN=SIVA.ECT.WKF.EDIMPUE,DISP=SHR                         00480001
//**************************************************************        00430001
//**                    UNLOAD DE EDREPER                     **        00430001
//**************************************************************        00430001
//FDD253E EXEC  PGM=IKJEFT01,
//      COND=(4,LT,FDD2508)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//PI601765 DD DUMMY
//SYSTSPRT   DD  SYSOUT=*
//SYSTSIN    DD DSN=SIVA.CARDS(FDD253B),DISP=SHR
//SYSPUNCH   DD  DUMMY
//SYSPRINT   DD  SYSOUT=*
//SYSREC00 DD DSN=SIVA.ECT.WKF.PRODUSVP.EDREPER,
//        DISP=(NEW,CATLG,DELETE),SPACE=(CYL,(100,50),RLSE),
//        UNIT=3390,DCB=(RECFM=FB,BLKSIZE=0,LRECL=87)
//SYSIN    DD DSN=SIVA.ECT.WKF.EDREPER,DISP=SHR
//**********************************************************            00891002
//**          CARGA DE DATOS A TABLAS DEPURADAS          ***            00892002
//**********************************************************            00891002
//**                       EDVALCA                       ***            00892002
//**********************************************************            00893002
//FDD2506 EXEC PGM=DSNUTILB,PARM='MXP1,PFDFDD2502',                     0920002
//      COND=(4,LT,FDD2508)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*                                                  00940002
//UTPRINT  DD SYSOUT=*                                                  00950002
//SYSUDUMP DD SYSOUT=*                                                  00960002
//SYSPRINT DD SYSOUT=*                                                  00970002
//SORTWK01 DD DSN=SIVA.ECT.WKF.LOAD.EDVALCA.SORTWK01,                   00980004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           00990002
//         SPACE=(CYL,(100,50),RLSE)                                    01000002
//SORTWK02 DD DSN=SIVA.ECT.WKF.LOAD.EDVALCA.SORTWK02,                   01010004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01020002
//         SPACE=(CYL,(150,50),RLSE)                                    01030002
//SORTWK03 DD DSN=SIVA.ECT.WKF.LOAD.EDVALCA.SORTWK03,                   1040004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01050002
//         SPACE=(CYL,(150,50),RLSE)                                    01060002
//SORTWK04 DD DSN=SIVA.ECT.WKF.LOAD.EDVALCA.SORTWK04,                   1070004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01080002
//         SPACE=(CYL,(150,50),RLSE)                                    01090002
//SYSUT1   DD DSN=SIVA.ECT.WKF.LOAD.EDVALCA.SYSUT1,                     1100004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01110002
//         SPACE=(CYL,(200,100),RLSE)                                   01410002
//SORTOUT  DD DSN=SIVA.ECT.WKF.LOAD.EDVALCA.SORTOUT,                    1130004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01140002
//         SPACE=(CYL,(200,100),RLSE)                                   01150002
//************    DATOS DE ENTRADA     ******************               01170002
//SYSREC00 DD DSN=SIVA.ECT.WKF.PRODUSVP.EDVALCA,DISP=SHR                1180004
//************    ARCHIVO DE CONTROL    *****************               01190002
//SYSIN    DD DSN=SIVA.CARDS(FDD2506),DISP=SHR                          1200004
//**********************************************************            00891002
//**                       EDMOVED                       ***            00892002
//**********************************************************            00893002
//FDD2505 EXEC PGM=DSNUTILB,PARM='MXP1,PFDFDD2503',                     210002
//      COND=(4,LT,FDD2508)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*                                                  01230002
//UTPRINT  DD SYSOUT=*                                                  01240002
//SYSUDUMP DD SYSOUT=*                                                  01250002
//SYSPRINT DD SYSOUT=*                                                  01260002
//SORTWK01 DD DSN=SIVA.ECT.WKF.LOAD.EDMOVED.SORTWK01,                   1270004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01280002
//         SPACE=(CYL,(100,50),RLSE)                                    01290002
//SORTWK02 DD DSN=SIVA.ECT.WKF.LOAD.EDMOVED.SORTWK02,                   1300004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01310002
//         SPACE=(CYL,(100,50),RLSE)                                    01320002
//SORTWK03 DD DSN=SIVA.ECT.WKF.LOAD.EDMOVED.SORTWK03,                   1330004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01340002
//         SPACE=(CYL,(100,50),RLSE)                                    01350002
//SORTWK04 DD DSN=SIVA.ECT.WKF.LOAD.EDMOVED.SORTWK04,                   1360004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01370002
//         SPACE=(CYL,(100,50),RLSE)                                    01380002
//SYSUT1   DD DSN=SIVA.ECT.WKF.LOAD.EDMOVED.SYSUT1,                     1390004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01400002
//         SPACE=(CYL,(200,100),RLSE)                                   01410002
//SORTOUT  DD DSN=SIVA.ECT.WKF.LOAD.EDMOVED.SORTOUT,                    1420004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01430002
//         SPACE=(CYL,(200,100),RLSE)                                   01440002
//************    DATOS DE ENTRADA     ******************               01460002
//SYSREC00 DD DSN=SIVA.ECT.WKF.PRODUSVP.EDMOVED,DISP=SHR                1470004
//************    ARCHIVO DE CONTROL    *****************               01480002
//SYSIN    DD DSN=SIVA.CARDS(FDD2505),DISP=SHR                          1490004
//*******************************************************               01500002
//**                       EDIMPUE                       ***            00892002
//**********************************************************            00893002
//FDD2504 EXEC PGM=DSNUTILB,PARM='MXP1,PFDFDD2504',                     510002
//      COND=(4,LT,FDD2508)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*                                                  01530002
//UTPRINT  DD SYSOUT=*                                                  01540002
//SYSUDUMP DD SYSOUT=*                                                  01550002
//SYSPRINT DD SYSOUT=*                                                  01560002
//SORTWK01 DD DSN=SIVA.ECT.WKF.LOAD.EDIMPUE.SORTWK01,                   1570004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01580002
//         SPACE=(CYL,(100,50),RLSE)                                    01590002
//SORTWK02 DD DSN=SIVA.ECT.WKF.LOAD.EDIMPUE.SORTWK02,                   1600004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01610002
//         SPACE=(CYL,(100,50),RLSE)                                    01620002
//SORTWK03 DD DSN=SIVA.ECT.WKF.LOAD.EDIMPUE.SORTWK03,                   1630004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01640002
//         SPACE=(CYL,(100,50),RLSE)                                    01650002
//SORTWK04 DD DSN=SIVA.ECT.WKF.LOAD.EDIMPUE.SORTWK04,                   1660004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01670002
//         SPACE=(CYL,(100,50),RLSE)                                    01680002
//SYSUT1   DD DSN=SIVA.ECT.WKF.LOAD.EDIMPUE.SYSUT1,                     1690004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01700002
//         SPACE=(CYL,(200,100),RLSE)                                   01710002
//SORTOUT  DD DSN=SIVA.ECT.WKF.LOAD.EDIMPUE.SORTOUT,                    1720004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01730002
//         SPACE=(CYL,(200,100),RLSE)                                   01740002
//************    DATOS DE ENTRADA     ******************               01750002
//SYSREC00 DD DSN=SIVA.ECT.WKF.PRODUSVP.EDIMPUE,DISP=SHR                1760004
//************    ARCHIVO DE CONTROL    *****************               01770002
//SYSIN    DD DSN=SIVA.CARDS(FDD2504),DISP=SHR                          1780004
//**********************************************************            00891002
//**                       EDREPER                       ***            00892002
//**********************************************************            00893002
//FDD2503 EXEC PGM=DSNUTILB,PARM='MXP1,PFDFDD2505',                     510002
//      COND=(4,LT,FDD2508)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*                                                  01530002
//UTPRINT  DD SYSOUT=*                                                  01540002
//SYSUDUMP DD SYSOUT=*                                                  01550002
//SYSPRINT DD SYSOUT=*                                                  01560002
//SORTWK01 DD DSN=SIVA.ECT.WKF.LOAD.EDREPER.SORTWK01,                   1570004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01580002
//         SPACE=(CYL,(100,50),RLSE)                                    01590002
//SORTWK02 DD DSN=SIVA.ECT.WKF.LOAD.EDREPER.SORTWK02,                   1600004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01610002
//         SPACE=(CYL,(100,50),RLSE)                                    01620002
//SORTWK03 DD DSN=SIVA.ECT.WKF.LOAD.EDREPER.SORTWK03,                   1630004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01640002
//         SPACE=(CYL,(100,50),RLSE)                                    01650002
//SORTWK04 DD DSN=SIVA.ECT.WKF.LOAD.EDREPER.SORTWK04,                   1660004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01670002
//         SPACE=(CYL,(100,50),RLSE)                                    01680002
//SYSUT1   DD DSN=SIVA.ECT.WKF.LOAD.EDREPER.SYSUT1,                     1690004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01700002
//         SPACE=(CYL,(200,100),RLSE)                                   01710002
//SORTOUT  DD DSN=SIVA.ECT.WKF.LOAD.EDREPER.SORTOUT,                    1720004
//         DISP=(NEW,DELETE,CATLG),UNIT=3390,                           01730002
//         SPACE=(CYL,(200,100),RLSE)                                   01740002
//************    DATOS DE ENTRADA     ******************               01750002
//SYSREC00 DD DSN=SIVA.ECT.WKF.PRODUSVP.EDREPER,DISP=SHR                1760004
//************    ARCHIVO DE CONTROL    *****************               01770002
//SYSIN    DD DSN=SIVA.CARDS(FDD2503),DISP=SHR                          1780004
//***************************************************************       00030000
//**           RESPALDO DE TABLAS DESPUES DE DEPURAR             **     00030100
//***************************************************************       00030200
//FDD2502 EXEC PGM=DSNUTILB,PARM='MXP1,PFDFDD2506,',                    00031002
//      COND=(4,LT,FDD2508)
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//PI601765 DD DUMMY
//SYSCOP01 DD  DSN=BKPP.DIA.D.PRODUSVP.SEDVALCA.D&DATE,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=FJVTP,
//             LABEL=(,SL,,,EXPDT=99000)
//SYSCOP02 DD DSN=BKPP.DIA.D.PRODUSVP.SEDREPER.D&DATE,                  00033604
//            DISP=(NEW,CATLG,DELETE),                                  00033700
//            UNIT=AFF=SYSCOP01,LABEL=(,SL,EXPDT=99000)                 00033800
//SYSCOP03 DD DSN=BKPP.DIA.D.PRODUSVP.SEDCONT.D&DATE,                   0034004
//            DISP=(NEW,CATLG,DELETE),                                  00035000
//            UNIT=AFF=SYSCOP01,LABEL=(,SL,EXPDT=99000)                 00036000
//SYSCOP04 DD DSN=BKPP.DIA.D.PRODUSVP.SEDSECIN.D&DATE,                  00038004
//            DISP=(NEW,CATLG,DELETE),                                  00039000
//            UNIT=AFF=SYSCOP01,LABEL=(,SL,EXPDT=99000)                 00040000
//SYSCOP05 DD DSN=BKPP.DIA.D.PRODUSVP.SEDMOVED.D&DATE,                  00042004
//            DISP=(NEW,CATLG,DELETE),                                  00043000
//            UNIT=AFF=SYSCOP01,LABEL=(,SL,EXPDT=99000)                 00044000
//SYSCOP06 DD DSN=BKPP.DIA.D.PRODUSVP.SEDIMPUE.D&DATE,                  00044204
//            DISP=(NEW,CATLG,DELETE),                                  00044300
//            UNIT=AFF=SYSCOP01,LABEL=(,SL,EXPDT=99000)                 00044400
//SYSCOP07 DD DSN=BKPP.DIA.D.PRODUSVP.SEDDEPRE.D&DATE,                  00045004
//            DISP=(NEW,CATLG,DELETE),                                  00045102
//            UNIT=AFF=SYSCOP01,LABEL=(,SL,EXPDT=99000)                 00045202
//SYSCOP08 DD DSN=BKPP.DIA.D.PRODUSVP.SCARTERA.D&DATE,                  00045004
//            DISP=(NEW,CATLG,DELETE),                                  00045102
//            UNIT=AFF=SYSCOP01,LABEL=(,SL,EXPDT=99000)                 00045202
//SYSPRINT DD SYSOUT=X                                                  00045402
//UTPRINT  DD SYSOUT=X                                                  00045502
//SYSUDUMP DD SYSOUT=X                                                  00045602
//SYSIN   DD DSN=SIVA.CARDS(FDD2502),DISP=SHR                           00045702
//**********************************************************************
//*                           -- SOBF61D --                            *
//* OBJETIVO    :  CARGA DE IMAGEN RECORTADA DE CARTERAS               *
//*                                                                    *
//* ACTUALIZA   :  SECART      ESTE PASO SE TRANSFIRIO AL FDD1500      *
//*                            A PETICION DE GUADALUPE OROZCO/         *
//*                                          DOLORES CASTRO.           *
//*                                              01/10/93              *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
//FDD2501 EXEC PGM=IKJEFT01,
//        PARM='/DEBUG',
//         COND=(7,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SOBF61R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2501),DISP=SHR
//**********************************************************************
//*                           -- SOBF61E --                            *
//* OBJETIVO    :                                                      *
//*                                                                    *
//* ACTUALIZA   : PASO SE COPIO AL PTEPED01 POR INDICACION DE URBANO.  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                  ***PROC. ESTADISTICO *
//**********************************************************************
//FDD2500 EXEC PGM=IKJEFT01,COND=(4,LT,FDD2502),
//        PARM='/DEBUG'
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2500),DISP=SHR
//**********************************************************************00002000
//*                                                                    *00003000
//* SISTEMA        :  SISTEMA INTEGRAL DE INFORMACION ESTADISTICA      *00004000
//*                               (S. I. I. E.)                        *00004100
//*                                                                    *00004200
//* PROCESO        :  PFDFDD25                                         *00004300
//*                   TENENCIA ESTADISTICA                             *00004400
//*                                                                    *00004500
//* OBJETIVO       :  CONOCER LA POSICION DE LA CASA EN LOS            *00004600
//*                   DIFERENTES GRUPOS DE INSTRUMENTO                 *00004700
//*                                                                    *00004800
//* CORRE                                                              *00004900
//* ANTES DE       :  PFDCPD01                                         *00005000
//*                                                                    *00006000
//* DESPUES DE     :  PFDFDD25                                         *00007000
//*                                                                    *00008000
//* REALIZO        :  JOEL GONZALEZ MARTINEZ / PILAR MORAGREGA VERA    *00009000
//* FECHA          :  ENERO DE 1993            DE BONEQUI              *00009100
//*                                                                    *00009200
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *00009300
//*                                                                    *00009400
//* MODIFICO       :  RAFAEL ZULETA VARGAS                             *00009000
//* FECHA          :  MAYO  DE 1993                                    *00009100
//*                                                                    *00009200
//* OBSERVACION    :  SE MODIFICO PARA QUE CORRA EN FIN DE DIA ANTEES  *00009300
//*                   DE IMAGE COPYS A PETICION DE DOLORES CASTRO      *00009300
//*                   ANTONIO URBANO                                   *00009400
//*                                                                    *00009400
//**********************************************************************00009500
//* REGION DE OVERRIDES EN CASO DE CONTINGENCIA :                       00180000
//*                                                                     00180000
//*                                                                     00180000
//*                                                                     00180000
//*                                                                     00180000
//
