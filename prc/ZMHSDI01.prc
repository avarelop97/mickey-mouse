//ZMHSDI01 PROC                                                         00010007
//**********************************************************************00020002
//*                     C A S A   D E   B O L S A                      *00030002
//*                     =========================                      *00040002
//*                     <<<   V A L O R E S   >>>                      *00040102
//*                                                                    *00040202
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00040302
//*                                                                    *00040402
//*   PROCEDIM. :  ZMHSDI01.                                           *00040507
//*                                                                    *00040602
//*   OBJETIVO  :  VENTAS AUTOMATICAS SOCIEDADES DE INVERSION          *00040707
//*                                                                    *00040902
//*                                                                    *00041005
//*   CORRE ANTES DE  :                                                *00041105
//*                                                                    *00041205
//*   CORRE DESPUES DE:                                                *00041305
//*                                                                    *00041405
//*   PERIODICIDAD    :                                                *00041505
//*                                                                    *00041605
//*   ELABORADO POR   :                               EVERIS           *00041705
//*                                                                    *00041805
//*   FECHA:  MAYO 2009                                                *00041905
//*                                                                    *00042005
//*   MODIFICA       :                                                 *00042105
//*   FECHA          :                                                 *00042205
//**********************************************************************00042305
//*-------------------------------------------------------------------* 00042402
//* PROGRAMA: ZM3DG001                                                * 00042502
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR        * 00043002
//* NO ACTUALIZA TABLAS.                                              * 00044002
//*-------------------------------------------------------------------* 00045002
//ZMHAFI02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2')       00191009
//SYSTSPRT DD SYSOUT=*                                                  00192009
//SYSPRINT DD SYSOUT=*                                                  00193009
//SYSOUT   DD SYSOUT=*                                                  00194009
//SYSDBOUT DD SYSOUT=*                                                  00195009
//SYSABOUT DD DUMMY                                                     00196009
//SYSUDUMP DD DUMMY                                                     00197009
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHSDI01,                     00198009
//            DISP=(NEW,CATLG,DELETE),                                  00199009
//            SPACE=(CYL,(2,1),RLSE),                                   00199109
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00199209
//            UNIT=3390                                                 00199309
//*                                                                     00199409
//****************************************************************      00200002
//*                SE ADICIONA CONDICION                         *      00210002
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00220002
//****************************************************************      00230002
//ZMHAFI01 EXEC  PGM=CTMCND,PARM='ADD COND BCHSDI01_IN_OK WDATE',       00370009
//         COND=(4,LT)                                                  00380009
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00390009
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00400009
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00410009
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00420009
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00430009
//PRTDBG   DD  SYSOUT=*                                                 00440009
//SYSPRINT DD  DUMMY                                                    00450009
//SYSUDUMP DD  DUMMY                                                    00460009
//DAPRINT  DD  SYSOUT=*                                                 00470009
//*                                                                     00480009
