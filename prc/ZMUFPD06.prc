//ZMUFPD06 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.).          *
//*                                                                    *
//* PROCESO        :  ZMUFPD06                                         *
//*                   PROCESO EVENTUAL DEPENDE DE LA CONDICION QUE     *
//*                   GENERA EL POZO DE LAS 3:00 A.M.                  *
//*                                                                    *
//* OBJETIVO       :  ACTUALIZAR TABLA ESPEJO DE BG CON MOVTOS OK      *
//*                   DEL POZO DE LAS 3:00 A.M.                        *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :                                                   *
//*                                                                    *
//* DESPUES DE     :  SOLO SE DISPARA SI EL POZO DE LAS 3:00 A.M.      *
//*                   GENERA LA CONDICION DSJLO102_OK_PR               *
//*                                                                    *
//* REALIZACION    :  MARCIAL JAIME ROSALES RUIZ     02/SEP/2005       *
//*                                                                    *
//* OBSERVACION    :  ESTE JOB CORRE DESPUES DE LA RESPUESTA DEL POZO  *
//*                                     DE LAS 3:00 A.M.               *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//ZUF06P06 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     ')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TMP.E&EMP..ZMJFPD06,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************
//*                          === ICEGENER ===                          *
//*                                                                    *
//* OBJETIVO : COPIAR EL ARCHIVO QUE DEJA LA APLICACION DEL POZO DE LAS*
//*            3:00 A.M. A EL ARCHIVO DE CASA DE BOLSA                 *
//*                                                                    *
//**********************************************************************
//ZUF06P05 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MBVP.DS.FIX.BGARIMPU.PU.MUV2.OPSPOZO,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.ZM4DU852.POZOBG,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(LRECL=386,BLKSIZE=0,DSORG=PS,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* OBJETIVO : SORTEA ARCHIVO QUE REGRESA DE POZO.                     *
//**********************************************************************
//ZUF06P04 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZM4DU852.POZOBG,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZM4DU852.POZOBG.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(40,20),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=386,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF06T01),DISP=SHR
//*
//**********************************************************************
//*                          === ZM4DU852 ===                          *
//*                                                                    *
//* OBJETIVO: RECIBE ARCHIVO DE BG Y LO CARGA EN ZMDT623 Y EN ZMDT629  *
//*                                                                    *
//**********************************************************************
//ZUF06P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//ZMPOZO02 DD DSN=MXCP.ZM.FIX.ZM4DU852.POZOBG.SORT,DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF06T02),DISP=SHR
//*
//**********************************************************************
//*                          ===   SORT   ===                          *
//*                                                                    *
//*                          >>>>> POZOS <<<<<                         *
//* OBJETIVO : CLASIFICA POR CARGO/ABONO, OBSERVACIONES, CUENTA BG     *
//*            Y FOLIO BG                                              *
//*                                                                    *
//**********************************************************************
//ZUF06P02 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZM4DU852.POZOBG,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.POZOS1.F&FECHA,
//        DISP=(NEW,CATLG,DELETE),
//        SPACE=(CYL,(40,20),RLSE),
//        DCB=(DSORG=PS,RECFM=FB,LRECL=386,BLKSIZE=0),
//        UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF06T03),DISP=SHR
//*
//**********************************************************************
//*                          ===  ZM4DU856  ===                        *
//*                                                                    *
//* OBJETIVO : GENERA REPORTE CON MOVIMIENTOS DE EFECTIVO OK Y RECHAZO *
//*                   >>>>> REPROCESO DEL POZO HOY  <<<<<              *
//*                                                                    *
//**********************************************************************
//ZUF06P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU856T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.POZOS1.F&FECHA,DISP=SHR
//ZMU856R1 DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMU856R2 DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF06T04),DISP=SHR
//*
//**********************************************************************
