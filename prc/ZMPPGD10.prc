//ZMPPGD10 PROC                                                         00010000
//*                                                                    *00020000
//*--------------------------------------------------------------------*00030000
//* PROYECTO     : ZM - PPG.                                           *00040000
//* PROCESO      : ZMPPGD10.                                           *00050000
//* PERIODICIDAD : DIARIO.                                             *00060000
//* OBJETIVO     : CARGA DEL ARCHVIO MUFONDES.                         *00070000
//*                CARGA DE LAS TABLAS ZMDT839 Y ZMDT840.              *00080000
//* REALIZO      : FSW INDRA                                           *00090000
//* FECHA        : 26 DE OCTUBRE DEL 2015.                             *00100000
//*--------------------------------------------------------------------*00110000
//*                                                                     00120000
//*--------------------------------------------------------------------*00130000
//*         L O G    D E   M O D I F I C A C I O N E S                 *00140000
//*--------------------------------------------------------------------*00150000
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *00160000
//* ----------- --------- ------- ------------------------------------ *00170000
//*@INDRA-0216-I  INDRA   05-02-16 SE MODIFICA LA LONGITUD DEL ARCHIVO *00180000
//*@INDRA-0216-F                   DE SALIDA DEL PASO ZPP10T05         *00181000
//*--------------------------------------------------------------------*00190000
//*                                                                     00200000
//*--------------------------------------------------------------------*00210000
//* PASO       : ZPP10T10.                                             *00220000
//* UTILERIA   : IKJEFT01/ZM4PPG29                                     *00230000
//* OBJETIVO   : CARGA DE LAS TABLAS ZMDT839 Y ZMDT840                 *00240000
//*--------------------------------------------------------------------*00250000
//*                                                                     00260000
//ZPP10T10 EXEC PGM=IKJEFT01                                            00270000
//*                                                                     00280000
//ZM10PPE1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG29.CARGA39,DISP=SHR             00290000
//*                                                                     00300000
//QRLSDB2  DD SYSOUT=*                                                  00310000
//SYSPRINT DD SYSOUT=*                                                  00320000
//SYSTSPRT DD SYSOUT=*                                                  00330000
//SYSUDUMP DD SYSOUT=*                                                  00340000
//SYSABOUT DD SYSOUT=*                                                  00350000
//SYSDBOUT DD SYSOUT=*                                                  00360000
//SYSOUT   DD SYSOUT=*                                                  00370000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPP10T10),DISP=SHR                   00380000
//*                                                                     00390000
//*--------------------------------------------------------------------*00400000
//* PASO       : ZPP10T05.                                             *00410000
//* UTILERIA   : IKJEFT01/ZM4PPG30                                     *00420000
//* OBJETIVO   : DESCARGA DE LA TABLA CONCEPT PARA CARGAR TABLA ZMDT837*00430000
//*--------------------------------------------------------------------*00440000
//*                                                                     00450000
//ZPP10T05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00460000
//*                                                                     00470000
//ZM05PPS1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG28.CARGA,                       00480000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00490000
//            SPACE=(CYL,(200,100),RLSE),                               00500000
//*@INDRA-0216-I                                                        00501000
//*           DCB=(RECFM=FB,LRECL=144,BLKSIZE=0,DSORG=PS)               00510000
//            DCB=(RECFM=FB,LRECL=162,BLKSIZE=0,DSORG=PS)               00510100
//*@INDRA-0216-F                                                        00511000
//*                                                                     00520000
//QRLSDB2  DD SYSOUT=*                                                  00530000
//SYSPRINT DD SYSOUT=*                                                  00540000
//SYSTSPRT DD SYSOUT=*                                                  00550000
//SYSUDUMP DD SYSOUT=*                                                  00560000
//SYSABOUT DD SYSOUT=*                                                  00570000
//SYSDBOUT DD SYSOUT=*                                                  00580000
//SYSOUT   DD SYSOUT=*                                                  00590000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPP10T05),DISP=SHR                   00600000
//*                                                                     00610000
//*--------------------------------------------------------------------*00620000
//* PASO       : ZPP10T03.                                             *00630000
//* UTILERIA   : IKJEFT01/ZM4PPG28                                     *00640000
//* OBJETIVO   : CARGA DE LA TABLA ZMDT837                             *00650000
//*--------------------------------------------------------------------*00660000
//ZPP10T03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00670000
//*                                                                     00680000
//ZM09PPE1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG28.CARGA,DISP=SHR               00690000
//*                                                                     00700000
//QRLSDB2  DD SYSOUT=*                                                  00710000
//SYSPRINT DD SYSOUT=*                                                  00720000
//SYSTSPRT DD SYSOUT=*                                                  00730000
//SYSUDUMP DD SYSOUT=*                                                  00740000
//SYSABOUT DD SYSOUT=*                                                  00750000
//SYSDBOUT DD SYSOUT=*                                                  00760000
//SYSOUT   DD SYSOUT=*                                                  00770000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPP10T03),DISP=SHR                   00780000
//*                                                                     00790000
//*--------------------------------------------------------------------*00800000
//*                     FIN PROCESO ZMPPGD10                           *00810000
//*--------------------------------------------------------------------*00820000
