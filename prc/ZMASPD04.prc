//ZMASPD04 PROC                                                         00010015
//*--------------------------------------------------------------------*00020015
//*                                                                    *00030015
//*                     C A S A   D E   B O L S A                      *00040015
//*                     =========================                      *00050015
//*                     <<  MERCADO DE DINERO  >>                      *00060015
//*                     <<     Y CAPITALES     >>                      *00070015
//*                                                                    *00080015
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00090015
//*                                                                    *00100015
//*   PROCEDIMIENTO    : ZMASPD04                                      *00110015
//*                                                                    *00120015
//*   JCL              : SIVAXQAC                                      *00130015
//*                                                                    *00140015
//*   LO EJECUTA       : OPCION  49 (2), A SOLICITUD DEL USUARIO.      *00150015
//*                                                                    *00160015
//*   OBJETIVO         : GENERAR ARCHIVO DE PRECIOS DE LA CARGA DE     *00170015
//*                      ASSET CONTROL (AREA DE RIESGOS).              *00180015
//*                      PRENDE LA CONDICION PARA TRANSFERIR EL        *00190015
//*                      ARCHIVO AL SERVER ->(SIVAXQAC_OK)             *00200015
//*                                                                    *00210015
//*   FECHA            : 26/MARZO/2009.                                *00220015
//*                                                                    *00230015
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO.                *00240015
//*                                                                    *00250015
//*   AUTOR            : DAMIAN LUNA PE#A.                             *00260015
//*                                                                    *00270015
//*   OBSERVACION      : ESTE PROCEDIMIENTO SE PUEDE EJECUATAR MAS DE  *00280015
//*                      UNA VEZ DURANTE EL DIA.                       *00290015
//*                                                                    *00300015
//*--------------------------------------------------------------------*00310015
//*        L O G    D E   M O D I F I C A C I O N E S                  *00320015
//*--------------------------------------------------------------------*00330015
//*      MARCA      AUTOR   FECHA  DESCRIPCION                         *00340015
//*   -----------  ------- ------- ----------------------------------- *00350015
//*   @MEX001      XM09584 01FEB12 MODIFICAR PASO PHL04P0A             *00360015
//*                                AGREGAR EL ZMMB10A2 DE SALIDA        00370015
//*                                DESPUES DE ZMMB10A1                 *00380015
//*--------------------------------------------------------------------*00390015
//*--------------------------------------------------------------------*00400015
//* PROGRAMA: ZM3DG001                                                  00410015
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR          00420015
//* NO ACTUALIZA TABLAS.                                                00430015
//*-------------------------------------------------------------------- 00440015
//PHL04P04 EXEC PGM=ZM3DG001,                                           00450015
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00460015
//ZMG001A1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMASPD04,                   00470015
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00480015
//            SPACE=(CYL,(20,10),RLSE),                                 00490015
//            DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)                00500015
//SYSTSPRT DD SYSOUT=*                                                  00510015
//SYSPRINT DD SYSOUT=*                                                  00520015
//SYSOUT   DD SYSOUT=*                                                  00530015
//SYSDBOUT DD SYSOUT=*                                                  00540015
//SYSABOUT DD SYSOUT=*                                                  00550015
//SYSUDUMP DD DUMMY                                                     00560015
//*                                                                     00570015
//*-------------------------------------------------------------------- 00580015
//* PROGRAMA: ZM4MG787                                                  00590015
//* FUNCION : QUERY DE PRECIOS DE EMISORAS DE MDD.                      00600015
//*           LOS PRECIOS SON RECIBIDOS DE ASSET CONTROL                00610015
//*           GENERA INFO DE MERCADO DE DINERO.                         00620015
//*-------------------------------------------------------------------- 00630015
//PHL04P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00640015
//PI601765  DD DUMMY                                                    00650015
//*                                                                     00660015
//ZMG787P1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMASPD04,DISP=SHR           00670015
//ZMG787R1 DD DSN=MXCP.ZM.FIX.PRECIOS.DINAC,                            00680015
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00690015
//            SPACE=(CYL,(4,2),RLSE),                                   00700015
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=193,DSORG=PS)               00710015
//*                                                                     00720015
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00730015
//SYSPRINT DD SYSOUT=*                                                  00740015
//SYSOUT   DD SYSOUT=*                                                  00750015
//SYSDBOUT DD SYSOUT=*                                                  00760015
//SYSABOUT DD SYSOUT=*                                                  00770015
//SYSUDUMP DD DUMMY                                                     00780015
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHA04T03),DISP=SHR                   00790015
//*                                                                     00800015
//*-------------------------------------------------------------------- 00810015
//* PROGRAMA: ZM4MG787                                                  00820015
//* FUNCION : REPORTE DE PRECIOS DE EMISORAS DE MDC DESDE ASSET CTL     00830015
//*           GENERA ARCHIVO DE MERCADO DE CAPITALES.                   00840015
//*-------------------------------------------------------------------- 00850015
//PHL04P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00860015
//PI601765  DD DUMMY                                                    00870015
//*                                                                     00880015
//ZMG787P1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMASPD04,DISP=SHR           00890015
//ZMG787R1 DD DSN=MXCP.ZM.FIX.PRECIOS.CAPAC,                            00900015
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00910015
//            SPACE=(CYL,(4,2),RLSE),                                   00920015
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=193,DSORG=PS)               00930015
//*                                                                     00940015
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00950015
//SYSPRINT DD SYSOUT=*                                                  00960015
//SYSOUT   DD SYSOUT=*                                                  00970015
//SYSDBOUT DD SYSOUT=*                                                  00980015
//SYSABOUT DD SYSOUT=*                                                  00990015
//SYSUDUMP DD DUMMY                                                     01000015
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHA04T02),DISP=SHR                   01010015
//*                                                                     01020015
//*-------------------------------------------------------------------- 01030015
//* FUNCION:  CONCATENA LOS ARCHIVOS DEL VECTOR DE PRECIOS CARGADOS     01040015
//*           DESDE ASSET CONTROL PARA MERCADO DE DINERO Y MERCADO DE   01050015
//*           CAPITALES.                                                01060015
//*-------------------------------------------------------------------- 01070015
//PHL04P01 EXEC PGM=ICEMAN,COND=(4,LT)                                  01080015
//*                                                                     01090015
//SORTIN   DD DSN=MXCP.ZM.FIX.PRECIOS.DINAC,DISP=SHR                    01100015
//         DD DSN=MXCP.ZM.FIX.PRECIOS.CAPAC,DISP=SHR                    01110015
//*                                                                     01120015
//SORTOUT  DD DSN=MXCP.ZM.FIX.PRECIOS.ASSCTL,                           01130015
//            DISP=(NEW,CATLG,DELETE),                                  01140015
//            DCB=(RECFM=FB,LRECL=193,BLKSIZE=0,DSORG=PS),              01150015
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE)                        01160015
//*                                                                     01170015
//SYSOUT   DD  SYSOUT=*                                                 01180015
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHA04T01),DISP=SHR                  01190015
//*                                                                     01200015
//*@DTS01-I                                                             01210015
//*-------------------------------------------------------------------- 01220015
//* PROGRAMA: ZM4MHB10                                                  01230015
//* FUNCION : GENERA ARCHIVO DE PRECIOS DE EMISORAS DE MERCADO DE       01240015
//*           DINERO Y CAPITALES                                        01250015
//*-------------------------------------------------------------------- 01260015
//PHL04P0A EXEC PGM=IKJEFT01,COND=(4,LT)                                01270015
//PI601765 DD DUMMY                                                     01280015
//*                                                                     01290015
//ZMMB10A1 DD DSN=MXCP.ZM.FIX.PRECIOS.CAPDIN,                           01300015
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        01310015
//            SPACE=(CYL,(4,2),RLSE),                                   01320015
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=81,DSORG=PS)                01330015
//*@MEX001-I                                                            01340015
//ZMMB10A2 DD DSN=MXCP.ZM.FIX.PRECIOS.ESPCADI,                          01350015
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        01360015
//            SPACE=(CYL,(4,2),RLSE),                                   01370015
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=87,DSORG=PS)                01380015
//*@MEX001-F                                                            01390015
//*INI JJH 06/06/2012                                                   01391015
//ZMMB10A3 DD DSN=MXCP.ZM.FIX.PRECIOS.PRECADI,                          01392015
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        01393015
//            SPACE=(CYL,(4,2),RLSE),                                   01394015
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=98,DSORG=PS)                01395015
//*FIN JJH 06/06/2012                                                   01396015
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    01400015
//SYSPRINT DD SYSOUT=*                                                  01410015
//SYSOUT   DD SYSOUT=*                                                  01420015
//SYSDBOUT DD SYSOUT=*                                                  01430015
//SYSABOUT DD SYSOUT=*                                                  01440015
//SYSUDUMP DD DUMMY                                                     01450015
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHA04T0A),DISP=SHR                   01460015
//*                                                                     01470015
//*-------------------------------------------------------------------- 01480015
//*@DTS01-F                                                             01490015
//**********************************************************************01500015
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROLM QUE TERMINO             *01510015
//*            LA CARGA DEL QUERY PARA SU TRANSFERENCIA.               *01520015
//**********************************************************************01530015
//PHP04P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXQAC_IN_OK WDATE',       01540015
//         COND=(4,LT)                                                  01550015
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   01560015
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   01570015
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 01580015
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   01590015
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   01600015
//*                                                                     01610015
//PRTDBG   DD SYSOUT=*                                                  01620015
//SYSPRINT DD DUMMY                                                     01630015
//SYSUDUMP DD DUMMY                                                     01640015
//DAPRINT  DD SYSOUT=*                                                  01650015
//DACNDIN  DD DDNAME=SYSIN                                              01660015
//*                                                                     01670015
