//ZMUEPV09 PROC EMP=,SUC=,INT1=                                         00000100
//**********************************************************************00000200
//*                     C A S A   D E   B O L S A                      *00000300
//*                     =========================                      *00000400
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *00000500
//*                                                                    *00000600
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00000700
//*                                                                    *00000800
//*   PROCEDIM. :  ZMUEPV09                                            *00000900
//*                                                                    *00001000
//*   OBJETIVO  :  INTEGRACION A MUV DE CLIENTES MIGRADOS DE BPIGO     *00001100
//*                                                                    *00001200
//*   CORRE ANTES DE  : NINGUNO                                        *00001300
//*                                                                    *00001400
//*   CORRE DESPUES DE: NINGUNO                                        *00001500
//*                                                                    *00001600
//*   PERIODICIDAD    :  CADA MIGRACION DE CLIENTES BPIGO A MUV        *00001700
//*                                                                    *00001800
//**********************************************************************00001900
//*                      LOG DE MODIFICACIONES                         *00002000
//**********************************************************************00002100
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *00002200
//**********************************************************************00002300
//PUE09P04 EXEC PGM=ZM3DG001,                                           00002400
//         PARM=('&EMP','&SUC','&INT1','000000',)                       00002500
//SYSTSPRT DD SYSOUT=*                                                  00002600
//SYSPRINT DD SYSOUT=*                                                  00002700
//SYSOUT   DD SYSOUT=*                                                  00002800
//SYSDBOUT DD SYSOUT=*                                                  00002900
//SYSABOUT DD DUMMY                                                     00003000
//SYSUDUMP DD DUMMY                                                     00003100
//*                                                                     00003200
//ZMG001A1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZMUEPV09,                        00003300
//            DISP=(NEW,CATLG,DELETE),                                  00003400
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00003500
//            UNIT=3390,                                                00003600
//            SPACE=(CYL,(2,1),RLSE)                                    00003700
//*                                                                     00003800
//**********************************************************************00003900
//*                    -- ZM4MU020  --                                  00004000
//*  ACTUALIZA LA BASE DE DATOS HISTORICA DE ESTADOS DE CUENTA DE       00004100
//*  ACUERDO AL LAYOUT DE LOS ARCHIVOS DE BANCA PATRIMONIAL             00004200
//**********************************************************************00004300
//PUE09P03 EXEC PGM=IKJEFT01,COND=(0,NE)                                00004400
//ZMU020P1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZMUEPV09,DISP=SHR                00004500
//*                                                                     00004600
//*---- ARCHIVOS ENTRADA MUV       E.C. IMPRESOS SIN RECORTAR           00004700
//ZMU020M1 DD DUMMY                                                     00004800
//ZMU020M2 DD DUMMY                                                     00004900
//ZMU020M3 DD DUMMY                                                     00005000
//*                                                                     00005100
//*---- ARCHIVOS ENTRADA BPIGO     E.C. IMPRESOS RECORTADOS             00005200
//ZMU020B1 DD DSN=MXCP.ZM.FIX.ECT.EBPATRIM.PF01,DISP=SHR                00005300
//ZMU020B2 DD DSN=MXCP.ZM.FIX.ECT.EBPATRIM.PF02,DISP=SHR                00005400
//ZMU020B3 DD DSN=MXCP.ZM.FIX.ECT.EBPATRIM.PF03,DISP=SHR                00005500
//ZMU020B4 DD DSN=MXCP.ZM.FIX.ECT.EBPATRIM.CNFA,DISP=SHR                00005600
//*                                                                     00005700
//ZMU020B5 DD DSN=MXCP.ZM.FIX.ECT.EBPRIVAD.PF01,DISP=SHR                00005800
//ZMU020B6 DD DSN=MXCP.ZM.FIX.ECT.EBPRIVAD.PF02,DISP=SHR                00005900
//ZMU020B7 DD DSN=MXCP.ZM.FIX.ECT.EBPRIVAD.PF03,DISP=SHR                00006000
//ZMU020B8 DD DSN=MXCP.ZM.FIX.ECT.EBPRIVAD.CNFA,DISP=SHR                00006100
//*                                                                     00006200
//*---- ARCHIVO SALIDA BPIGO/MUV E.C. CLIENTES MIGRADOS                 00006300
//ZMU020HS DD DSN=MXCP.ZM.FIX.ECT.EBPIGO.F01.ADMN,                      00006400
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00006500
//            DCB=(DSORG=PS,LRECL=1550,RECFM=FB,BLKSIZE=0),             00006600
//            SPACE=(CYL,(200,100),RLSE)                                00006700
//*                                                                     00006800
//SYSTSPRT DD SYSOUT=*                                                  00006900
//SYSPRINT DD SYSOUT=*                                                  00007000
//SYSOUT   DD SYSOUT=*                                                  00007100
//SYSDBOUT DD SYSOUT=*                                                  00007200
//SYSABOUT DD SYSOUT=*                                                  00007300
//SYSUDUMP DD DUMMY                                                     00007400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZTE03T01),DISP=SHR                   00007500
//*                                                                     00007600
//**********************************************************************00007700
//*                     * SORT   *                                     *00007800
//* OBJETIVO: ORDENA EL ARCHIVO DE DATOS ADMINISTRATIVOS MES ANTERIOR  *00007900
//*           POR NUMERO DE CUENTA                                     *00008000
//**********************************************************************00008100
//PUE09P02 EXEC PGM=SYNCSORT,COND=(0,NE)                                00008200
//SYSOUT   DD SYSOUT=*                                                  00008300
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF01(0),DISP=SHR          00008400
//         DD DSN=MXCP.ZM.FIX.ECT.EBPIGO.F01.ADMN,DISP=SHR              00008500
//*                                                                     00008600
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.PF01.MESANT,                     00008700
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00008800
//            DCB=(DSORG=PS,LRECL=1550,RECFM=FB,BLKSIZE=0),             00008900
//            SPACE=(CYL,(200,100),RLSE)                                00009000
//*                                                                     00009100
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13T01),DISP=SHR                   00009200
//*                                                                     00009300
//**********************************************************************00009400
//*                    -- ICEGENER  --                                 *00009500
//*        RESPALDA ARCHIVO 'MXCP.ZM.FIX.ECT.EBCM.PF01.MESANT'         *00009600
//*        EN EL GDGR       'MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF01(+1)'     *00009700
//**********************************************************************00009800
//PUE09P01 EXEC PGM=ICEGENER,COND=(0,NE)                                00009900
//SYSIN    DD DUMMY                                                     00010000
//SYSPRINT DD SYSOUT=*                                                  00010100
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECT.EBCM.PF01.MESANT,DISP=SHR             00010200
//SYSUT2   DD  DSN=MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF01(+1),
//             DISP=(NEW,CATLG,DELETE),
//             LABEL=(1,SL,,,EXPDT=99000),
//             UNIT=FJVTPH,
//             DCB=(BKUP.MODEL,BLKSIZE=0,LRECL=1550,RECFM=FB)
//*                                                                     00010700
//**********************************************************************00010800
//*        TERMINA PROCESO ZMUEPV09 SIVA MULTIEMPRESA                  *00010900
//**********************************************************************00011000
