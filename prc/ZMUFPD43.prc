//ZMUFPD43 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  BANCA PATRIMONIAL SUITABILITY                    *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD43                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  DEPURACION DE HISTORICOS                         *00090002
//*                                                                    *00100002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  NINGUNA                                          *00140002
//*                                                                    *00150002
//* REALIZACION    :  SOFTWARE FACTORY STEFANINI (PGR) 08/ENE/2010     *00160002
//*                                                                    *00170002
//* OBSERVACION    :  NINGUNA                                          *00180002
//*                                                                    *00190002
//**********************************************************************00240002
//* HISTORIA                                                           *00190002
//*--------------------------------------------------------------------*00190002
//* 2010-SEP-08 XM07027 SE CAMBIAN LR POR CAMBIOS EN ESTRUCTURAS        00190002
//*                     Y SE INCLUYE PROCESO PARA ZMDT811
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.1.0-02 CAPGEMINI 27NOV14 SE AGREGA EL NUEVO PASO ZMUF43P4.    *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*    RRT      XM06657   14AGO18 SE MODIFICAN LA LONG DE LOS ARCHIVOS *
//*                               DE SALIDA EN EL PASO ZMUF43P1        *
//*--------------------------------------------------------------------*
//**********************************************************************
//* PROGRAMA: ZM3DUA07
//* OBJETIVO: GENERA ARCHIVOS CON INFORMACION DE LOS  ñANIOS MAYORES O
//*           IGUALES AL ACTUAL DE LA TABLA ZMDT804.
//**********************************************************************
//ZMUF43P1 EXEC PGM=ZM3DUA07                                            00780700
//E1DES804 DD DSN=MXCP.ZM.FIX.ZM4DUA07.DESCA804,                        00006200
//            DISP=SHR
//S1DEL804 DD DSN=MXCP.ZM.FIX.ZM3DUA07.MAYOR,                           00006200
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,                         00006300
//            SPACE=(CYL,(200,100),RLSE),                               00006600
//*           DCB=(RECFM=FB,LRECL=204,BLKSIZE=0,DSORG=PS)
//*RRT-INI
//*           DCB=(RECFM=FB,LRECL=223,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=304,BLKSIZE=0,DSORG=PS)
//*RRT-FIN
//S1CAR804 DD DSN=MXCP.ZM.FIX.ZM3DUA07.MENOR,                           00006200
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,                         00006300
//            SPACE=(CYL,(200,100),RLSE),                               00006600
//*           DCB=(RECFM=FB,LRECL=204,BLKSIZE=0,DSORG=PS)
//*RRT-INI
//*           DCB=(RECFM=FB,LRECL=223,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=304,BLKSIZE=0,DSORG=PS)
//*RRT-FIN
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSTSPRT DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSOUT   DD SYSOUT=*                                                  00780900
//*                                                                    *00780300
//**********************************************************************
//* PROGRAMA: ZM3DUA08
//* OBJETIVO: GENERA ARCHIVOS CON INFORMACION DE LOS ANIOS MAYORES O
//*           IGUALES AL ACTUAL DE LA TABA ZMDT806.
//**********************************************************************
//ZMUF43P2 EXEC PGM=ZM3DUA08,COND=(4,LT)                                00780700
//E1DES806 DD DSN=MXCP.ZM.FIX.ZM4DUA08.DESCA806,                        00006200
//            DISP=SHR
//S1DEL806 DD DSN=MXCP.ZM.FIX.ZM3DUA08.MAYOR,                           00006200
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,                         00006300
//            SPACE=(CYL,(200,100),RLSE),                               00006600
//            DCB=(RECFM=FB,LRECL=98,BLKSIZE=0,DSORG=PS)
//S1CAR806 DD DSN=MXCP.ZM.FIX.ZM3DUA08.MENOR,                           00006200
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,                         00006300
//            SPACE=(CYL,(200,100),RLSE),                               00006600
//            DCB=(RECFM=FB,LRECL=98,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSTSPRT DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSOUT   DD SYSOUT=*                                                  00780900
//*
//**********************************************************************
//* PROGRAMA: ZM3DUA09
//* OBJETIVO: GENERA ARCHIVOS CON INFORMACION DE LOS ANIOS MAYORES O
//*           IGUALES AL ACTUAL DE LA TABA ZMDT811.
//**********************************************************************
//ZMUF43P3 EXEC PGM=ZM3DUA09,COND=(4,LT)                                00780700
//E1DES811 DD DSN=MXCP.ZM.FIX.ZM4DUA08.DESCA811,                        00006200
//            DISP=SHR
//S1DEL811 DD DSN=MXCP.ZM.FIX.ZM3DUA09.MAYOR,                           00006200
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,                         00006300
//            SPACE=(CYL,(200,100),RLSE),                               00006600
//            DCB=(RECFM=FB,LRECL=57,BLKSIZE=0,DSORG=PS)
//S1CAR811 DD DSN=MXCP.ZM.FIX.ZM3DUA09.MENOR,                           00006200
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,                         00006300
//            SPACE=(CYL,(200,100),RLSE),                               00006600
//            DCB=(RECFM=FB,LRECL=57,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSTSPRT DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSOUT   DD SYSOUT=*                                                  00780900
//*                                                                    *00780300
//*FS-1.1.0-02-INI
//*--------------------------------------------------------------------*
//* PASO    : ZMUF43P4                                                 *
//* PROGRAMA: IKJEFT01 (ZM4EWL45)                                      *
//* FUNCION : DA DE BAJA EMISORAS WARRANTS SIN POSICION Y CON FECHA DE *
//*           VENCIMIENTO IGUAL A LA DEL PROCESO.                      *
//*--------------------------------------------------------------------*
//ZMUF43P4 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZWL48T01),DISP=SHR
//*FS-1.1.0-02-FIN
//*
//**********************************************************************
