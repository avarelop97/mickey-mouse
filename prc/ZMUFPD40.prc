//ZMUFPD40  PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  C A P I T A L E S >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   OBJETIVO  :  REPORTES DE EFICIENCIA Y CONTROL DE LA CARTERA      *
//*                AREA DE REGULACION (MA. CARMEN SANJURJO)            *
//*                GENERAR LA REPORTERIA DE FIN DE DIA CAPITALES       *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE:  CBJFCD33                                      *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   FECHA:  AGOSTO 2002                                              *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* ACV  | 11-JUN-03|IDCEX30|        |ADECUACION A ESTANDARES DE P.U.  *
//*--------------------------------------------------------------------*
//* ASP  | 14-JUL-03|IDCEX08|        |TRANSFERENCIA DE ARCHIVOS        *
//*      |          |       |        |DEL SERVIDOR AL SIVA (PUF40P01)  *
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE LOS PARAMETROS ENVIADOS DE CSP
//*           Y LOS GRABA EN ARCHIVO
//**********************************************************************
//PUF40P16 EXEC PGM=ZM3DG001,
//         PARM=('&EMP',' ',' ',' ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMUFPD40,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*                                                                     00980033
//*---------------------------------------------------------------------00221002
//* PROGRAMA: ZM4DGU59                                                  00221002
//* OBJETIVO: REPORTE DE OPERACIONES DE MERCADO DE DINERO DADAS DE BAJA 00222002
//*                                                  *** CAPITALES     *
//*---------------------------------------------------------------------00223002
//PUF40P15 EXEC PGM=IKJEFT01,COND=(4,LT)                                00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//ZMGU59R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//ZMGU59P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMUFPD40,
//            DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF40T01),DISP=SHR
//*                                                                     00232802
//*---------------------------------------------------------------------00221002
//* PROGRAMA: ZM4MGT74                                                  00221002
//* OBJETIVO: REPORTE CUADRO COMPARATIVO EDOS DE CTA                    00222002
//*                                                  *** CAPITALES     *
//*---------------------------------------------------------------------00223002
//PUF40P14 EXEC PGM=IKJEFT01,COND=(4,LT)                                00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//ZMGT74R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//ZMGT74P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMUFPD40,
//            DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF40T02),DISP=SHR
//*                                                                     00232802
//*---------------------------------------------------------------------00221002
//* PROGRAMA: ZM4DGT71                                                  00221002
//* OBJETIVO: REPORTE  DE CORTOS/LARGOS                                 00222002
//*                                                  *** CAPITALES     *
//*---------------------------------------------------------------------00223002
//PUF40P13 EXEC PGM=IKJEFT01,COND=(4,LT)                                00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//ZMGT71R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//ZMGT71P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMUFPD40,
//            DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF40T03),DISP=SHR
//*                                                                     00232802
//*---------------------------------------------------------------------00221002
//* PROGRAMA: ZM4MGT65                                                  00221002
//* OBJETIVO: REPORTE  DE CLIENTES MAS PRODUCTIVOS                      00222002
//*                                                  *** CAPITALES     *
//*---------------------------------------------------------------------00223002
//PUF40P12 EXEC PGM=IKJEFT01,COND=(4,LT)                                00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//ZMGT65R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//ZMGT65P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMUFPD40,
//            DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF40T04),DISP=SHR
//*                                                                     00232802
//*---------------------------------------------------------------------00221002
//* PROGRAMA: ZM4SGT70                                                  00221002
//* OBJETIVO: REPORTE  DE MOVTOS EN TRASPASOS                           00222002
//*                                                  *** CAPITALES     *
//*---------------------------------------------------------------------00223002
//PUF40P11 EXEC PGM=IKJEFT01,COND=(4,LT)                                00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//ZMGT70R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//ZMGT70P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMUFPD40,
//            DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF40T05),DISP=SHR
//*                                                                     00232802
//*---------------------------------------------------------------------00221002
//* PROGRAMA: ZM4MGT63                                                  00221002
//* OBJETIVO: REPORTE  DE CTAS NO DISCRECIONALES                        00222002
//*                                                      *** CONTRATOS *00223002
//*---------------------------------------------------------------------00223002
//PUF40P10 EXEC PGM=IKJEFT01,COND=(4,LT)                                00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//ZMGT63R  DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//ZMGT63P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMUFPD40,
//            DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF40T06),DISP=SHR
//*                                                                     00232802
//*---------------------------------------------------------------------00221002
//* PROGRAMA: ZM4MGT62                                                  00221002
//* OBJETIVO: REPORTES DE PROMOTORES SIN CTAS ASOCIADAS                 00222002
//*           (NO TIENE CORTE POR PROMOTOR)              *** CONTRATOS *00223002
//*---------------------------------------------------------------------00223002
//PUF40P09 EXEC PGM=IKJEFT01,COND=(4,LT)                                00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//ZMGT62R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//ZMGT62P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMUFPD40,
//            DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF40T07),DISP=SHR
//*                                                                     00232802
//*---------------------------------------------------------------------00221002
//* PROGRAMA: ZM4MGT61                                                  00221002
//* OBJETIVO: REPORTES DE PROMOTORES VIGENTES                           00222002
//*       **  ESTE PROGRAMA TIENE CORTE POR PROMOTOR. SI SE REQUIERE    00223002
//*           DISTRIBUCION, SOLICITAR LA MISION DE SEPARACION A         00223002
//*           ACEPTACION DE APLICACIONES.                               00223002
//*                                                      *** VALORES   *00223002
//*---------------------------------------------------------------------00223002
//PUF40P08 EXEC PGM=IKJEFT01,COND=(4,LT)                                00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//ZMGT61R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//ZMGT61P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMUFPD40,
//            DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF40T08),DISP=SHR
//*                                                                     00232802
//*---------------------------------------------------------------------00221002
//* PROGRAMA: ZM4MGT84                                                  00221002
//* OBJETIVO: REPORTES DE BONIFICACIONES                                00222002
//*                                                      *** VALORES   *00223002
//*---------------------------------------------------------------------00223002
//PUF40P07 EXEC PGM=IKJEFT01,COND=(4,LT)                                00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//ZMGT84R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//ZMGT84P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMUFPD40,
//            DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF40T09),DISP=SHR
//*                                                                     00232802
//*---------------------------------------------------------------------00221002
//* PROGRAMA: ZM4SGT60                                                  00221002
//* OBJETIVO: REPORTES DE CTES PF*                                      00222002
//*                                                      *** CONTRATOS *00223002
//*---------------------------------------------------------------------00223002
//PUF40P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//ZMGT60R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//ZMGT60P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMUFPD40,
//            DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF40T10),DISP=SHR
//*                                                                     00232802
//*---------------------------------------------------------------------00221002
//* PROGRAMA: ZM4SGT59                                                  00221002
//* OBJETIVO: REPORTES DE CTAS CON COMISION MENOR AL 1.7%               00222002
//*                                                      *** CONTRATOS *00223002
//*---------------------------------------------------------------------00223002
//PUF40P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//ZMGT59R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//ZMGT59P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMUFPD40,
//            DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF40T11),DISP=SHR
//*                                                                     00232802
//*---------------------------------------------------------------------00221002
//* PROGRAMA: ZM4MGT58                                                  00221002
//* OBJETIVO: REPORTES DE CTES CON DOCUMENTACION INCOMPLETA             00222002
//*                                                      *** CONTRATOS *00223002
//*---------------------------------------------------------------------00223002
//PUF40P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//ZMGT58R  DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//ZMGT58P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMUFPD40,
//            DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF40T12),DISP=SHR
//*                                                                     00232802
//*---------------------------------------------------------------------00221002
//* PROGRAMA: ZM4DGT57                                                  00221002
//* OBJETIVO: REPORTES DE CPAS SIN POSICION MISMO DIA                   00222002
//*                                                      *** CAPITALES *00223002
//*---------------------------------------------------------------------00223002
//PUF40P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//ZMGT57R  DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//ZMGT57P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMUFPD40,
//            DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF40T13),DISP=SHR
//*                                                                     00232802
//*---------------------------------------------------------------------00221002
//* PROGRAMA: ZM4DGT56                                                  00221002
//* OBJETIVO: REPORTES DE CTAS SIN CHEQUERAS                            00222002
//*                                                      *** CONTRATOS *00223002
//*---------------------------------------------------------------------00223002
//PUF40P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//ZMGT56R  DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//ZMGT56P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMUFPD40,
//            DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF40T14),DISP=SHR
//*                                                                     00232802
//*---------------------------------------------------------------------00221002
//* PROGRAMA: ZM4DGU29                                                  00221002
//* OBJETIVO: REPORTES DE VISITAS A SUCURSALES                          00222002
//*           GENERA 7 DIFERENTES TIPOS DE REPORTES                     00223002
//*---------------------------------------------------------------------00223002
//PUF40P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//ZMGU29R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGU29R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGU29R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMGU29A3 DD DSN=MXCP.ZM.GDGD.OTR.ARCHUSER(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(BKUP.MODEL,LRECL=132,RECFM=FB,BLKSIZE=0)
//*           LRECL=132,RECFM=FB,BLKSIZE=0,
//*           UNIT=3390,DCB=BKUP.MODEL
//*
//ZMGU29R4 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMGU29A4 DD DSN=MXCP.ZM.GDGD.OTR.ARCHPROM(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(BKUP.MODEL,LRECL=140,RECFM=FB,BLKSIZE=0)
//*           LRECL=140,RECFM=FB,BLKSIZE=0,
//*           UNIT=3390,DCB=BKUP.MODEL
//*
//ZMGU29R5 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGU29R6 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMGU29R7 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//ZMGU29P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMUFPD40,
//            DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF40T15),DISP=SHR
//*
