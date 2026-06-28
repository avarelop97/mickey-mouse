//ZMHCPA43  PROC                                                        00010001
//**********************************************************************00020000
//*                   <<  MERCADO DE CAPITALES >>                      *00033002
//*                                                                    *00120000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00130002
//*                                                                    *00140000
//* PROCESO        :  ZMHCPA43                                         *00150001
//*                   REPORTE DE ORDENES RECHAZADAS.                   *00160002
//*                                                                    *00260000
//* PERIODICIDAD   :  DIARIO                                           *00260000
//*                                                                    *00340002
//**********************************************************************00481000
//*                      LOG DE MODIFICACIONES                         *00482000
//**********************************************************************00483000
//**********************************************************************00487000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00489000
//*  PHC13P20     GRABA EN UN ARCHIVO SECUENCIAL.          ZM3DH001    *00489109
//**********************************************************************00489300
//PHC43P20 EXEC PGM=ZM3DG001,                                           00489709
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00489800
//PI601765  DD DUMMY                                                    00489902
//*                                                                     00490000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPA43,               00491002
//            DISP=(NEW,CATLG,DELETE),                                  00492000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00493000
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00494000
//*                                                                     00496000
//SYSTSPRT DD SYSOUT=*                                                  00497000
//SYSPRINT DD SYSOUT=*                                                  00498000
//SYSOUT   DD SYSOUT=*                                                  00499000
//SYSDBOUT DD SYSOUT=*                                                  00499100
//SYSABOUT DD DUMMY                                                     00499200
//SYSUDUMP DD DUMMY                                                     00499300
//*                                                                     00499400
//**********************************************************************02322306
//* PASO: PHC43P19     OBJETIVO : REPORTE DE ORDENES RECHAZADAS.       *02322406
//*                                       -- ZM4DHU93 --               *02323006
//**********************************************************************02324006
//PHC43P19 EXEC PGM=IKJEFT01,COND=(4,LT)                                02325006
//PI601765  DD DUMMY                                                    02326006
//*                                                                     02327006
//ZMHU93A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPA43,DISP=SHR       02328006
//*                                                                     02329006
//ZMHU93A2 DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPA43.ORDEN.SOL2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//ZMHU93A3 DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPA43.ORDEN.TXT2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//ZMHU93R1 DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPA43.ARCHV.RCHZ,               02329206
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          02329306
//SYSTSPRT DD SYSOUT=*                                                  02329406
//SYSPRINT DD SYSOUT=*                                                  02329506
//SYSOUT   DD SYSOUT=*                                                  02329606
//SYSDBOUT DD SYSOUT=*                                                  02329706
//SYSABOUT DD DUMMY                                                     02329806
//SYSUDUMP DD DUMMY                                                     02329906
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHA43T20),DISP=SHR                   02330008
//*                                                                     02330106
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO PHC43P19     *
//* REPORTE  : REPORTE ORDENES RECHAZADAS.                             *
//**********************************************************************
//PHC43P18 EXEC PGM=ICEGENER,COND=(0,NE,PHC43P19)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPA43.ARCHV.RCHZ,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
