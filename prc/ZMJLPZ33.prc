//**********************************************************************
//ZMJLPZ33 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                        >>>>  TESORERIA   <<<<                      *
//*                                                                    *
//* PROCESO        :  PTEERT00                                         *
//*                   PRODUCCION TESORERIA EMISION DE RECIBOS DE CRED. *
//*                   T+1                                              *
//* OBJETIVO       :  EMISION DE RECIBOS DE CREDITO T+1                *
//*                   (ANTES EMIRECIT)                                 *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  SIVAXERT                                         *
//*                                                                    *
//* REALIZO        :  GCM (ASATECK)                                    *
//* FECHA          :  JUNIO  / 2003                                    *
//**********************************************************************
//* MODIFICO       :  ANGELICA GARCIA (AZERTIA)                        *
//* FECHA          :  NOVIEMBRE/2004                                   *
//**********************************************************************
//* MODIFICO       :  ANGELICA GARCIA (AZERTIA)                        *
//* FECHA          :  JULIO/2005                                       *
//*                   SE ELIMINA IMPRESION DE FORMATO Y SE GENERAN     *
//*                   REPORTES POR FOLIO E INSTITUCION                 *
//**********************************************************************
//**********************************************************************
//*                         -- ZM4DJ018 --                             *
//* PASO:  2      GENERACION DE REPORTE DE CREDITOS POR NUMERO DE FOLIO*
//*                                                                    *
//**********************************************************************
//PJL33P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMDJ18A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE33,DISP=SHR
//*
//ZMDJ18A2 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.JLPE33.ATEMP,
//            DISP=(NEW,PASS),
//            DCB=(RECFM=FB,LRECL=350,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//*
//ZMDJ18A3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//*
//ZMDJ18A4 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.CTMFOL,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=150,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD DUMMY
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL33T05),DISP=SHR
//*
//**********************************************************************
//*                         --   SORT   --                             *
//* OBJETIVO:     SORT DEL ARCHIVO ANTERIOR                            *
//*                                                                    *
//* PASO:  3
//**********************************************************************
//PJL33P02 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.CTMFOL,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.WKF.TES.EMP.SUC.CTMSORT,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=150,BLKSIZE=0),
//         UNIT=3390,SPACE=(CYL,(6,3),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJL33T04),DISP=SHR
//*
//**********************************************************************
//*                         -- ZM4DJ019 --                             *
//* PASO:  4      GENERACION DE REPORTE DE CREDITOS POR INSTITUCION    *
//*                                                                    *
//**********************************************************************
//PJL33P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMDJ19A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE33,DISP=SHR
//*
//ZMDJ19A2 DD DSN=MXCP.ZM.WKF.TES.EMP.SUC.CTMSORT,
//            DISP=(OLD,PASS)
//*
//ZMDJ19R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL33T03),DISP=SHR
//**                                                                    00005400
//**********************************************************************00010000
//*                   F I N     Z M J L P Z 3 3                        *00020000
//**********************************************************************00010000
