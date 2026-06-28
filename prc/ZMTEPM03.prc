//ZMTEPM03 PROC EMP=,SUC=,INT1=,FECHA=                                  00010000
//*                                                                     00010100
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *00050000
//*                                                                    *00060000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMTEPM03                                            *00090000
//*                                                                    *00100000
//*   OBJETIVO  :  GENERACION DE BASE DE DATOS DE ESTADOS DE CUENTA DE *00110000
//*                BANCA PATRIMONIAL (BPIGO) HISTORICO                 *00120000
//*                                                                    *00130000
//*   CORRE ANTES DE  : NINGUNO                                        *00140000
//*                                                                    *00150000
//*   CORRE DESPUES DE: ZMTEPM02                                       *00160000
//*                                                                    *00170000
//*   PERIODICIDAD    :  MENSUAL                                       *00180000
//*                                                                    *00190000
//**********************************************************************00200000
//*                      LOG DE MODIFICACIONES                         *00210000
//**********************************************************************00220000
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *00230000
//**********************************************************************00240000
//PTE03P03 EXEC PGM=ZM3DG001,                                           00250000
//         PARM=('&EMP','&SUC','&INT1','&FECHA',)                       00260000
//SYSTSPRT DD SYSOUT=*                                                  00270000
//SYSPRINT DD SYSOUT=*                                                  00280000
//SYSOUT   DD SYSOUT=*                                                  00290000
//SYSDBOUT DD SYSOUT=*                                                  00300000
//SYSABOUT DD DUMMY                                                     00310000
//SYSUDUMP DD DUMMY                                                     00320000
//*                                                                     00330000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMTEPM03,                        00340000
//            DISP=(NEW,CATLG,DELETE),                                  00350000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00360000
//            UNIT=3390,                                                00370000
//            SPACE=(CYL,(2,1),RLSE)                                    00380000
//*                                                                     01610000
//**********************************************************************01890000
//*                    -- ZM4MU020  --                                  01900000
//*  ACTUALIZA LA BASE DE DATOS HISTORICA DE ESTADOS DE CUENTA DE       01910000
//*  ACUERDO AL LAYOUT DE LOS ARCHIVOS DE BANCA PATRIMONIAL             01920000
//**********************************************************************01930000
//PTE03P02 EXEC PGM=IKJEFT01,COND=(0,NE)                                01940000
//ZMU020P1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMTEPM03,DISP=SHR                01950000
//*                                                                     01960000
//*---- ARCHIVOS ENTRADA MUV       E.C. IMPRESOS SIN RECORTAR           01970000
//ZMU020M1 DD DUMMY                                                     01980000
//ZMU020M2 DD DUMMY                                                     01990000
//ZMU020M3 DD DUMMY                                                     02000000
//*                                                                     02010000
//*---- ARCHIVOS ENTRADA BPIGO     E.C. IMPRESOS RECORTADOS             02020000
//ZMU020B1 DD DSN=MXCP.ZM.FIX.ECT.EBPATRIM.PF01,DISP=SHR                02030000
//ZMU020B2 DD DSN=MXCP.ZM.FIX.ECT.EBPATRIM.PF02,DISP=SHR                02040000
//ZMU020B3 DD DSN=MXCP.ZM.FIX.ECT.EBPATRIM.PF03,DISP=SHR                02050000
//ZMU020B4 DD DSN=MXCP.ZM.FIX.ECT.EBPATRIM.CNFA,DISP=SHR                02051000
//*                                                                     02051100
//ZMU020B5 DD DSN=MXCP.ZM.FIX.ECT.EBPRIVAD.PF01,DISP=SHR                02051200
//ZMU020B6 DD DSN=MXCP.ZM.FIX.ECT.EBPRIVAD.PF02,DISP=SHR                02051300
//ZMU020B7 DD DSN=MXCP.ZM.FIX.ECT.EBPRIVAD.PF03,DISP=SHR                02051400
//ZMU020B8 DD DSN=MXCP.ZM.FIX.ECT.EBPRIVAD.CNFA,DISP=SHR                02052000
//*                                                                     02060000
//*---- ARCHIVO SALIDA BPIGO/MUV E.C. IMPRESO PF01 ADMN SIN RECORTAR    02070000
//ZMU020HS DD DSN=MXCP.ZM.FIX.ECT.EBPIGO.F01.ADMN,                      02080000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        02090000
//            DCB=(DSORG=PS,LRECL=1278,RECFM=FB,BLKSIZE=0),             02100000
//            SPACE=(CYL,(200,100),RLSE)                                02110000
//*                                                                     02120000
//SYSTSPRT DD SYSOUT=*                                                  02130000
//SYSPRINT DD SYSOUT=*                                                  02140000
//SYSOUT   DD SYSOUT=*                                                  02150000
//SYSDBOUT DD SYSOUT=*                                                  02160000
//SYSABOUT DD SYSOUT=*                                                  02170000
//SYSUDUMP DD DUMMY                                                     02180000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZTE03T01),DISP=SHR                   02191000
//*                                                                     02200000
//**********************************************************************02200100
//*                    -- ZM4MU022  --                                  02200200
//*  GENERA ARCHIVOS PARA ESTADOS DE CUENTA A PARTIR DE LAS TABLAS      02200300
//*  HISTORICAS ZMDT930, ZMDT932, ZMDT933                               02200400
//**********************************************************************02200600
//PTE03P01 EXEC PGM=IKJEFT01,COND=(0,NE)                                02200700
//ZMU022P1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMTEPM03,DISP=SHR                02200800
//*                                                                     02201000
//*---- ARCHIVOS SALIDA E.C. BANCA PATRIMONIAL                          02201100
//ZMU022A1 DD DSN=MXCP.ZM.GDGD.ECT.EBPATRIM.PF01(+1),                   02201200
//            DISP=(NEW,CATLG,DELETE),                                  02201300
//            SPACE=(CYL,(200,100),RLSE),                               02201400
//            DCB=(BKUP.MODEL,LRECL=1214,RECFM=FB,BLKSIZE=0),           02201500
//            UNIT=3390                                                 02201600
//ZMU022A2 DD DSN=MXCP.ZM.GDGD.ECT.EBPATRIM.PF02(+1),                   02201700
//            DISP=(NEW,CATLG,DELETE),                                  02201800
//            SPACE=(CYL,(200,100),RLSE),                               02201900
//            DCB=(BKUP.MODEL,LRECL=214,RECFM=FB,BLKSIZE=0),            02202000
//            UNIT=3390                                                 02203000
//ZMU022A3 DD DSN=MXCP.ZM.GDGD.ECT.EBPATRIM.PF03(+1),                   02203100
//            DISP=(NEW,CATLG,DELETE),                                  02203200
//            SPACE=(CYL,(200,100),RLSE),                               02203300
//            DCB=(BKUP.MODEL,LRECL=224,RECFM=FB,BLKSIZE=0),            02203400
//            UNIT=3390                                                 02203500
//*                                                                     02203700
//*---- ARCHIVOS SALIDA E.C. BANCA PRIVADA                              02203800
//ZMU022A4 DD DSN=MXCP.ZM.GDGD.ECT.EBPRIVAD.PF01(+1),                   02203900
//            DISP=(NEW,CATLG,DELETE),                                  02204000
//            SPACE=(CYL,(200,100),RLSE),                               02204100
//            DCB=(BKUP.MODEL,LRECL=1214,RECFM=FB,BLKSIZE=0),           02204200
//            UNIT=3390                                                 02204300
//ZMU022A5 DD DSN=MXCP.ZM.GDGD.ECT.EBPRIVAD.PF02(+1),                   02204400
//            DISP=(NEW,CATLG,DELETE),                                  02204500
//            SPACE=(CYL,(200,100),RLSE),                               02204600
//            DCB=(BKUP.MODEL,LRECL=214,RECFM=FB,BLKSIZE=0),            02204700
//            UNIT=3390                                                 02204800
//ZMU022A6 DD DSN=MXCP.ZM.GDGD.ECT.EBPRIVAD.PF03(+1),                   02204900
//            DISP=(NEW,CATLG,DELETE),                                  02205000
//            SPACE=(CYL,(200,100),RLSE),                               02205100
//            DCB=(BKUP.MODEL,LRECL=224,RECFM=FB,BLKSIZE=0),            02205200
//            UNIT=3390                                                 02205300
//*                                                                     02205500
//SYSTSPRT DD SYSOUT=*                                                  02205600
//SYSPRINT DD SYSOUT=*                                                  02205700
//SYSOUT   DD SYSOUT=*                                                  02205800
//SYSDBOUT DD SYSOUT=*                                                  02205900
//SYSABOUT DD SYSOUT=*                                                  02206000
//SYSUDUMP DD DUMMY                                                     02206100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZTE03T02),DISP=SHR                   02206200
//*                                                                     02206300
//*                                                                     02207000
//**********************************************************************02210000
//*        TERMINA PROCESO ZMTEPM03 SIVA MULTIEMPRESA                  *02220000
//**********************************************************************02230000
