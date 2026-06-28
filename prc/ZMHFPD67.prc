//**********************************************************************00780600
//ZMHFPD67 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  MUV MODULO UNICO DE VALORES                      *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMHFPD67                                         *00060002
//*                                                                    *00070002
//*                                                                    *00080002
//* OBJETIVO       :  GENERACION DE ACUMULADO DIARIO DE COMISIONES     *00090002
//*                   QUE SE VAN A LA CONTABILIDAD, PARA PROYECTO      *00100002
//*                   DE CONCILIACION DE COMISIONES VS. TIMBRADO       *00100002
//*                                                                    *00100002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX       *00140002
//*                                                                    *00150002
//* REALIZACION    :  INDRA MAYO 2021                                  *00160002
//*                                                                    *00170002
//* OBSERVACION    :  ESTE JOB CORRE DESPUES DE QUE YA ESTAN           *00180002
//*                   GENERADOS LOS MV'S DE LA CONTABILIDAD            *00180002
//**********************************************************************00240002
//*                                                                    *00240002
//**********************************************************************00779900
//* SORT                                                               *00780000
//* OBJETIVO : CONCATENA ARCHIVOS INTERFAZ CONTABLE                    *00780200
//*            SOLO FONDOS, CAPITALES Y CUSTODIA Y EXTRAE COMISIONES   *
//*                                                                    *00780300
//**********************************************************************00780600
//PHF66P90 EXEC PGM=ICEMAN
//SORTIN   DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECO.CONTMV2.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECO.CONTMV2.CLA.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.CONTMV4.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMVD.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(600,300),RLSE),
//            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF66T90),DISP=SHR
//*
//**********************************************************************00779900
//* SORT                                                               *00780000
//* OBJETIVO : ELIMINA IREF DUPLICADOS                                 *00780200
//*                                                                    *00780300
//**********************************************************************00780600
//PHF66P85 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMVD.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMVS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(600,300),RLSE),
//            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF66T85),DISP=SHR
//*
//**********************************************************************00779900
//* SORT                                                               *00780000
//* OBJETIVO : GENERA ARCHIVO DE ACUMULADO CON LAS COMISIONES          *00780200
//*            FILTRADAS EN EL PASO ANTERIOR                           *
//*                                                                    *00780300
//**********************************************************************00780600
//PHF66P80 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD  DUMMY
//*
//ZMLL01A2 DD  DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMVS.F&FECHA,
//         DISP=SHR
//*
//S1DLL01  DD  DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACUCOMIS,
//             DISP=(MOD,CATLG,DELETE),UNIT=3390,
//             DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0),
//             SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF66T80),DISP=SHR
//*
