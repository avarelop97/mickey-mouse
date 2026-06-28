//ZMUENC21 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  SIVA.                                            *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUENC21                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  GENERACION DE MOVIMIENTOS CONTABLES PARA LA CARGA*00090002
//*                   DEL PROCESO EVENTUAL.                            *00090002
//* CORRE                                                              *00110002
//* ANTES DE       :  N/A                                              *00120002
//*                                                                    *00130002
//* DESPUES DE     :  N/A                                              *00140002
//*                                                                    *00150002
//* REALIZACION    :                                  10/JUN/2010      *00160002
//*                                                                    *00170002
//* OBSERVACION    :  NINGUNA                                          *00180002
//*                                                                    *00190002
//**********************************************************************
//* PASO    : PUF21P30                                                 *
//* PROGRAMA: ZM4DL17D                                                 *
//* OBJETIVO: REPORTE DE CONCILIACION TESORERIA POLIZA.                *
//**********************************************************************
//PUF21P30 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//SZMDL17D DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF21T05),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF21P25                                                 *
//* PROGRAMA: ZM4DL27D                                                 *
//* OBJETIVO: REPORTE DE CONTROL DE MOVIMIENTOS.                       *
//**********************************************************************
//PUF21P25 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//SZMDL27D DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF21T06),DISP=SHR
//*
//**********************************************************************
