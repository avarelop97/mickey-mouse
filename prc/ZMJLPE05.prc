//ZMJLPE05 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                   >>>>  T E S O R E R I A <<<<                     *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  SIVAXETY (OPC. 570 ) HABILITADA DESDE OPC. 609      *
//*   PROCEDIM. :  ZMJLPE05                                            *
//*                                                                    *
//*   OBJETIVO  :  IMPRESION DE CHEQUES TROY DE TESORERIA              *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL (CORRE A SOLICITUD DEL USUARIO)      *
//*                                                                    *
//**********************************************************************
//*                                                                     00010000
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *
//**********************************************************************
//PJL05P14 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..ZMJLPE05,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                         -- ZM4DGG25 --                             *
//* OBJETIVO:     GENERACION DE RELACION DE CHEQUES                    *
//*                                                                    *
//**********************************************************************
//PJL05P13 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMGG25A1 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..ZMJLPE05,DISP=SHR
//*
//ZMGG25A2 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..JLPE05.ARCHTEMP,
//            DISP=(NEW,PASS),
//            DCB=(RECFM=FB,LRECL=500,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(80,40),RLSE)
//*
//ZMGG25A3 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQTROY,
//            DISP=(NEW,PASS),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=100,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//*
//ZMGG25A4 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQTRFA,
//            DISP=(NEW,PASS),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=100,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//*
//ZMGG25R1 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQ.RELACION,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FBA,LRECL=133,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//*
//ZMGG25R2 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQ.RELAFOND,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FBA,LRECL=133,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD DUMMY
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL05T01),DISP=SHR
//*
//**********************************************************************
//*                         -- ICEGENER --                             *
//* OBJETIVO:     MANDAR AL SPOOL LA EMISION DE CHEQUES SI EL PASO     *
//*               ANTERIOR TERMINO BIEN                                *
//*               'MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQ.RELAFOND'         *
//**********************************************************************
//PJL05P12 EXEC PGM=ICEGENER,COND=(04,LT,PJL05P13)
//*
//SYSUT1   DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQ.RELAFOND,DISP=SHR
//*
//SYSUT2   DD SYSOUT=(O,,TT05),
//            DCB=(LRECL=133,RECFM=FBA,BLKSIZE=0),FCB=CD02
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                         -- ICEGENER --                             *
//* OBJETIVO:     MANDAR AL SPOOL LA EMISION DE CHEQUES SI EL PASO     *
//*               ANTERIOR TERMINO BIEN                                *
//*               'MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQ.RELACION'         *
//**********************************************************************
//PJL05P11 EXEC PGM=ICEGENER,COND=(04,LT,PJL05P13)
//*
//SYSUT1   DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQ.RELACION,DISP=SHR
//*
//SYSUT2   DD SYSOUT=(O,,TT05),
//            DCB=(LRECL=133,RECFM=FBA,BLKSIZE=0),FCB=CD02
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                         -- ZM3DGG26 --                             *
//* OBJETIVO:     GENERACION DE CHEQUES A IMPRIMIRSE EN LA TROY        *
//*                                                                    *
//**********************************************************************
//PJL05P10 EXEC PGM=ZM3DGG26,COND=(4,LT)
//PI601765 DD DUMMY
//ZMGG26A1 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQTROY,
//            DISP=(OLD,PASS)
//*
//ZMGG26R1 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQ.TROY,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                         -- ICEGENER --                             *
//* OBJETIVO:     MANDAR AL SPOOL LA EMISION DE CHEQUES SI EL PASO     *
//*               ANTERIOR TERMINO BIEN                                *
//*                                                                    *
//**********************************************************************
//PJL05P09 EXEC PGM=ICEGENER,
//         COND=((04,LT,PJL05P10),(04,LT,PJL05P13))
//*
//SYSUT1   DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQ.TROY,DISP=SHR
//*
//SYSUT2   DD SYSOUT=(O,,CHLS),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                         -- ZM3DGG62 --                             *
//* OBJETIVO:     GENERACION DE CHEQUES A IMPRIMIRSE EN LA TROY        *
//*               FONDO DE AHORRO                                      *
//**********************************************************************
//PJL05P08 EXEC PGM=ZM3DGG62,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZMGG62A1 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQTRFA,
//           DISP=(OLD,PASS)
//*
//ZMGG62R1 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQ.TRFA,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS),
//           UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                         -- ICEGENER --                             *
//* OBJETIVO:     MANDAR AL SPOOL LA EMISION DE CHEQUES SI EL PASO     *
//*               ANTERIOR TERMINO BIEN                                *
//*                                                                    *
//**********************************************************************
//PJL05P07 EXEC PGM=ICEGENER,
//         COND=((04,LT,PJL05P08),(04,LT,PJL05P10),(04,LT,PJL05P13))
//*
//SYSUT1   DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQ.TRFA,DISP=SHR
//*
//SYSUT2   DD SYSOUT=(O,,CHLF),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                         -- ZM4DG001 --                             *
//*  OBJETIVO :                                                        *
//*    GRABA LOS PARAMETROS ENVIADOS DE LA LINEA EN LA 'T54' DE PARAM  *
//*    PARA PERMITIR CONTROLAR CONTENCION EN EL PROC. SOLO EN          *
//*    CASO DE QUE TERMINE CON -911, PARA RE-SUBMITIRLO                *
//*                                                                    *
//**********************************************************************
//PJL05P06 EXEC PGM=IKJEFT01,COND=(20,NE,PJL05P13)
//*
//ZMG001A1 DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..ZMJLPE05,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL05T02),DISP=SHR
//*
//**********************************************************************
//*                         -- IEFBR14  --                             *
//* OBJETIVO:     BORRA ARCHIVO DE PASO POR SUCURSAL                   *
//*               'MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQ.RELACION'         *
//*                                                                    *
//**********************************************************************
//PJL05P05 EXEC PGM=IEFBR14,COND=(4,LT,PJL05P13)
//*
//ARCHSA   DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQ.RELACION,
//            DISP=(OLD,DELETE,DELETE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                         -- IEFBR14  --                             *
//* OBJETIVO:     BORRA ARCHIVO DE PASO POR SUCURSAL                   *
//*               'MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQ.RELAFOND'         *
//*                                                                    *
//**********************************************************************
//PJL05P04 EXEC PGM=IEFBR14,COND=(4,LT,PJL05P13)
//*
//ARCHSA   DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQ.RELAFOND,
//            DISP=(OLD,DELETE,DELETE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                         -- IEFBR14  --                             *
//* OBJETIVO:     BORRA ARCHIVO DE PASO POR SUCURSAL                   *
//*               'MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQ.TROY'             *
//*                                                                    *
//**********************************************************************
//PJL05P03 EXEC PGM=IEFBR14,COND=(04,LT,PJL05P09)
//*
//ARCHSA   DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQ.TROY,
//            DISP=(OLD,DELETE,DELETE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                         -- IEFBR14  --                             *
//* OBJETIVO:     BORRA ARCHIVO DE PASO POR SUCURSAL                   *
//*               'MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQ.TRFA'             *
//*                                                                    *
//**********************************************************************
//PJL05P02 EXEC PGM=IEFBR14,
//         COND=((04,LT,PJL05P07),(04,LT,PJL05P09))
//*
//ARCHSA   DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..CHQ.TRFA,
//            DISP=(OLD,DELETE,DELETE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                         -- IEFBR14  --                             *
//* OBJETIVO:     BORRA ARCHIVO DE PASO POR SUCURSAL                   *
//*               'MXCP.ZM.WKF.TES.E&EMP..S&SUC..ZMJLPE05'             *
//*                                                                    *
//**********************************************************************
//PJL05P01 EXEC PGM=IEFBR14,COND=(4,LT,PJL05P14)
//*
//ARCHSA   DD DSN=MXCP.ZM.WKF.TES.E&EMP..S&SUC..ZMJLPE05,
//            DISP=(OLD,DELETE,DELETE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00010000
//*        TERMINA PROCESO ZMJLPE05 SIVA MULTIEMPRESA                  *00020000
//**********************************************************************00060000
