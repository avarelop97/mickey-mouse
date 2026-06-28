//ZMGHPD10 PROC                                                         00010000
//**********************************************************************00020000
//*                     C A S A   D E  B O L S A                       *00030000
//*                     ========================                       *00040000
//*                     <<  C A P I T A L E S >>                       *00050000
//*                                                                    *00060000
//*                                                                    *00070000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES.(HOST TO HOST).      *00080000
//*                                                                    *00090000
//* PROCESO        :  SIVAXEFF                                         *00100000
//*                   EXTRACTOR PARA FONDO DE FONDOS.                  *00110000
//*                                                                    *00120000
//* OBJETIVO       :  EXTRACTOR PARA FONDO DE FONDOS.                  *00130000
//*                   HOST TO HOST.                                    *00140000
//*                                                                    *00150000
//* GRUPO          :  06         SOC. DE INV. QUE OPERAN SOC. DE INV.  *00160000
//*                                                                    *00170000
//*                                                                    *00180000
//* DESPUES DE     :  A PETICION DEL USUARIO,                          *00190000
//*                   SUBMITE POR OPCION 868.                          *00200000
//*                                                                    *00210000
//* PERIODICIDAD   :  DIARIO, DE LUNES A VIERNES, A PETICION.          *00220000
//*                                                                    *00230000
//* ELABORADO POR  :  EQUIPO DE HOST TO HOST.                          *00240000
//*                                                                    *00250000
//*******************************************************************   00260000
//*   RECEPCION DE PARAMETROS                                           00270000
//*******************************************************************   00280000
//PHP10P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)      00290002
//SYSTSPRT DD SYSOUT=*                                                  00300000
//SYSPRINT DD SYSOUT=*                                                  00310000
//SYSOUT   DD SYSOUT=*                                                  00320000
//SYSDBOUT DD SYSOUT=*                                                  00330000
//SYSABOUT DD DUMMY                                                     00340000
//SYSUDUMP DD DUMMY                                                     00350000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMGHPD10,               00360001
//            DISP=(NEW,CATLG,DELETE),                                  00370000
//            SPACE=(CYL,(2,1),RLSE),                                   00380000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00390000
//            UNIT=3390                                                 00400000
//SYSTSPRT DD SYSOUT=*                                                  00400100
//SYSPRINT DD SYSOUT=*                                                  00400200
//SYSOUT   DD SYSOUT=*                                                  00400300
//SYSDBOUT DD SYSOUT=*                                                  00400400
//SYSABOUT DD SYSOUT=*                                                  00400500
//SYSUDUMP DD DUMMY                                                     00400600
//*                                                                     00410000
//****************************************************************      00420000
//*                SE ADICIONA CONDICION                         *      00430000
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00440000
//****************************************************************      00450000
//PHP10P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXEFF_IN_OK WDATE',       00460000
//         COND=(4,LT)                                                  00470000
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00480000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00490000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00500000
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00510000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00520000
//PRTDBG   DD  SYSOUT=*                                                 00530000
//SYSPRINT DD  DUMMY                                                    00540000
//SYSUDUMP DD  DUMMY                                                    00550000
//DAPRINT  DD  SYSOUT=*                                                 00560000
//*                                                                     00570000
//****************************************************************      00570100
//*                         FIN                                  *      00570200
//****************************************************************      00570300
