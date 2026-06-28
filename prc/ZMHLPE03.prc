//ZMHLPE03 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//*                     C A S A   D E   B O L S A                      *00040000
//*                     =========================                      *00050000
//*                     << MERCADO DE CAPITALES>>                      *00060000
//*                                                                    *00070000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00080000
//*                                                                    *00090000
//*   PROCEDIM. :  ZMHLPE03                                            *00100000
//*                                                                    *00110000
//*   OBJETIVO  :  REPORTE DE TENENCIA ACCIONARIA PARA UN PROMOTOR EN  *00120000
//*                ESPECIAL Y/O SUS DEPENDIENTES JERARQUICOS (OPC. 74) *00130000
//*   CORRE ANTES DE  :  NINGUNO                                       *00140000
//*                                                                    *00150000
//*   CORRE DESPUES DE:  NINGUNO                                       *00160000
//*                                                                    *00170000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00180000
//*                                                                    *00190000
//********************************************************************* 00200000
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO     00210000
//********************************************************************* 00220000
//*                                                                     00230000
//PHL03P04 EXEC PGM=ZM3DG001,                                           00240001
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00250000
//*                                                                     00260001
//PI601765 DD DUMMY                                                     00280000
//*                                                                     00281001
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00290000
//SYSPRINT DD SYSOUT=*                                                  00300000
//SYSOUT   DD SYSOUT=*                                                  00310000
//SYSDBOUT DD SYSOUT=*                                                  00320000
//SYSABOUT DD DUMMY                                                     00330000
//SYSUDUMP DD DUMMY                                                     00340000
//*                                                                     00341001
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHLPE03,               00351001
//           DISP=(NEW,CATLG,DELETE),                                   00360000
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),                00370000
//           UNIT=3390,                                                 00380000
//           SPACE=(CYL,(2,1),RLSE)                                     00390000
//*                                                                     00400000
//*------------------------------------------------------------------   00530000
//*            IMPRESION DE REPORTE DE POSICION ACCIONARIA              00540000
//*------------------------------------------------------------------   00550000
//*                                                                     00560000
//PHL03P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00570001
//PI601765 DD DUMMY                                                     00590000
//*                                                                     00600000
//VTB644A1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00621001
//*                                                                     00622001
//ZMH569T1 DD DSN=&&TENENC,                                             00630000
//            DISP=(NEW,PASS),                                          00640000
//            UNIT=3390,                                                00650000
//            DCB=(RECFM=FB,LRECL=84,BLKSIZE=0),                        00660000
//            SPACE=(CYL,(10,5),RLSE)                                   00670000
//SORTWK01 DD UNIT=3390,                                                00680000
//            SPACE=(CYL,(5),RLSE)                                      00690000
//SORTWK02 DD UNIT=3390,                                                00700000
//            SPACE=(CYL,(5),RLSE)                                      00710000
//SORTWK03 DD UNIT=3390,                                                00720000
//            SPACE=(CYL,(5),RLSE)                                      00730000
//*                                                                     00740000
//ZMH569P1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHLPE03,               00750001
//            DISP=SHR                                                  00760000
//*                                                                     00770000
//SYSTSPRT DD SYSOUT=*,                                                 00780000
//            DCB=BLKSIZE=0                                             00790000
//SYSPRINT DD SYSOUT=*                                                  00800000
//SYSOUT   DD SYSOUT=*                                                  00810000
//SYSDBOUT DD SYSOUT=*                                                  00820000
//SYSABOUT DD DUMMY                                                     00830000
//SYSUDUMP DD DUMMY                                                     00840000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL03T01),DISP=SHR                   00850000
//*                                                                     01960100
//*-------------------------------------------------------------------- 01961000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          01970000
//*-------------------------------------------------------------------- 01980000
//PHL03P02 EXEC PGM=MAILOPER,COND=(4,GE,PHL03P03),                      01990001
//         PARM=('/ATENCION OPERADOR.AVISAR A PRODUCCION QUE',          02000000
//             ' PROCESO SIVAXTNP TERMINO MAL.CONTESTAR SI',            02010000
//             'PARA TERMINAR')                                         02020000
//****************************************************************      02030000
//*                SE ADICIONA CONDICION                         *      02040000
//*                PARA QUE SEA TOMADA POR CTL-D                 *      02050000
//****************************************************************      02060000
//PHL03P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXTNP_IN_SEP_OK WDATE',   02070000
//         COND=(4,LT)                                                  02080000
//*                                                                     02081000
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                 02082000
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                 02083000
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV               02084000
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                 02085000
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                 02086000
//*                                                                     02087000
//PRTDBG   DD   SYSOUT=*                                                02130000
//SYSPRINT DD   DUMMY                                                   02140000
//SYSUDUMP DD   DUMMY                                                   02150000
//DAPRINT  DD   SYSOUT=*                                                02160000
//DACNDIN  DD   DDNAME=SYSIN                                            02170002
//* PEND     FIN DE PROCEDIMIENTO                                       02180000
