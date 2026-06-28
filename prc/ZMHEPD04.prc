//ZMHEPD04 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//*                     C A S A   D E  B O L S A                       *00040000
//*                     ========================                       *00050000
//*                    << MERCADO DE CAPITALES >>                      *00060000
//*                                                                    *00070000
//*   APLICACION       :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)        *00080000
//*                                                                    *00090000
//*   PROCEDIM.        :  ZMHEPD04                                     *00100000
//*                                                                    *00110000
//*   OBJETIVO         :  REPORTE DE ERRORES EN LOS REGISTROS ENVIADOS *00120000
//*                       POR LA BMV                                   *00130000
//*                                                                    *00140000
//*   CORRE DESPUES DE :  PROCESO CICLICO EN HORARIO LIMITADO          *00150000
//*                       A PETICION DEL USUARIO                        00160000
//*                                                                    *00170000
//*   PERIODICIDAD     :  SE EJECUTA EN INTERVALOS DE UNA HORA         *00180000
//*                                                                    *00190000
//*   ELABORADO POR    :  ASATECK, S.A. DE C.V.  (AJP)                 *00200000
//*                                                                    *00210000
//*   FECHA            :  FEBRERO DE 2003                              *00220000
//*                                                                    *00230000
//**********************************************************************00240000
//**********************************************************************00250000
//*                                                                    *00260000
//*  PASO:  2     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00270000
//*  PHE04P02     GRABA EN ARCHIVO SECUENCIAL.                         *00280000
//*                                                         ZM3DG001   *00290000
//**********************************************************************00300000
//PHE04P02 EXEC PGM=ZM3DG001,PARM=('&EMP','    ','     ','     ',)      00310000
//*                                                                     00320000
//PI601765 DD DUMMY                                                     00330000
//*                                                                     00331001
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..ZMHEPD04,                      00341001
//            DISP=(NEW,CATLG,DELETE),                                  00350000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00360000
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00370001
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00390000
//SYSPRINT DD SYSOUT=*                                                  00400000
//SYSOUT   DD SYSOUT=*                                                  00410000
//SYSDBOUT DD SYSOUT=*                                                  00420000
//SYSABOUT DD DUMMY                                                     00430000
//SYSUDUMP DD DUMMY                                                     00440000
//*                                                                     00441001
//**********************************************************************00450000
//*  PASO:  1     REPORTE DE ERRORES EN LOS REGISTROS TRANSMITIDOS     *00460000
//*               POR LA B.M.V. AL MODULO DE CAPITALES                 *00470000
//*  PHE04P01                                                          *00480000
//*                                                         ZM4EHU91   *00490000
//**********************************************************************00500000
//PHE04P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00510000
//*                                                                     00520000
//ZMHU91A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..ZMHEPD04,DISP=SHR              00531001
//*                                                                     00532001
//ZMHU91R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00540000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00550000
//SYSPRINT DD SYSOUT=*                                                  00560000
//SYSOUT   DD SYSOUT=*                                                  00570000
//SYSDBOUT DD SYSOUT=*                                                  00580000
//SYSABOUT DD DUMMY                                                     00590000
//SYSUDUMP DD DUMMY                                                     00600000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE04T01),DISP=SHR                   00610000
