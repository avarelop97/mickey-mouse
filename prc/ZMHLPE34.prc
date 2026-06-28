//ZMHLPE34 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//*                     C A S A   D E  B O L S A                       *00040000
//*                     ========================                       *00050000
//*                    <<     V A L O R E S    >>                      *00060000
//*                                                                    *00070000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00080000
//*                                                                    *00090000
//*   PROCEDIM. :  ZMHLPE34                                            *00100000
//*                                                                    *00110000
//*   OBJETIVO  :  RELACION PRELIMINAR DE ACCIONISTAS PARA ASISTENCIA  *00120000
//*                A ASAMBLEA                                          *00130000
//*                                                                    *00140000
//*   CORRE DESPUES DE: SUBMITIDO POR OPC 831                          *00150000
//*                                                                    *00160000
//*   PERIODICIDAD    : A PETICION DEL USUARIO                         *00170000
//*                                                                    *00180000
//*   ELABORADO POR: DAVID GUTIERREZ CASILLAS     ASATECK.             *00190000
//*                                                                    *00200000
//*   FECHA:  MARZO DE 2003.                                           *00210000
//*                                                                    *00220000
//**********************************************************************00230000
//*                      LOG DE MODIFICACIONES                         *00240000
//**********************************************************************00250000
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00260000
//*--------------------------------------------------------------------*00270000
//*AJP   |05/04/2011|XM05197|PHL34P04|EJECUTAR DOS VECES EL PROCESO    *00280000
//*      |          |       |        |PARA ACUMULAR LA POSICION DE LAS *00290000
//*      |          |       |        |GARANTIAS Y QUE SE REFLEJE EN EL *00300000
//*      |          |       |        |ULTIMO REPORTE EN CDAM.          *00310000
//*--------------------------------------------------------------------*00320000
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00330000
//*--------------------------------------------------------------------*00340000
//*      |          |       |        |                                 *00350000
//**********************************************************************00360000
//*                                                                    *00370000
//*  PASO:  4     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00380000
//*  PHL34P04     GRABA EN ARCHIVO SECUENCIAL.                         *00390000
//*                                                         ZM3DG001   *00400000
//**********************************************************************00410000
//PHL34P04 EXEC PGM=ZM3DG001,                                           00420000
//         PARM=('&EMP','&SUC','&INT1','&INT2')                         00430000
//*                                                                     00440000
//PI601765 DD DUMMY                                                     00450000
//*                                                                     00460000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00470000
//SYSPRINT DD SYSOUT=*                                                  00480000
//SYSOUT   DD SYSOUT=*                                                  00490000
//SYSDBOUT DD SYSOUT=*                                                  00500000
//SYSABOUT DD DUMMY                                                     00510000
//SYSUDUMP DD DUMMY                                                     00520000
//*                                                                     00530000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZMHLPE34,                      00540000
//            DISP=(NEW,CATLG,DELETE),                                  00550000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00560000
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00570000
//*                                                                     00580000
//**********************************************************************00590000
//*  PASO:  3     REPORTAR A LOS ACCIONISTAS QUE SERAN CITADOS A       *00600000
//*               ASAMBLEA                                             *00610000
//*  PHL34P03                                                          *00620000
//*       NOTA : AGREGA EL EVENTO PARA ACUMULAR LA                     *00630000
//*              POSICION EN GARANTIA.                      ZM4EHA74   *00640000
//**********************************************************************00650000
//PHL34P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00660000
//*                                                                     00670000
//ZMHA74A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZMHLPE34,DISP=SHR              00680000
//*                                                                     00690000
//ZMHA74R1 DD SYSOUT=*                                                  00700000
//*                                                                     00710000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00720000
//SYSPRINT DD SYSOUT=*                                                  00730000
//SYSOUT   DD SYSOUT=*                                                  00740000
//SYSDBOUT DD SYSOUT=*                                                  00750000
//SYSABOUT DD SYSOUT=*                                                  00760000
//SYSUDUMP DD DUMMY                                                     00770000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL34T02),DISP=SHR                   00780000
//**********************************************************************00790000
//*  PASO:  2     REPORTAR A LOS ACCIONISTAS QUE SERAN CITADOS A       *00800000
//*               ASAMBLEA                                             *00810000
//*  PHL34P02                                                          *00820000
//*       NOTA :                                            ZM4EHA74   *00830000
//**********************************************************************00840000
//PHL34P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00850000
//*                                                                     00860000
//ZMHA74A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZMHLPE34,DISP=SHR              00870000
//*                                                                     00880000
//ZMHA74R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00890000
//*                                                                     00900000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00910000
//SYSPRINT DD SYSOUT=*                                                  00920000
//SYSOUT   DD SYSOUT=*                                                  00930000
//SYSDBOUT DD SYSOUT=*                                                  00940000
//SYSABOUT DD SYSOUT=*                                                  00950000
//SYSUDUMP DD DUMMY                                                     00960000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL34T02),DISP=SHR                   00970000
//**********************************************************************00980000
//*  PASO:  1     AVISO A CONSOLA EN CASO DE ERROR                     *00990000
//*  PHL34P01                                                          *01000000
//**********************************************************************01010000
//PHL34P01 EXEC PGM=MAILOPER,COND=(4,GE,PHL34P02),                      01020000
//         PARM=('/ATENCION.AVISAR A PRODUCCION QUE PROCESO ',          01030000
//             'SIVAXPAP(ZMHLPE34)TERMINO MAL.CONTESTAR SI',            01040000
//             'PARA TERMINAR')                                         01050000
//**********************************************************************01060000
//*  PASO:  0     ADICIONA LA CONDICION PARA QUE SEA                   *01070000
//*  PHL34P00     TOMADA POR CONTROL-D                                 *01080000
//**********************************************************************01090000
//PHL34P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXPAP_IN_SEP_OK WDATE',   01100000
//         COND=(4,LT)                                                  01110000
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   01120000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   01130000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 01140000
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   01150000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   01160000
//PRTDBG   DD SYSOUT=Z                                                  01170000
//SYSPRINT DD DUMMY                                                     01180000
//SYSUDUMP DD DUMMY                                                     01190000
//DAPRINT  DD SYSOUT=Z                                                  01200000
//DACNDIN  DD DDNAME=SYSIN                                              01210000
//*                                                                     01220000
