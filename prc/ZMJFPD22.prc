//ZMJFPD22 PROC                                                         00010000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                    <<SOCIEDADES DE INVERSION>>                     *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   OBJETIVO  :  CORRER LA INTERFASE DEL SISTEMA DE ADMON. Y         *
//*                CONTROL DE SOCIEDADES DE INVERSION EXCLUSIVO        *
//*                PARA FIN DE DIA.                                    *
//*                                                                    *
//*   CORRE ANTES DE  :  CBLFND45, CBLFND23, CBJFND26                  *
//*                                                                    *
//*   CORRE DESPUES DE:  CBJFCD15                                      *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   FECHA:  OCTUBRE 2002                                             *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* ACV  |11-JUN-03 |IDCEX30|        |ADECUACION A ESTANDARES DE P.U.  *
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PJF22P07 EXEC PGM=ZM3DG001,
//         PARM=('&EMP',' ',' ',' ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD22,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*---------------------------------------------------------------------00040000
//* PROGRAMA: ZM4DJ237                                                  00060001
//* OBJETIVO: TRANSFIERE MOVIMIENTOS DE "REPORTOS" EN EL FILE 'REPSOCIN'00070000
//*                                                  ***SOC. INVERS.   *00040000
//*---------------------------------------------------------------------00040000
//PJF22P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00110000
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00150000
//SYSABEND DD DUMMY                                                     02440000
//SYSPRINT DD SYSOUT=*                                                  00160000
//SYSOUT   DD SYSOUT=*                                                  00210002
//PRINT    DD SYSOUT=*                                                  02480000
//REPSOCIN DD DSN=MXCP.ZM.GDGD.SIN.E&EMP..REPSOCIN.FDD(+1),             00170002
//            DISP=(NEW,CATLG,DELETE),                                  00170002
//            SPACE=(CYL,(16,8),RLSE),                                  00180000
//            RECFM=FB,LRECL=119,BLKSIZE=0,                             00190000
//            UNIT=3390,DCB=BKUP.MODEL                                  00180000
//SYSDBOUT DD SYSOUT=*                                                  00220002
//SYSABOUT DD DUMMY                                                     00230000
//SYSUDUMP DD DUMMY                                                     00240000
//ZMJ237P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD22,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF22T02),DISP=SHR                   00250003
//*                                                                     00030000
//*---------------------------------------------------------------------00040000
//* PROGRAMA: ZM4DJ227                                                  00060001
//* OBJETIVO: TRANSFIERE MOVIMIENTOS "SIVA" PARA EL SISTEMA DE SOC.INV. 00070000
//*                                                    ***SOC. INVERS. *00040000
//*---------------------------------------------------------------------00040000
//PJF22P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00110000
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00150000
//SYSABEND DD DUMMY                                                     02440000
//SYSPRINT DD SYSOUT=*                                                  00160000
//SYSOUT   DD SYSOUT=*                                                  00210002
//PRINT    DD SYSOUT=*                                                  02480000
//ZMJ227A1 DD DSN=MXCP.ZM.GDGD.SIN.E&EMP..OPESOCIN.FDD(+1),             00170002
//            DISP=(NEW,CATLG,DELETE),                                  00170002
//            SPACE=(CYL,(16,8),RLSE),                                  00180000
//            RECFM=FB,LRECL=94,BLKSIZE=0,                              00190000
//            UNIT=3390,DCB=BKUP.MODEL                                  00180000
//ZMJ227R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSDBOUT DD SYSOUT=*                                                  00220002
//SYSABOUT DD DUMMY                                                     00230000
//SYSUDUMP DD DUMMY                                                     00240000
//ZMJ227P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD22,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF22T03),DISP=SHR                   00250003
//*                                                                     00010000
//*---------------------------------------------------------------------00040000
//* PROGRAMA: ZM4DJ229                                                  00050001
//* OBJETIVO: TRANSFIERE EL ARCHIVO DE EMISORAS "CONCEPT"               00060000
//*                                                    ***SOC. INVERS. *00080000
//*---------------------------------------------------------------------00080000
//PJF22P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00110000
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00142000
//SYSPRINT DD SYSOUT=*                                                  00143000
//EMISORA  DD DSN=MXCP.ZM.GDGD.SIN.E&EMP..EMISOCIN.FDD(+1),             00170002
//            DISP=(NEW,CATLG,DELETE),                                  00170002
//            SPACE=(CYL,(6,3),RLSE),                                   00180000
//            RECFM=FB,LRECL=158,BLKSIZE=0,                             00190000
//            UNIT=3390,DCB=BKUP.MODEL                                  00180000
//ZMJ229R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSOUT   DD SYSOUT=*                                                  00145002
//SYSDBOUT DD SYSOUT=*                                                  00145102
//SYSABOUT DD DUMMY                                                     00146000
//SYSUDUMP DD DUMMY                                                     00147000
//ZMJ229P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD22,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF22T04),DISP=SHR                   00148003
//*                                                                     00030000
//*---------------------------------------------------------------------00040000
//* PROGRAMA: ZM4DJ233                                                  00050001
//* OBJETIVO: TRANSFIERE PARAMETROS   "PARAM"                           00060000
//*                                                 ***SOC. INVERS.    *00080000
//*---------------------------------------------------------------------00080000
//PJF22P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00110000
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00142000
//SYSPRINT DD SYSOUT=*                                                  00143000
//PARSOCIN DD DSN=MXCP.ZM.GDGD.SIN.E&EMP..PARSOCIN.FDD(+1),             00144002
//            DISP=(NEW,CATLG,DELETE),                                  00170002
//            SPACE=(CYL,(2,1),RLSE),
//            RECFM=FB,LRECL=80,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//ZMJ233R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSOUT   DD SYSOUT=*                                                  00145002
//SYSDBOUT DD SYSOUT=*                                                  00145102
//SYSABOUT DD DUMMY                                                     00146000
//SYSUDUMP DD DUMMY                                                     00147000
//ZMJ233P1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD22,DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF22T05),DISP=SHR                   00148003
//*                                                                     00030000
//*---------------------------------------------------------------------05130000
//* PROGRAMA: ZM4DJ231                                                  05150000
//* OBJETIVO: APAGA EL RENGLON DE INTERFACES DE SOC. INV. EN CTLPROC    05150000
//*                                                   ***SOC. INVERS.  *05170000
//*---------------------------------------------------------------------05170000
//PJF22P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                05190000
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    05240000
//SYSPRINT DD SYSOUT=*                                                  05250000
//SYSOUT   DD SYSOUT=*                                                  05260000
//SYSDBOUT DD SYSOUT=*                                                  05270000
//SYSABOUT DD DUMMY                                                     05280000
//SYSUDUMP DD DUMMY                                                     05290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF22T06),DISP=SHR                   05300000
//*                                                                     05120000
//*---------------------------------------------------------------------05130000
//* PROGRAMA: ZM4DJ235                                                  05150000
//* OBJETIVO: AVISA EN EL PARAMETRO 'P92' QUE LA INTERFASE              05150000
//*           TERMINO ANORMALMENTE                                      05150000
//*                                                   ***SOC. INVERS.  *05170000
//*---------------------------------------------------------------------05170000
//PJF22P01 EXEC PGM=IKJEFT01,COND=(8,GE)                                05190000
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    05240000
//SYSPRINT DD SYSOUT=*                                                  05250000
//SYSOUT   DD SYSOUT=*                                                  05260000
//SYSDBOUT DD SYSOUT=*                                                  05270000
//SYSABOUT DD DUMMY                                                     05280000
//SYSUDUMP DD DUMMY                                                     05290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF22T07),DISP=SHR                   05300000
//*                                                                     00290006
