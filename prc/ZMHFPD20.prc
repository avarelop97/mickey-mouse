//ZMHFPD20 PROC
//**********************************************************************
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMHFPD20                                         *
//*                                                                    *
//* OBJETIVO       :  JOB QUE REALIZA LA GENERACION DE INFORMACION PARA*
//*                   EL SISTEMA MUREX CON LOS MOVIEMIENTOS DE LA      *
//*                   POSICION PROPIA DEL BANCO.                       *
//*                                                                    *
//* REALIZO        :  SWF - ACCENTURE - XM09317                        *
//*                                                                    *
//* FECHA          :  06 DE JULIO DEL 2010.                            *
//**********************************************************************
//*
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE LOS PARAMETROS ENVIADOS DE CSP
//*           Y LOS GRABA EN ARCHIVO
//**********************************************************************
//PHF20P03 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC',' ',' ',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD20,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************
//*  PASO        : PHF20P02                                            *
//* OBJETIVO : INSERTA REGISTROS PARA MUREX EN IGOENV CON OPERACIONES  *00003900
//*            DE POSICION PROPIA DE MERCADO DE CAPITALES BANCO        *00004000
//*            -- ZM4DHV72 --                                          *00004100
//**********************************************************************00004200
//PHF20P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00004300
//PF601765  DD DUMMY                                                    00004400
//SYSTSPRT DD  SYSOUT=*                                                 00004500
//SYSPRINT DD  SYSOUT=*                                                 00004600
//SYSOUT   DD  SYSOUT=*                                                 00004700
//SYSDBOUT DD  SYSOUT=*                                                 00004800
//SYSABOUT DD  DUMMY                                                    00004900
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHF20T02),DISP=SHR
//*
//**********************************************************************
//*  PASO        : PHF20P01                                            *
//* OBJETIVO : INSERTA REGISTROS PARA MUREX EN IGOENV CON OPERACIONES  *00005400
//*            DE POSICION PROPIA DE MERCADO DE CAPITALES BANCO        *00005500
//*            -- ZM4DHV73 --                                          *00005600
//**********************************************************************00005700
//PHF20P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00005800
//*                                                                     00005900
//ZMHV73A1 DD DSN=MXCP.ZM.FIX.MDC.ECBP.ZM4DHV73.MUREX,                  00006000
//            DISP=(NEW,CATLG,CATLG),                                   00006100
//            DCB=(LRECL=163,RECFM=FB,BLKSIZE=0,DSORG=PS),              00006200
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00006300
//*                                                                     00006400
//SYSTSPRT DD  SYSOUT=*                                                 00006500
//SYSPRINT DD  SYSOUT=*                                                 00006600
//SYSOUT   DD  SYSOUT=*                                                 00006700
//SYSDBOUT DD  SYSOUT=*                                                 00006800
//SYSABOUT DD  DUMMY                                                    00006900
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHF20T01),DISP=SHR
//*
