//ZMUFPD41 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  BANCA PATRIMONIAL SUITABILITY                    *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD41                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  ACTUALIZACION DE FONDOS, ADTUALIZACION DIARIA,   *00090002
//*                   ACUMULA POR CLIENTE, ACUMULA POR ESTRUCTURA Y    *00100002
//*                   EXPLOSION DE FONDOS.                             *00100002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  NINGUNA                                          *00140002
//*                                                                    *00150002
//* REALIZACION    :  SOFTWARE FACTORY STEFANINI (PGR) 08/ENE/2010     *00160002
//*                                                                    *00170002
//* OBSERVACION    :  NINGUNA                                          *00180002
//*                                                                    *00190002
//**********************************************************************
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    AUTOR   FECHA  DESCRIPCION                                      *
//*   ------- ------- -------------------------------------------------*
//*   XM09442 03MAR11 SE MODIFICA LA CTC DEL PASO ZMUF41PD Y DEL PASO  *
//*                   ZMUF41PF  SE CAMBIA LA UTILERIA DEL PASO ZMUF41PJ*
//*                   PARA QUE EJECUTE EL PROGRAMA ZM4DUA16 ADEMAS DE  *
//*                   LA CRACION  DE SU CTC                            *
//*   XM07027 11ABR08 SE CAMBIA EL ZM4DUA01 POR ZM3DUA01 MATCH DE      *
//*                   ARCHIVOS                                         *
//*   ------- ------- -------------------------------------------------*
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* FS-1.0.0-01 CAPGEMI 30ENE12 CORRECCION INCLUIR TARJETAS SYSOUT=* Y *
//*                             SYSPRINT=*, EN TODOS LOS PASOS NUEVOS  *
//* FS-1.0.0-02 CAPGEMI 23ABR12 SE AGREGA DESCARGA DE LA TABLA ZMDT691 *
//*                             AL PASO ZMUF4122                       *
//* FS-1.0.0-03 CAPGEMI 15JUN12 SE AGREGA LOS PASOS ZMUF416A A ZMUF416C*
//*                             SE MODIFICA ZMUF4105                   *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.1.0-03 CAPGEMINI 27JUN14 SE MODIFICAN LOS PASOS ZMUF4113 Y    *
//*                               ZMUF4111.                            *
//* FS-1.2.0-08 CAPGEMINI 09ENE15 SE MODIFICAN LAS TARJETAS DE CONTROL *
//*                               ZUF03T01, ZUF03T30, ZUF03T31 Y       *
//*                               ZUF03T76, Y LOS PASOS ZMUF4113 Y     *
//*                               ZMUF4111.                            *
//* FS-1.3.0-02 CAPGEMINI 30JUN17 SE MODIFICAN LONGITUDES DE ARCHIVOS. *
//*                                                                    *
//* @JSM-01     XMY4584   14JUN18 SE MODIFICAN LONGITUDES DE ARCHIVOS  *
//*                               POR 3 NUEVOS MERCADOS: PCA, GEF Y CRE*
//*--------------------------------------------------------------------*
//**********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO UNIFICADO DE MARKETING CARTERA
//*           POR GESTOR
//**********************************************************************
//*FS-2.1.0-19-INI
//ZMUF4140 EXEC PGM=ICEMAN
//SORTIN   DD DSN=MXCP.ZM.FIX.MATCH2.F2822700,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.MATCH2.F2822700.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,100),RLSE),
//            DCB=(RECFM=FB,LRECL=118,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T61),DISP=SHR
//**********************************************************************
//* PROGRAMA: ZM4DUA18
//* OBJETIVO: AGREGAR ESTRUCTURA DE SIVA AL ARCHIVO DE MARKETING
//*           UNIFICADO
//**********************************************************************
//ZMUF4139 EXEC PGM=IKJEFT1A,COND=(4,LT)
//E1NTRADA DD DSN=MXCP.ZM.TMP.MATCH2.F2822700.SRT,
//           DISP=SHR
//S1SALIDA  DD DSN=MXCP.ZM.FIX.ZM4DUA18.MKTESIVA,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,050),RLSE),
//             DCB=(RECFM=FB,LRECL=245,BLKSIZE=0,DSORG=PS)
//S2SALIDA  DD DSN=MXCP.ZM.FIX.ZM4DUA18.RECHAZO,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,050),RLSE),
//             DCB=(RECFM=FB,LRECL=103,BLKSIZE=0,DSORG=PS)
//SYSPRINT  DD SYSOUT=*
//SYSTSPRT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//QRLSDB2   DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZUF03T62),DISP=SHR
//**********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO POR CODIGO DE PUESTO
//**********************************************************************
//ZMUF4138 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN    DD DSN=MXCP.ZM.FIX.C05.SUITABIL.BCAPATRM,DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.TMP.C05.SUITABIL.BCAPATRM.SORT,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,050),RLSE),
//             DCB=(RECFM=FB,LRECL=88,BLKSIZE=0,DSORG=PS)
//SYSOUT    DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T42),DISP=SHR
//**********************************************************************
//* PROGRAMA: ZM4DUA19
//* OBJETIVO: FILTRAR ARCHIVO DE CONFIDENCIALIDAD, DEJANDO UNICAMENTE
//*           LOS NIVELES STAFF
//**********************************************************************
//ZMUF4137 EXEC PGM=IKJEFT1A,COND=(4,LT)
//E1CONFIA DD DSN=MXCP.ZM.TMP.C05.SUITABIL.BCAPATRM.SORT,
//            DISP=SHR
//S1SALIDA DD DSN=MXCP.ZM.FIX.ZM4DUA19.CONFIAMT,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=245,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZUF03T43),DISP=SHR
//**********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO CONFIA-MKT POR CODIGO DE USUARIO
//**********************************************************************
//ZMUF4136 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN    DD DSN=MXCP.ZM.FIX.ZM4DUA19.CONFIAMT,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.TMP.ZM4DUA19.CONFIAMT.SORT,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,050),RLSE),
//             DCB=(RECFM=FB,LRECL=245,BLKSIZE=0,DSORG=PS)
//SYSOUT    DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T44),DISP=SHR
//**********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO DE PERSONAS POR CODUSER
//**********************************************************************
//ZMUF4135 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN  DD DSN=MBVP.QS.GDGD.C02.GPEDT009(+0),
//           DISP=SHR
//SORTOUT DD DSN=MXCP.ZM.FIX.C02.PEDT009.SIDUSER,
//           DISP=(NEW,CATLG,DELETE),UNIT=3390,
//           SPACE=(CYL,(200,100),RLSE),
//           DCB=(RECFM=FB,LRECL=189,BLKSIZE=0,DSORG=PS)
//SYSOUT    DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T54),DISP=SHR
//**********************************************************************
//* PROGRAMA: ZM3DUA10
//* OBJETIVO: REALIZA MATCH PARA OBTENER EL GESTOR
//**********************************************************************
//ZMUF4134 EXEC PGM=ZM3DUA10,COND=(4,LT)
//E1SET809  DD DSN=MXCP.ZM.TMP.ZM4DUA19.CONFIAMT.SORT,
//             DISP=SHR
//E2SET009  DD DSN=MXCP.ZM.FIX.C02.PEDT009.SIDUSER,
//             DISP=SHR
//S1SAL809  DD DSN=MXCP.ZM.FIX.ZM3DUA10.CONFIAMT.GESTOR,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(200,100),RLSE),
//             DCB=(RECFM=FB,LRECL=245,BLKSIZE=0,DSORG=PS)
//S2SAL809  DD DSN=MXCP.ZM.FIX.ZM3DUA10.CONFIAMT.NOMATCH,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(200,100),RLSE),
//             DCB=(RECFM=FB,LRECL=50,BLKSIZE=0,DSORG=PS)
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSTSPRT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//**********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO DE MARKETING CON ESTRUCTURA Y
//*           Y CONFIABILIDAD MARKETING POR USUARIO Y NIVEL DE USUARIO
//**********************************************************************
//ZMUF4133 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN  DD DSN=MXCP.ZM.FIX.ZM3DUA10.CONFIAMT.GESTOR,
//           DISP=SHR
//        DD DSN=MXCP.ZM.FIX.ZM4DUA18.MKTESIVA,
//           DISP=SHR
//SORTOUT DD DSN=MXCP.ZM.FIX.ZM4DUA12.E1NTRADA,
//           DISP=(NEW,CATLG,DELETE),UNIT=3390,
//           SPACE=(CYL,(200,100),RLSE),
//           DCB=(RECFM=FB,LRECL=245,BLKSIZE=0,DSORG=PS)
//SYSOUT  DD SYSOUT=*
//SYSIN   DD DSN=ZIVA.ZME.CONTROL(ZUF03T53),DISP=SHR
//**********************************************************************
//* PROGRAMA: ZM4DUA12
//* OBJETIVO: GENERACION DE LA CARGA DE LA TABLA 809
//**********************************************************************
//ZMUF4132 EXEC PGM=IKJEFT1A,COND=(4,LT)
//E1NTRADA DD DSN=MXCP.ZM.FIX.ZM4DUA12.E1NTRADA,
//            DISP=SHR
//S1ZMD809 DD DSN=MXCP.ZM.FIX.ZM4DUA12.CARGA809.NEW,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,100),RLSE),
//            DCB=(RECFM=FB,LRECL=209,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZUF03T23),DISP=SHR
//**********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO POR IDUSER
//**********************************************************************
//ZMUF4131 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN  DD DSN=MXCP.ZM.FIX.ZM4DUA12.CARGA809.NEW,
//           DISP=SHR
//SORTOUT DD DSN=MXCP.ZM.TMP.ZM4DUA12.CARGA809.SORT,
//           DISP=(NEW,CATLG,DELETE),UNIT=3390,
//           SPACE=(CYL,(100,050),RLSE),
//           DCB=(RECFM=FB,LRECL=209,BLKSIZE=0,DSORG=PS)
//SYSOUT  DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T34),DISP=SHR
//**********************************************************************
//* PROGRAMA: ZM3DUA11
//* OBJETIVO: VALIDA Y CAMBIA DUPLICADOS
//**********************************************************************
//ZMUF4130 EXEC PGM=ZM3DUA11,COND=(4,LT)
//E1CAG809  DD DSN=MXCP.ZM.TMP.ZM4DUA12.CARGA809.SORT,
//             DISP=SHR
//S1SAL809  DD DSN=MXCP.ZM.FIX.ZM4DUA12.CARGA809.DUPLI,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,050),RLSE),
//             DCB=(RECFM=FB,LRECL=209,BLKSIZE=0,DSORG=PS)
//SYSPRINT  DD SYSOUT=*
//SYSTSPRT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//**********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO POR ESTRUCTURA
//**********************************************************************
//ZMUF4129 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN  DD DSN=MXCP.ZM.FIX.ZM4DUA12.CARGA809.DUPLI,DISP=SHR
//SORTOUT DD DSN=MXCP.ZM.TMP.ZM4DUA12.CARGA809.DUPLIS,
//           DISP=(NEW,CATLG,DELETE),UNIT=3390,
//           SPACE=(CYL,(100,050),RLSE),
//           DCB=(RECFM=FB,LRECL=209,BLKSIZE=0,DSORG=PS)
//SYSOUT  DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T32),DISP=SHR
//**********************************************************************
//* PROGRAMA: ZM3DUA12
//* OBJETIVO: VERIFICA ESTRUCTURA Y FORZA VIRTUALES EN CASO DE FALTAR
//**********************************************************************
//ZMUF4128 EXEC PGM=ZM3DUA12,COND=(4,LT)
//E1CAG809  DD DSN=MXCP.ZM.TMP.ZM4DUA12.CARGA809.DUPLIS,
//             DISP=SHR
//S1SAL809  DD DSN=MXCP.ZM.FIX.ZM4DUA12.CARGA809,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,050),RLSE),
//             DCB=(RECFM=FB,LRECL=209,BLKSIZE=0,DSORG=PS)
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSTSPRT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//**********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO POR USUARIO Y ELIMINA DUPLICADOS
//**********************************************************************
//ZMUF4127 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN  DD DSN=MXCP.ZM.FIX.ZM4DUA12.CARGA809,DISP=SHR
//SORTOUT DD DSN=MXCP.ZM.TMP.ZM4DUA12.CARGA809.SINDUP,
//           DISP=(NEW,CATLG,DELETE),UNIT=3390,
//           SPACE=(CYL,(100,050),RLSE),
//           DCB=(RECFM=FB,LRECL=209,BLKSIZE=0,DSORG=PS)
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T77),DISP=SHR
//*FS-2.1.0-19-FIN
//**********************************************************************
//* PROGRAMA: ICEMAN
//*FS-2.1.0-19-INI
//* OBJETIVO: ORDENAMIENTO DEL FICHERO MARKETING CON ESTRUCTURA SIVA POR
//*           CUENTA CLIENTE
//**********************************************************************
//ZMUF4126  EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ZM4DUA18.MKTESIVA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZM4DUA18.MKTESIVA.SORT,
//           DISP=(NEW,CATLG,DELETE),UNIT=3390,
//           SPACE=(CYL,(500,100),RLSE),
//             DCB=(RECFM=FB,LRECL=245,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T60),DISP=SHR
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*********************************************************************
//* PROGRAMA: ZM3DUA01
//* OBJETIVO: SE OBTIENE UN ARCHIVO CON EL LAYOUT MODIFICADO COMO LA
//*           TABLA ZMDT692 + MARKETING ESTRUCTURA, CRUCE DE ILP VS
//*           MARKETING CON ESTRUCTURA
//*********************************************************************
//ZMUF4125 EXEC PGM=ZM3DUA01,COND=(4,LT)
//E1NTRADA  DD DSN=MBVP.SG.FIX.ARCH.AFORE.MUV.D&FECHA,
//             DISP=SHR
//E2NTRADA  DD DSN=MXCP.ZM.TMP.ZM4DUA18.MKTESIVA.SORT,
//             DISP=SHR
//S1SUMACT DD DSN=MXCP.ZM.FIX.ZM3DUA01.SALILP01.F&FECHA,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,050),RLSE),
//             DCB=(RECFM=FB,LRECL=615,BLKSIZE=0,DSORG=PS)
//S2OMISIO  DD DSN=MXCP.ZM.FIX.ZM3DUA01.OMISION5,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,050),RLSE),
//             DCB=(RECFM=FB,LRECL=51,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//**********************************************************************
//* PROGRAMA: ZM4DUA17
//* OBJETIVO: MATCH DE FICHEROS MARKETING CARTERA CON ESTRUCTURA VS SIVA
//**********************************************************************
//ZMUF4124 EXEC PGM=IKJEFT1A,COND=(4,LT)
//ZMDU17A1  DD DSN=MXCP.ZM.TMP.ZM4DUA18.MKTESIVA.SORT,
//             DISP=SHR
//ZMDU17A2  DD DSN=MXCP.ZM.FIX.REFO692.PATR,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(10,5),RLSE),
//             DCB=(LRECL=615,RECFM=FB,BLKSIZE=0,DSORG=PS)
//ZMDU17A3  DD DSN=MXCP.ZM.FIX.DOMI2DO.PATR,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(5,2),RLSE),
//             DCB=(LRECL=103,RECFM=FB,BLKSIZE=0,DSORG=PS)
//ZMDU17A4  DD DSN=MXCP.ZM.FIX.DOMI4TO.PATR,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(5,2),RLSE),
//             DCB=(LRECL=046,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT  DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//QRLSDB2   DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZUF03T63),DISP=SHR
//**********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO DE FICHERO MUV MARKETING CON ESTRUCTURA
//**********************************************************************
//ZMUF4123 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN    DD DSN=MXCP.ZM.FIX.REFO692.PATR,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.TMP.REFO692.PATR.SORT,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,050),RLSE),
//             DCB=(RECFM=FB,LRECL=615,BLKSIZE=0,DSORG=PS)
//SYSOUT    DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T75),DISP=SHR
//**********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO FICHERO DESCARGA ZMDT692 Y ZMDT691  DEL
//*       ESTADO DE CUENTA POR TIPO DE BANCA, OFICINA, IPROM Y CTAMUV
//**********************************************************************
//ZMUF4122 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN    DD DSN=MXCP.ZM.FIX.ZM4DUA13.DESCA692,
//             DISP=SHR
//          DD DSN=MXCP.ZM.FIX.ZM4DUA27.DESCA691,
//             DISP=SHR
//SORTOUT   DD DSN=MXCP.ZM.TMP.ZM4DUA13.DESCA692.SORT,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,050),RLSE),
//             DCB=(RECFM=FB,LRECL=287,BLKSIZE=0,DSORG=PS)
//SYSOUT    DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T75),DISP=SHR
//**********************************************************************
//* PROGRAMA: ZM3DUA25
//* OBJETIVO: SE OBTIENE FICHERO CON EL LAYOUT MODIFICADO COMO LA TABLA
//*           ZMDT692 MAS MARKETING Y ESTRUCTURA, MATCH DE MARKETING CON
//*           ESTRUCTURA VS DESCARGA ZMDT692(ESTADOS DE CUENTA).
//**********************************************************************
//ZMUF4121 EXEC PGM=ZM3DUA25,COND=(4,LT)
//E1NTRADA  DD DSN=MXCP.ZM.TMP.REFO692.PATR.SORT,
//             DISP=SHR
//E2NTRADA  DD DSN=MXCP.ZM.TMP.ZM4DUA13.DESCA692.SORT,
//             DISP=SHR
//S1SUMEST  DD DSN=MXCP.ZM.FIX.ZM3DUA25.SALMUV01.F&FECHA,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(100,050),RLSE),
//             DCB=(RECFM=FB,LRECL=615,BLKSIZE=0,DSORG=PS)
//S2OMISI6  DD DSN=MXCP.ZM.FIX.ZM3DUA25.OMISION6,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(050,030),RLSE),
//             DCB=(RECFM=FB,LRECL=72,BLKSIZE=0,DSORG=PS)
//SYSPRINT  DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSTSPRT  DD SYSOUT=*
//SYSIN     DD DUMMY
//SYSTSIN   DD DUMMY
//SYSOUT    DD SYSOUT=*
//**********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO DE DESCARGA ILP Y MUV
//**********************************************************************
//ZMUF4120 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZM4DUA13.DESCA692,
//            DISP=SHR
//*FS-2.1.0-19-FIN
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZM4DUB01.SORTEADO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//*FS-2.1.0-19-INI
//            DCB=(RECFM=FB,LRECL=615,BLKSIZE=0,DSORG=PS)
//*FS-2.1.0-19-FIN
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T01),DISP=SHR
//*FS-2.1.0-19-INI
//**********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO DE DESCARGA DE LA TABLA ZMDT807
//**********************************************************************
//ZMUF4119 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ZM4DUB01.DESCA807,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZM4DUB01.DESCA807.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,150),RLSE),
//*FS-1.3.0-02-INI
//*           DCB=(RECFM=FB,LRECL=124,BLKSIZE=0,DSORG=PS)
//*@JSM-01-I
//*           DCB=(RECFM=FB,LRECL=151,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS)
//*@JSM-01-F
//*FS-1.3.0-02-FIN
//SYSOUT    DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T76),DISP=SHR
//**********************************************************************
//* PROGRAMA: ZM4DUB01
//* OBJETIVO: COMPARACION DE CLAVE DE FONDOS DE LOS ARCHIVOS SORTEADOS
//*           DE LAS TABLAS 692 Y 807 GENERANDO ARCHIVO DE FONDOS PARA
//*           EL LLENADO DE LA TABLA 807.
//**********************************************************************
//ZMUF4118 EXEC PGM=IKJEFT1A,COND=(4,LT)                                00780700
//*FS-2.1.0-19-FIN
//E1SOR692 DD DSN=MXCP.ZM.TMP.ZM4DUB01.SORTEADO,                        00006200
//            DISP=SHR
//E1DES807 DD DSN=MXCP.ZM.TMP.ZM4DUB01.DESCA807.SRT,
//            DISP=SHR
//S1COMFON DD DSN=MXCP.ZM.FIX.ZM4DUB01.COMFONDO,                        00006200
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,                         00006300
//            SPACE=(CYL,(200,100),RLSE),                               00006600
//*FS-1.3.0-02-INI
//*           DCB=(RECFM=FB,LRECL=124,BLKSIZE=0,DSORG=PS)
//*@JSM-01-I
//*          DCB=(RECFM=FB,LRECL=142,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=151,BLKSIZE=0,DSORG=PS)
//*@JSM-01-F
//*FS-1.3.0-02-FIN
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF03T02),DISP=SHR
//**********************************************************************
//* PROGRAMA: ICEMAN
//*FS-2.1.0-19-INI
//* OBJETIVO: ORDENAMIENTO DE ARCHIVOS ILP Y MUV
//**********************************************************************
//ZMUF4117 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZM3DUA01.SALILP01.F&FECHA,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ZM3DUA25.SALMUV01.F&FECHA,
//            DISP=SHR
//*FS-2.1.0-19-FIN
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZM4DUA09.DESCA692.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//*FS-2.1.0-19-INI
//            DCB=(RECFM=FB,LRECL=615,BLKSIZE=0,DSORG=PS)
//*FS-2.1.0-19-FIN
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T03),DISP=SHR
//**********************************************************************
//* PROGRAMA: ZM4DUA09
//*FS-2.1.0-19-INI
//* OBJETIVO: SE CLASIFICA Y SELECCIONA LA INFORMACION DE LAS TABLAS QUE
//*           SE DEBEN ACTUALIZAR, TOMA LOS REGISTROS CORRESPONDIENTES A
//*           FONDOS Y ESCRIBE DE 1 A 4 REGISTROS DE SALIDA CON LOS
//*           IMPORTES CORRESPONDIENTES DESPUES DE REALIZAR LA EXPLOSION
//**********************************************************************
//ZMUF4116 EXEC PGM=IKJEFT1A,COND=(4,LT)                                00780700
//*FS-2.1.0-19-FIN
//E1ZMD692 DD DSN=MXCP.ZM.TMP.ZM4DUA09.DESCA692.SORT,                   00006200
//            DISP=SHR
//S1ZMD692 DD DSN=MXCP.ZM.FIX.ZM4DUA09.EXPLOSIO,                        00006200
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,                         00006300
//            SPACE=(CYL,(200,100),RLSE),                               00006600
//*FS-2.1.0-19-INI
//            DCB=(RECFM=FB,LRECL=615,BLKSIZE=0,DSORG=PS)
//*FS-2.1.0-19-FIN
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF04T04),DISP=SHR
//*                                                                   * 00780300
//*********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO DE EXPLOSIONADO POR
//*           ESTADO DE CUENTA POR TIPO DE BANCA, OFICINA, IPROM Y
//*           CTAMUV.
//*********************************************************************
//*FS-2.1.0-19-INI
//ZMUF4115 EXEC PGM=ICEMAN,COND=(4,LT)
//*FS-2.1.0-19-FIN
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZM4DUA09.EXPLOSIO,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZM4DUA09.EXPLOSIX,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//*FS-2.1.0-19-INI
//            DCB=(RECFM=FB,LRECL=615,BLKSIZE=0,DSORG=PS)
//*FS-2.1.0-19-FIN
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T03),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4DUB02
//* OBJETIVO: ACTUALIZACION DIARIA
//**********************************************************************
//*FS-2.1.0-19-INI
//ZMUF4114 EXEC PGM=IKJEFT1A,COND=(4,LT)                                00780700
//*FS-2.1.0-19-FIN
//E1ZMD692 DD DSN=MXCP.ZM.FIX.ZM4DUA09.EXPLOSIX,                        00006200
//            DISP=SHR
//S1ZMD802 DD DSN=MXCP.ZM.FIX.ZM4DUB01.CARGA802,                        00006200
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,                         00006300
//            SPACE=(CYL,(200,100),RLSE),                               00006600
//*FS-2.1.0-19-INI
//*FS-1.3.0-02-INI
//*           DCB=(RECFM=FB,LRECL=287,BLKSIZE=0,DSORG=PS)
//*@JSM-01-I
//*           DCB=(RECFM=FB,LRECL=306,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=387,BLKSIZE=0,DSORG=PS)
//*@JSM-01-F
//*FS-1.3.0-02-FIN
//*FS-2.1.0-19-FIN
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF04T21),DISP=SHR
//*                                                                   * 00780300
//**********************************************************************
//* PROGRAMA: ICEMAN
//*FS-2.1.0-19-INI
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO DE PERFILES POR NUMERO DE
//*           CLIENTE
//**********************************************************************
//ZMUF4113 EXEC PGM=ICEMAN,COND=(4,LT)
//*FS-2.1.0-19-FIN
//SYSOUT   DD SYSOUT=*
//*FS-1.1.0-03-INI
//*SORTIN   DD DSN=MBVP.IU.FVD07.UNLOAD.IUDT033,DISP=SHR
//*FS-1.2.0-08-INI
//*SORTIN   DD DSN=MXCP.ZM.FIX.F&FECHA..ZMDT821.PDV,DISP=SHR
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMUF44PH.DESCAPDV,DISP=SHR
//*FS-1.2.0-08-FIN
//*FS-1.1.0-03-FIN
//*
//*FS-1.1.0-03-INI
//*SORTOUT  DD DSN=MXCP.ZM.TMP.UNLOAD.IUDT033.SORT,
//*FS-1.2.0-08-INI
//*SORTOUT  DD DSN=MXCP.ZM.TMP.UNLOAD.ZMDT821.PDV.SORT,
//SORTOUT  DD DSN=MXCP.ZM.TMP.UNLOAD.ZMDTPDV.SORT,
//*FS-1.2.0-08-FIN
//*FS-1.1.0-03-FIN
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//*FS-1.1.0-03-INI
//*           DCB=(RECFM=FB,LRECL=85,BLKSIZE=0,DSORG=PS)
//*FS-1.2.0-08-INI
//*          DCB=(RECFM=FB,LRECL=194,BLKSIZE=0,DSORG=PS)
//           DCB=(RECFM=FB,LRECL=233,BLKSIZE=0,DSORG=PS)
//*FS-1.2.0-08-FIN
//*FS-1.1.0-03-FIN
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T30),DISP=SHR
//**********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO DE CARGA802 POR NUMERO DE
//*           CLIENTE
//**********************************************************************
//*FS-2.1.0-19-INI
//ZMUF4112 EXEC PGM=ICEMAN,COND=(4,LT)
//*FS-2.1.0-19-FIN
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZM4DUB01.CARGA802,DISP=SHR
//*
//*FS-2.1.0-19-INI
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZM4DUB02.CARGA802.CTESRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//*FS-1.3.0-02-INI
//*           DCB=(RECFM=FB,LRECL=287,BLKSIZE=0,DSORG=PS)
//*@JSM-01-I
//*           DCB=(RECFM=FB,LRECL=306,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=387,BLKSIZE=0,DSORG=PS)
//*@JSM-01-F
//*FS-1.3.0-02-FIN
//*FS-2.1.0-19-FIN
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T31),DISP=SHR
//*********************************************************************
//* PROGRAMA: IKJEFT1A / ZM4DUA16
//* OBJETIVO: REALIZR EL MATCH PARA OBTENER EL MODELO DEL CLIENTE
//*********************************************************************
//*FS-2.1.0-19-INI
//ZMUF4111 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*FS-1.1.0-03-INI
//*E1SET033 DD DSN=MXCP.ZM.TMP.UNLOAD.IUDT033.SORT,
//*FS-1.2.0-08-INI
//*E1SET033 DD DSN=MXCP.ZM.TMP.UNLOAD.ZMDT821.PDV.SORT,
//E1SET033 DD DSN=MXCP.ZM.TMP.UNLOAD.ZMDTPDV.SORT,
//*FS-1.2.0-08-FIN
//*FS-1.1.0-03-FIN
//*FS-2.1.0-19-FIN
//            DISP=SHR
//E1SOR802 DD DSN=MXCP.ZM.TMP.ZM4DUB02.CARGA802.CTESRT,
//            DISP=SHR
//SISAL802 DD DSN=MXCP.ZM.FIX.ZM3DUA13.CARGA802.MODELO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//*FS-2.1.0-19-INI
//*FS-1.3.0-02-INI
//*           DCB=(RECFM=FB,LRECL=287,BLKSIZE=0,DSORG=PS)
//*@JSM-01-I
//*           DCB=(RECFM=FB,LRECL=306,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=387,BLKSIZE=0,DSORG=PS)
//*@JSM-01-F
//*FS-1.3.0-02-FIN
//*FS-2.1.0-19-FIN
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZUF04T05),DISP=SHR
//***********************************************************************
//** PROGRAMA: ICEMAN
//** OBJETIVO: ORDENAMIENTO DEL ARCHIVO DE DESCARGA DE LA TABLA ZMDT802
//**          POR TBANCA, DIVISION, OFICINA, IPROM, NUMCLIENT Y CUENTABP
//***********************************************************************
//*FS-2.1.0-19-INI
//ZMUF4110 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT  DD SYSOUT=*
//SORTIN  DD DSN=MXCP.ZM.FIX.ZM3DUA13.CARGA802.MODELO,
//*FS-2.1.0-19-FIN
//           DISP=SHR
//*FS-2.1.0-19-INI
//SORTOUT DD DSN=MXCP.ZM.TMP.ZM4DUA04.CARGA802.MODSRT,
//           DISP=(NEW,CATLG,DELETE),UNIT=3390,
//           SPACE=(CYL,(200,100),RLSE),                                4,2),(4,
//*FS-1.3.0-02-INI
//*          DCB=(RECFM=FB,LRECL=287,BLKSIZE=0,DSORG=PS)
//*@JSM-01-I
//*          DCB=(RECFM=FB,LRECL=306,BLKSIZE=0,DSORG=PS)
//           DCB=(RECFM=FB,LRECL=387,BLKSIZE=0,DSORG=PS)
//*@JSM-01-F
//*FS-1.3.0-02-FIN
//*FS-2.1.0-19-FIN
//SYSIN   DD DSN=ZIVA.ZME.CONTROL(ZUF03T05),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4DUA04
//* OBJETIVO: ACTUALIZACION DE CAMPOS EN LA TABLA ACUMULADO PORTAFOLIO
//*          POR CLIENTE DEL DIA QUEDANDO SOLO UN REGISTRO POR CLIENTE
//**********************************************************************
//*FS-2.1.0-19-INI
//ZMUF4109 EXEC PGM=IKJEFT1A,COND=(4,LT)                                00780700
//E1SORT02 DD DSN=MXCP.ZM.TMP.ZM4DUA04.CARGA802.MODSRT,
//*FS-2.1.0-19-FIN
//           DISP=SHR
//S1CAR803 DD DSN=MXCP.ZM.FIX.ZM4DUA04.CARGA803.NUEVO,                  00006200
//           DISP=(NEW,CATLG,CATLG),UNIT=3390,                          00006300
//           SPACE=(CYL,(200,100),RLSE),                                (4,2),(4
//*FS-1.3.0-02-INI
//*          DCB=(RECFM=FB,LRECL=208,BLKSIZE=0,DSORG=PS)
//*@JSM-01-I
//*          DCB=(RECFM=FB,LRECL=227,BLKSIZE=0,DSORG=PS)
//           DCB=(RECFM=FB,LRECL=308,BLKSIZE=0,DSORG=PS)
//*@JSM-01-F
//*FS-1.3.0-02-FIN
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT  DD SYSOUT=*                                                   00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZUF03T06),DISP=SHR
//*                                                                   * 00780300
//***********************************************************************
//** PROGRAMA: ICEMAN
//** OBJETIVO: ORDENAMIENTO DE LA DESCARGA POR LLAVE
//***********************************************************************
//*FS-2.1.0-19-INI
//ZMUF4108 EXEC PGM=ICEMAN,COND=(4,LT)
//*FS-2.1.0-19-FIN
//SYSOUT  DD SYSOUT=*
//SORTIN  DD DSN=MXCP.ZM.FIX.ZMUF44P4.DESCA803,
//           DISP=SHR
//*FS-2.1.0-19-INI
//SORTOUT DD DSN=MXCP.ZM.TMP.ZMUF44P4.DESCA803.PORKEY,
//*FS-2.1.0-19-FIN
//           DISP=(NEW,CATLG,DELETE),UNIT=3390,
//           SPACE=(CYL,(200,100),RLSE),                                4,2),(4,
//*FS-1.3.0-02-INI
//*          DCB=(RECFM=FB,LRECL=208,BLKSIZE=0,DSORG=PS)
//*@JSM-01-I
//*          DCB=(RECFM=FB,LRECL=227,BLKSIZE=0,DSORG=PS)
//           DCB=(RECFM=FB,LRECL=308,BLKSIZE=0,DSORG=PS)
//*@JSM-01-F
//*FS-1.3.0-02-FIN
//SYSIN   DD DSN=ZIVA.ZME.CONTROL(ZUF03T45),DISP=SHR
//*
//********************************************************************* *
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO POR LLAVE
//********************************************************************* *
//*FS-2.1.0-19-INI
//ZMUF4107 EXEC PGM=ICEMAN,COND=(4,LT)
//*FS-2.1.0-19-FIN
//SYSOUT  DD SYSOUT=*
//SORTIN  DD DSN=MXCP.ZM.FIX.ZM4DUA04.CARGA803.NUEVO,
//           DISP=SHR
//*FS-2.1.0-19-INI
//SORTOUT DD DSN=MXCP.ZM.TMP.ZM4DUA04.CARGA803.PORKEY,
//*FS-2.1.0-19-FIN
//           DISP=(NEW,CATLG,DELETE),UNIT=3390,
//           SPACE=(CYL,(200,100),RLSE),                                4,2),(4,
//*FS-1.3.0-02-INI
//*          DCB=(RECFM=FB,LRECL=208,BLKSIZE=0,DSORG=PS)
//*@JSM-01-I
//*          DCB=(RECFM=FB,LRECL=227,BLKSIZE=0,DSORG=PS)
//           DCB=(RECFM=FB,LRECL=308,BLKSIZE=0,DSORG=PS)
//*@JSM-01-F
//*FS-1.3.0-02-FIN
//SYSIN   DD DSN=ZIVA.ZME.CONTROL(ZUF03T45),DISP=SHR
//*
//*********************************************************************
//* PROGRAMA: ZM3DUA18
//* OBJETIVO: REALIZA MATCH PARA OBTENER EL POSCONTROL
//*********************************************************************
//*FS-2.1.0-19-INI
//ZMUF4106 EXEC PGM=ZM3DUA18,COND=(4,LT)
//E1SET803 DD DSN=MXCP.ZM.TMP.ZM4DUA04.CARGA803.PORKEY,
//            DISP=SHR
//E2SET803 DD DSN=MXCP.ZM.TMP.ZMUF44P4.DESCA803.PORKEY,
//*FS-2.1.0-19-FIN
//            DISP=SHR
//S1SAL803 DD DSN=MXCP.ZM.FIX.ZM4DUA04.CARGA803.MATCH,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),                               4,2),(4,
//*FS-1.3.0-02-INI
//*           DCB=(RECFM=FB,LRECL=208,BLKSIZE=0,DSORG=PS)
//*@JSM-01-I
//*           DCB=(RECFM=FB,LRECL=227,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=308,BLKSIZE=0,DSORG=PS)
//*@JSM-01-F
//*FS-1.3.0-02-FIN
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*FS-1.0.0-03-I
//**********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: EJECUCION DE LA UTILERIA ICEMAN PARA ORDENAR POR
//*           PROMOTOR
//**********************************************************************
//ZMUF416A EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZM4DUA04.CARGA803.MATCH,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZM3DUA28.CARGA803.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),                               4,2),(4,
//*FS-1.3.0-02-INI
//*           DCB=(RECFM=FB,LRECL=208,BLKSIZE=0,DSORG=PS)
//*@JSM-01-I
//*           DCB=(RECFM=FB,LRECL=227,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=308,BLKSIZE=0,DSORG=PS)
//*@JSM-01-F
//*FS-1.3.0-02-FIN
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF04T06),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: EJECUCION DE LA UTILERIA ICEMAN PARA ORDENAR POR
//*           PROMOTOR
//**********************************************************************
//ZMUF416B EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ZM4DUA12.CARGA809.SINDUP,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZM3DUA28.CARGA809.SINDUP.SRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),                               4,2),(4,
//            DCB=(RECFM=FB,LRECL=209,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF04T07),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM3DUA28
//* OBJETIVO: EJECUCIONDEL PROGRAMA QUE VALIDA Y PEGA EL TIPO DE       *
//*           PROMOTOR PATRIMONIAL O PRIVADO.
//**********************************************************************
//ZMUF416C EXEC PGM=ZM3DUA28,COND=(4,LT)                                00780700
//E1NTRADA DD DSN=MXCP.ZM.FIX.ZM3DUA28.CARGA809.SINDUP.SRT,
//            DISP=SHR
//E2NTRADA DD DSN=MXCP.ZM.FIX.ZM3DUA28.CARGA803.SRT,                    00006200
//            DISP=SHR                                                  00006300
//S1SAL803 DD DSN=MXCP.ZM.FIX.ZM3DUA28.CARGA803,                        00006200
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00006300
//            SPACE=(CYL,(200,100),RLSE),                               4,2),(4,
//*FS-1.3.0-02-INI
//*           DCB=(RECFM=FB,LRECL=208,BLKSIZE=0,DSORG=PS)
//*@JSM-01-I
//*           DCB=(RECFM=FB,LRECL=227,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=308,BLKSIZE=0,DSORG=PS)
//*@JSM-01-F
//*FS-1.3.0-02-FIN
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSTSPRT DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSOUT   DD SYSOUT=*                                                  00780900
//*FS-1.0.0-03-F
//**********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO
//*           POR NUMCLIENT IPROM OFICINA DIVISION TBANCA
//**********************************************************************
//*FS-2.1.0-19-INI
//ZMUF4105 EXEC PGM=ICEMAN,COND=(4,LT)
//*FS-2.1.0-19-FIN
//SYSOUT   DD SYSOUT=*
//*FS-1.0.0-03-I
//*SORTIN   DD DSN=MXCP.ZM.FIX.ZM4DUA04.CARGA803.MATCH,
//SORTIN   DD DSN=MXCP.ZM.FIX.ZM3DUA28.CARGA803,
//*FS-1.0.0-03-F
//            DISP=SHR
//*FS-2.1.0-19-INI
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZM4DUA04.CARGA803,
//*FS-2.1.0-19-FIN
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),                               4,2),(4,
//*FS-1.3.0-02-INI
//*           DCB=(RECFM=FB,LRECL=208,BLKSIZE=0,DSORG=PS)
//*@JSM-01-I
//*           DCB=(RECFM=FB,LRECL=227,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=308,BLKSIZE=0,DSORG=PS)
//*@JSM-01-F
//*FS-1.3.0-02-FIN
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T51),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM3DUA05
//* OBJETIVO: TODOS LOS REGISTROS DE LOS CLIENTES DE UN BANQUERO SE
//*           ACUMULAN AL REGISTRO DE BANCQUERO, QUE A SU VEZ SE
//*           ACUMULAN A LA PLAZA Y ASI SUCESIVAMENTE A LOS DE DIVISION,
//*           BANCA Y FINALMENTE A UN REGISTRO TOTAL.
//**********************************************************************
//*FS-2.1.0-19-INI
//ZMUF4104 EXEC PGM=ZM3DUA05,COND=(4,LT)                                00780700
//E1CAG803 DD DSN=MXCP.ZM.TMP.ZM4DUA04.CARGA803,
//*FS-2.1.0-19-FIN
//            DISP=SHR
//S1COMFON DD DSN=MXCP.ZM.FIX.ZM3DUA05.CARGA805,                        00006200
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,                         00006300
//            SPACE=(CYL,(200,100),RLSE),                               4,2),(4,
//            DCB=(RECFM=FB,LRECL=89,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSTSPRT DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSOUT   DD SYSOUT=*                                                  00780900
//**********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO POR BANQUERO, OFICINA,
//*           DIVISION Y AGREGA 'A' A BANCA
//**********************************************************************
//*FS-2.1.0-19-INI
//ZMUF4103 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ZM4DUA04.CARGA803,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZM4DUA04.CARGA803.SORT,
//*FS-2.1.0-19-FIN
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),                               4,2),(4,
//*FS-1.3.0-02-INI
//*           DCB=(RECFM=FB,LRECL=208,BLKSIZE=0,DSORG=PS)
//*@JSM-01-I
//*           DCB=(RECFM=FB,LRECL=227,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=308,BLKSIZE=0,DSORG=PS)
//*@JSM-01-F
//*FS-1.3.0-02-FIN
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T46),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM3DUA05
//* OBJETIVO: TODOS LOS REGISTROS DE LOS CLIENTES DE UN BANQUERO SE
//*           ACUMULAN AL REGISTRO DE BANCQUERO, QUE A SU VEZ SE
//*           ACUMULAN A LA PLAZA Y ASI SUCESIVAMENTE A LOS DE DIVISION,
//*           BANCA Y FINALMENTE A UN REGISTRO TOTAL.
//**********************************************************************
//*FS-2.1.0-19-INI
//ZMUF4102 EXEC PGM=ZM3DUA05,COND=(4,LT)                                00780700
//E1CAG803 DD DSN=MXCP.ZM.TMP.ZM4DUA04.CARGA803.SORT,
//*FS-2.1.0-19-FIN
//            DISP=SHR
//S1COMFON DD DSN=MXCP.ZM.FIX.ZM3DUA05.CARGA805.AMBAS,                  00006200
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,                         00006300
//            SPACE=(CYL,(200,100),RLSE),                               4,2),(4,
//            DCB=(RECFM=FB,LRECL=89,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSTSPRT DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSOUT   DD SYSOUT=*                                                  00780900
//*
//**********************************************************************
//* PROGRAMA: ZM3DUA06
//* OBJETIVO: TODOS LOS REGISTROS DE LOS LIM-PORT DE UN BANQUERO SE
//*           ACUMULAN AL REGISTRO DE BANCQUERO, QUE A SU VEZ SE
//*           ACUMULAN A LA PLAZA Y ASI SUCESIVAMENTE A LOS DE DIVISION,
//*           BANCA Y FINALMENTE A UN REGISTRO TOTAL.
//**********************************************************************
//*FS-2.1.0-19-INI
//ZMUF4101 EXEC PGM=ZM3DUA06,COND=(4,LT)
//*FS-2.1.0-19-FIN
//E1CAG803 DD DSN=MXCP.ZM.TMP.ZM4DUA04.CARGA803,
//            DISP=SHR
//S1SAL803 DD DSN=MXCP.ZM.FIX.ZM3DUA06.CARGA803.EXTRA1,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//*FS-1.3.0-02-INI
//*           DCB=(RECFM=FB,LRECL=208,BLKSIZE=0,DSORG=PS)
//*@JSM-01-I
//*           DCB=(RECFM=FB,LRECL=227,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=308,BLKSIZE=0,DSORG=PS)
//*@JSM-01-F
//*FS-1.3.0-02-FIN
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//**********************************************************************
//* PROGRAMA: ZM3DUA06
//* OBJETIVO: TODOS LOS REGISTROS DE LOS LIM-PORT DE UN BANQUERO SE
//*           ACUMULAN AL REGISTRO DE BANCQUERO, QUE A SU VEZ SE
//*           ACUMULAN A LA PLAZA Y ASI SUCESIVAMENTE A LOS DE DIVISION,
//*           BANCA Y FINALMENTE A UN REGISTRO TOTAL.
//**********************************************************************
//*FS-2.1.0-19-INI
//ZMUF4100 EXEC PGM=ZM3DUA06,COND=(4,LT)
//E1CAG803 DD DSN=MXCP.ZM.TMP.ZM4DUA04.CARGA803.SORT,
//*FS-2.1.0-19-FIN
//            DISP=SHR
//S1SAL803 DD DSN=MXCP.ZM.FIX.ZM3DUA06.CARGA803.EXTRA2,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//*FS-1.3.0-02-INI
//*           DCB=(RECFM=FB,LRECL=208,BLKSIZE=0,DSORG=PS)
//*@JSM-01-I
//*           DCB=(RECFM=FB,LRECL=227,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=308,BLKSIZE=0,DSORG=PS)
//*@JSM-01-F
//*FS-1.3.0-02-FIN
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
