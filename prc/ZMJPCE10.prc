//ZMJPCE10 PROC EMP=,SUC=,INT1=,INT2=                                   00000100
//**********************************************************************00000200
//*                     C A S A   D E   B O L S A                      *00000300
//*                     =========================                      *00000400
//*                   >>>>  SOCIEDADES DE INVERSION  <<<<              *00000500
//*                                                                    *00000600
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00000700
//*                                                                    *00000800
//*   DISPARADOR:  SIVAXSCP (SUBMITIDOR LINEA)                         *00000900
//*                                                                    *00001000
//*   PROCEDIM. :  ZMJPCE10                                            *00001100
//*                                                                    *00001200
//*   OBJETIVO  :  GENERA REPORTE DE CANJES REALIZADOS DE ACUERDO      *00001300
//*                A LA CAPTURA DE PARAMETROS PARA CANJES DE S.D.I.    *00001400
//*                POR PARTE DEL USUARIO (PRELIMINAR)                  *00001500
//*                                                                    *00001600
//*   CORRE ANTES DE  : A PETICION DEL USUARIO                         *00001700
//*                                                                    *00001800
//*   CORRE DESPUES DE: A PETICION DEL USUARIO                         *00001900
//*                                                                    *00002000
//*   PERIODICIDAD    :  EVENTUAL                                      *00002100
//*                                                                    *00002200
//**********************************************************************00002300
//*                      LOG DE MODIFICACIONES                         *00002400
//**********************************************************************00002500
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00002600
//*--------------------------------------------------------------------*00002700
//*      |          |       |        |                                 *00002800
//**********************************************************************00002900
//*                                                                     00003000
//**********************************************************************00003100
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *00003200
//**********************************************************************00003300
//PJP10P09 EXEC PGM=ZM3DG001,                                           00003400
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00003500
//SYSTSPRT DD SYSOUT=*                                                  00003600
//SYSPRINT DD SYSOUT=*                                                  00003700
//SYSOUT   DD SYSOUT=*                                                  00003800
//SYSDBOUT DD SYSOUT=*                                                  00003900
//SYSABOUT DD DUMMY                                                     00004000
//SYSUDUMP DD DUMMY                                                     00004100
//*                                                                     00004200
//ZMG001A1 DD DSN=MXCP.ZM.TMP.SDI.EZPR.ZMJPCE10,                        00004300
//            DISP=(NEW,CATLG,DELETE),                                  00004400
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00004500
//            UNIT=3390,                                                00004600
//            SPACE=(CYL,(2,1),RLSE)                                    00004700
//*                                                                     00004800
//**********************************************************************00004900
//*                    -- ZM4EJ100  --                                 *00005000
//*  GENERA ARCHIVOS SECUENCIAL CON EL RESULTADO DE LOS CANJES DE SDI  *00005100
//*  SOLICITADOS POR EL USUARIO MEDIANTE OPCION 516                    *00005200
//**********************************************************************00005300
//PJP10P08 EXEC PGM=IKJEFT01,COND=(0,NE)                                00005400
//*                                                                     00005500
//ZMJ100A1 DD DSN=MXCP.ZM.TMP.SDI.ECBP.CANJES,                          00005600
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00005700
//            DCB=(DSORG=PS,LRECL=260,RECFM=FB,BLKSIZE=0),              00005800
//            SPACE=(CYL,(100,50),RLSE)                                 00005900
//ZMJ100A2 DD DSN=MXCP.ZM.TMP.SDI.EBCM.CANJES,                          00006000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00006100
//            DCB=(DSORG=PS,LRECL=260,RECFM=FB,BLKSIZE=0),              00006200
//            SPACE=(CYL,(100,50),RLSE)                                 00006300
//SYSTSPRT DD SYSOUT=*                                                  00006400
//SYSPRINT DD SYSOUT=*                                                  00006500
//SYSOUT   DD SYSOUT=*                                                  00006600
//SYSDBOUT DD SYSOUT=*                                                  00006700
//SYSABOUT DD SYSOUT=*                                                  00006800
//SYSUDUMP DD DUMMY                                                     00006900
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP10T01),DISP=SHR                   00007000
//*                                                                     00007100
//**********************************************************************00007200
//*                     * SORT   * CASA DE BOLSA                       *00007300
//* OBJETIVO: ORDENA LOS REGISTROS GENERADOS PARA EL CANJE, FUSION O   *00007400
//*           REASIGNACION DE FONDOS-SERIE DE SOCIEDADES DE INVERSION  *00007500
//**********************************************************************00007600
//PJP10P07 EXEC PGM=SYNCSORT,COND=(0,NE)                                00007700
//SYSOUT   DD SYSOUT=*                                                  00007800
//SORTIN   DD DSN=MXCP.ZM.TMP.SDI.ECBP.CANJES,DISP=SHR                  00007900
//SORTOUT  DD DSN=MXCP.ZM.TMP.SDI.ECBP.CANJES,DISP=SHR                  00008000
//SYSTSPRT DD SYSOUT=*                                                  00008100
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP10T03),DISP=SHR                   00008200
//*                                                                     00008300
//**********************************************************************00008400
//*                     * SORT   * BANCA PATRIMONIAL                   *00008500
//* OBJETIVO: ORDENA LOS REGISTROS GENERADOS PARA EL CANJE, FUSION O   *00008600
//*           REASIGNACION DE FONDOS-SERIE DE SOCIEDADES DE INVERSION  *00008700
//**********************************************************************00008800
//PJP10P06 EXEC PGM=SYNCSORT,COND=(0,NE)                                00008900
//SYSOUT   DD SYSOUT=*                                                  00009000
//SORTIN   DD DSN=MXCP.ZM.TMP.SDI.EBCM.CANJES,DISP=SHR                  00009100
//SORTOUT  DD DSN=MXCP.ZM.TMP.SDI.EBCM.CANJES,DISP=SHR                  00009200
//SYSTSPRT DD SYSOUT=*                                                  00009300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP10T03),DISP=SHR                   00009400
//*                                                                     00009500
//**********************************************************************00009600
//*                    -- ZM4EJ130  --                                 *00009700
//*  GENERA ARCHIVO SECUENCIAL DE LOS CANJES DE S.D.I. PARA SER        *00009800
//*  ENVIADOS A UN SERVIDOR PARA ABRIRLOS CON EXCEL                    *00009900
//*  SOLICITADOS POR EL USUARIO MEDIANTE OPCION 516 (PRELIMINAR)       *00010000
//**********************************************************************00010100
//PJP10P05 EXEC PGM=IKJEFT01,COND=(0,NE)                                00010200
//ZME130A1 DD DSN=MXCP.ZM.TMP.SDI.EZPR.ZMJPCE10,DISP=SHR                00010300
//ZME130A2 DD DSN=MXCP.ZM.TMP.SDI.ECBP.CANJES,DISP=SHR                  00010400
//ZME130A3 DD DSN=MXCP.ZM.TMP.SDI.EBCM.CANJES,DISP=SHR                  00010500
//*                                                                     00010600
//ZME130A4 DD DSN=MXCP.ZM.TMP.SDI.ECBP.CANJES.PRL.ARC,                  00010700
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00010800
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0),              00010900
//            SPACE=(CYL,(100,50),RLSE)                                 00011000
//ZME130A5 DD DSN=MXCP.ZM.TMP.SDI.EBCM.CANJES.PRL.ARC,                  00011100
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00011200
//            DCB=(DSORG=PS,LRECL=400,RECFM=FB,BLKSIZE=0),              00011300
//            SPACE=(CYL,(100,50),RLSE)                                 00011400
//SYSTSPRT DD SYSOUT=*                                                  00011500
//SYSPRINT DD SYSOUT=*                                                  00011600
//SYSOUT   DD SYSOUT=*                                                  00011700
//SYSDBOUT DD SYSOUT=*                                                  00011800
//SYSABOUT DD SYSOUT=*                                                  00011900
//SYSUDUMP DD DUMMY                                                     00012000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP10T04),DISP=SHR                   00012100
//*                                                                     00012200
//**********************************************************************00012300
//*                    -- ZM4EJ110  --                                 *00012400
//*  GENERA LISTADO CON EL RESULTADO DE LOS CANJES DE S.D.I.           *00012500
//*  SOLICITADOS POR EL USUARIO MEDIANTE OPCION 516 (PRELIMINAR)       *00012600
//**********************************************************************00012700
//PJP10P04 EXEC PGM=IKJEFT01,COND=(0,NE)                                00012800
//ZME110A1 DD DSN=MXCP.ZM.TMP.SDI.EZPR.ZMJPCE10,DISP=SHR                00012900
//ZME110A2 DD DSN=MXCP.ZM.TMP.SDI.ECBP.CANJES,DISP=SHR                  00013000
//ZME110A3 DD DSN=MXCP.ZM.TMP.SDI.EBCM.CANJES,DISP=SHR                  00013100
//*                                                                     00013200
//ZME110LC DD DSN=MXCP.ZM.TMP.SDI.ECBP.CANJES.PRL,                      00013300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00013400
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),             00013500
//            SPACE=(CYL,(100,50),RLSE)                                 00013600
//ZME110LB DD DSN=MXCP.ZM.TMP.SDI.EBCM.CANJES.PRL,                      00013700
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00013800
//            DCB=(DSORG=PS,LRECL=133,RECFM=FBA,BLKSIZE=0),             00013900
//            SPACE=(CYL,(100,50),RLSE)                                 00014000
//SYSTSPRT DD SYSOUT=*                                                  00014100
//SYSPRINT DD SYSOUT=*                                                  00014200
//SYSOUT   DD SYSOUT=*                                                  00014300
//SYSDBOUT DD SYSOUT=*                                                  00014400
//SYSABOUT DD SYSOUT=*                                                  00014500
//SYSUDUMP DD DUMMY                                                     00014600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP10T02),DISP=SHR                   00014700
//*                                                                     00014800
//**********************************************************************00014900
//*                    -- ICEGENER  -- ENVIA A CTL-D                   *00015000
//*        REPORTE S.D.I. CASA DE BOLSA SOLIC. X USUARIO               *00015100
//**********************************************************************00015200
//PJP10P03 EXEC PGM=ICEGENER,COND=(0,NE)                                00015300
//SYSPRINT DD SYSOUT=*                                                  00015400
//SYSUT1   DD DSN=MXCP.ZM.TMP.SDI.ECBP.CANJES.PRL,DISP=SHR              00015500
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00015600
//SYSIN    DD DUMMY                                                     00015700
//*                                                                     00015800
//**********************************************************************00015900
//*                    -- ICEGENER  -- ENVIA A CTL-D                   *00016000
//*        REPORTE S.D.I. BANCA PATRIMONIAL SOLIC. X USUARIO           *00016100
//**********************************************************************00016200
//PJP10P02 EXEC PGM=ICEGENER,COND=(0,NE)                                00016300
//SYSPRINT DD SYSOUT=*                                                  00016400
//SYSUT1   DD DSN=MXCP.ZM.TMP.SDI.EBCM.CANJES.PRL,DISP=SHR              00016500
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00016600
//SYSIN    DD DUMMY                                                     00016700
//*                                                                     00016800
//**********************************************************************00016900
//*                SE ADICIONA CONDICION                               *00017000
//*                PARA QUE SEA TOMADA POR CTL-D                       *00017100
//**********************************************************************00017200
//PJP10P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXSCP_IN_OK WDATE',       00017300
//         COND=(4,LT)                                                  00017400
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00017500
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00017600
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00017700
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00017800
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00017900
//PRTDBG   DD SYSOUT=*                                                  00018000
//SYSPRINT DD DUMMY                                                     00018100
//SYSUDUMP DD DUMMY                                                     00018200
//DAPRINT  DD SYSOUT=*                                                  00018300
//DACNDIN  DD DDNAME=SYSIN                                              00018400
//*                                                                     00018500
//**********************************************************************00018600
//*        TERMINA PROCESO ZMJPCE10 SIVA MULTIEMPRESA                  *00018700
//**********************************************************************00018800
