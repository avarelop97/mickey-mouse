//ZMJFPD44 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.).          *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMJFPD44                                         *00060002
//*                   DESPUES DEL ENLACE CONTABLE.                     *00070002
//*                                                                    *00080002
//* OBJETIVO       :  REPORTES DIARIOS DE TESORERIA.                   *00090002
//*                                                                    *00100002
//* CORRE                                                              *00110002
//* ANTES DE       :  PIDCPD02(CAMBIO DE FECHAS)                       *00120002
//*                                                                    *00130002
//* DESPUES DE     :  PCFECD04 (DESPUES DEL ENLACE CONTABLE)           *00140002
//*                                                                    *00150002
//**********************************************************************00779900
//*                          === ZM4DGG49 ===                          *00780000
//* OBJETIVO : REPORTE DE TRASPASOS ENTRE CLIENTES                     *00780200
//*     PASO : REINICIABLE POR RESTART.                                *00780500
//**********************************************************************00780600
//PJF44P09 EXEC PGM=IKJEFT01                                            00780700
//ZMGG49R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGG49R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGG49A1 DD DSN=MXCP.ZM.FIX.TES.ZMGG49A1,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,LRECL=100,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF44T09),DISP=SHR
//**********************************************************************00779900
//*                          === ZM4DGG53 ===                          *00780000
//* OBJETIVO : LIQ. OPERACIONES DIARIAS EFECTIVO                       *00780200
//*     PASO : REINICIABLE POR RESTART.                                *00780500
//**********************************************************************00780600
//PJF44P08 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZMGG53R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF44T08),DISP=SHR
//**********************************************************************00779900
//*                          === ZM4DGG55 ===                          *00780000
//* OBJETIVO : LIQ. OPERACIONES DIARIAS NO EFECTIVO (ES FINDIA)        *00780200
//*     PASO : REINICIABLE POR RESTART.                                *00780500
//**********************************************************************00780600
//PJF44P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMGG55R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGG55A1 DD DSN=MXCP.ZM.FIX.ENC.ZM4DGG55,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=176,BLKSIZE=0),
//         SPACE=(CYL,(10,5),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF44T07),DISP=SHR
//*
//**********************************************************************00779900
//*                          === ZM4DJL99 ===                          *00780000
//* OBJETIVO : AMARRE DE OPERACION DE LA BMV                           *00780200
//*     PASO : REINICIABLE POR RESTART.                                *00780500
//**********************************************************************00780600
//PJF44P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJL99R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMJL99A1 DD DSN=MXCP.ZM.FIX.ENC.ZM4DGG55,DISP=SHR
//ZMJL99A2 DD DSN=MXCP.ZM.FIX.ENC.ZM4DJL99,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=138,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF44T06),DISP=SHR
//*
//**********************************************************************00779900
//*                          === ZM4DJL98 ===                          *00780000
//* OBJETIVO : RESUMEN DE OPERACIONES DE CTAS DE CASA,OPERATIVAS, DE   *00780200
//*            CLIENTES Y PROVEEDORES                                  *00780300
//*     PASO : REINICIABLE POR RESTART.                                *00780500
//**********************************************************************00780600
//PJF44P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZMJL98R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF44T05),DISP=SHR
//**********************************************************************00779900
//*                          === ZM4DGG56 ===                          *00780000
//* OBJETIVO : LIQ. OPERACIONES DIARIAS NO EFECTIVO                    *00780200
//*     PASO : REINICIABLE POR RESTART.                                *00780500
//**********************************************************************00780600
//PJF44P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZMGG56R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF44T04),DISP=SHR
//**********************************************************************00779900
//*                          === ZM4DGG81 ===                          *00780000
//* OBJETIVO : LIQ. OPERACIONES DIARIAS NO EFECTIVO NO ARBITRAJE       *00780200
//*     PASO : REINICIABLE POR RESTART.                                *00780500
//**********************************************************************00780600
//PJF44P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZMGG81R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGG81A1 DD DSN=MXCP.ZM.WKF.ENC.ZMGG81A1,                             00006200
//            DISP=(NEW,CATLG,DELETE),                                  00006300
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,LRECL=176,BLKSIZE=0,RECFM=FB),
//            UNIT=3390                                                 00006500
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF44T03),DISP=SHR
//**********************************************************************00779900
//*                          === ZM4DGG82 ===                          *00780000
//* OBJETIVO : LIQ. OPERACIONES DIARIAS NO EFECTIVO DE ARBITRAJE       *00780200
//*     PASO : REINICIABLE POR RESTART.                                *00780500
//**********************************************************************00780600
//PJF44P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZMGG82R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGG82A1 DD DSN=MXCP.ZM.WKF.ENC.ZMGG82A1,                             00006200
//            DISP=(NEW,CATLG,DELETE),                                  00006300
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,LRECL=176,BLKSIZE=0,RECFM=FB),
//            UNIT=3390                                                 00006500
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF44T02),DISP=SHR
//**********************************************************************00779900
//*                          === ZM4DJL97 ===                          *00780000
//* OBJETIVO : AMARRE DE OPERACION DE LA BMV                           *00780200
//*     PASO : REINICIABLE POR RESTART.                                *00780500
//**********************************************************************00780600
//PJF44P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZMJL97R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMJL97A1 DD DSN=MXCP.ZM.WKF.ENC.ZMGG81A1,DISP=SHR                     00006200
//ZMJL97A3 DD DSN=MXCP.ZM.WKF.ENC.ZMGG82A1,DISP=SHR                     00006200
//ZMJL97A2 DD DSN=MXCP.ZM.WKF.ENC.ZMJL97A2,                             00006200
//            DISP=(NEW,CATLG,DELETE),                                  00006300
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,LRECL=138,BLKSIZE=0,RECFM=FB),
//            UNIT=3390                                                 00006500
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF44T01),DISP=SHR
//**********************************************************************
//*                     FIN DEL PRC ZMJFPD44                           *00780600
//**********************************************************************00780600
