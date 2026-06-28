//ZMUFPD42 PROC                                                         00010002
//**********************************************************************00020002
//* SISTEMA        :  BANCA PATRIMONIAL SUITABILITY                    *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD42                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  ACTUALIZACION DE HISTORICOS                      *00090002
//*                                                                    *00090002
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
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* FS-0.0.0-01  CAPGEMI 22MAR12  SE AGREGAN LOS PASOS ZMUF42P3,       *
//*                               ZMUF42P4 Y ZMUF42P5                  *
//* FS-0.0.0-02  CAPGEMI 23ABR12  SE AGREGAN EL PASO ZMUF42P6          *
//**********************************************************************
//* RRT-INI      XM06657 30ENE19  SE AGREGA ARCHIVO PARA HACER LA CARGA*
//* RRT-FIN                       DE LA TABLA ZMDT804                  *
//**********************************************************************
//* PROGRAMA: ZM4DUA06
//* OBJETIVO: LA INFORMACION DEL DIA SE TRASPASA A LA TABLA HISTORICA
//*           ZMDT804.
//**********************************************************************
//ZMUF42P1 EXEC PGM=IKJEFT1A,COND=(4,LT)                                00780700
//*RRT-INI
//E1ZMD803 DD DSN=MXCP.ZM.TMP.ZM4DUA04.CARGA803,
//            DISP=SHR
//*RRT-FIN
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF03T08),DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF03T08),DISP=SHR
//*                                                                    *00780300
//**********************************************************************
//* PROGRAMA: ZM4DUB06
//* OBJETIVO: LA INFORMACION DEL DIA SE TRASPASA A LA TABLA HISTORICA
//*           ZMDT806.
//**********************************************************************
//ZMUF42P2 EXEC PGM=IKJEFT1A,COND=(4,LT)                                00780700
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF03T09),DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF03T09),DISP=SHR
//*                                                                    *00780300
//**********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO MUV MARKETING CON ESTRUCTURA
//*           SE UTILIZA PARA EL ARCHIVO DE OMISION6
//**********************************************************************
//ZMUF42P3 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REFO692.PATR,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.REFO692.PATR.SORT2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,100),RLSE),
//            DCB=(RECFM=FB,LRECL=615,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF04T19),DISP=SHR
//**********************************************************************
//* PROGRAMA: ICEMAN
//* OBJETIVO: ORDENAMIENTO FICHERO DESCARGA ZMDT692 ESTADOS DE CUENTA
//*           ARCHIVO DE OMISION6
//**********************************************************************
//ZMUF42P4 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ZM4DUA13.DESCA692,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZM4DUA13.DESCA692.SORT2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,100),RLSE),
//            DCB=(RECFM=FB,LRECL=287,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF04T20),DISP=SHR
//**********************************************************************
//* PROGRAMA: ZM3DUA26
//* OBJETIVO: SE OBTIENE FICHERO CON EL LAYOUT MODIFICADO COMO LA TABLA
//*           ZMDT692 MAS MARKETING Y ESTRUCTURA, MATCH DE MARKETING
//*           CON ESTRUCTURA VS DESCARGA (ESTADOS DE CUENTA) ESTO ES
//*           PARA EL REPORTE DE OMISION
//**********************************************************************
//ZMUF42P5 EXEC PGM=ZM3DUA26,COND=(4,LT)
//E1NTRADA  DD DSN=MXCP.ZM.TMP.REFO692.PATR.SORT2,
//             DISP=SHR
//E2NTRADA  DD DSN=MXCP.ZM.TMP.ZM4DUA13.DESCA692.SORT2,
//             DISP=SHR
//S1OMISI6  DD DSN=MXCP.ZM.FIX.ZM3DUA26.OMISION6,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(050,030),RLSE),
//             DCB=(RECFM=FB,LRECL=72,BLKSIZE=0,DSORG=PS)
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSTSPRT  DD SYSOUT=*
//SYSDBOUT  DD SYSOUT=*
//SYSABOUT  DD SYSOUT=*
//SYSUDUMP  DD SYSOUT=*
//**********************************************************************
//* PROGRAMA: ZM4DUA31
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4DUA30 QUE VALIDA QUE LAS
//*           EMISORAS PARA LOS FONDOS DE SUITABILITY SEAN PROPIOS
//*           DE MUV
//**********************************************************************
//ZMUF42P6 EXEC PGM=IKJEFT1A,COND=(4,LT)                                00780700
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF03T99),DISP=SHR
//*                                                                    *00780300
//**********************************************************************00780600
