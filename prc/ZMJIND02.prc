//ZMJIND02 PROC                                                         00000100
//*                                                                     00000200
//**********************************************************************00000300
//**                                                                   *00000400
//** SISTEMA        :  MUV                                             *00000500
//**                                                                   *00000600
//** PROCESO        :  ZMJIND02(BCJIND02)                              *00000700
//**                                                                   *00000800
//** OBJETIVO       :  GENERA CONDICION DE ENTRADA DEL PROCESO BCJIND01*00000900
//**                                                                   *00001000
//** CORRE ANTES DE :  BCJIND01                                        *00001100
//**                                                                   *00001200
//**                                                                   *00001300
//** DESPUES DE     :  N/A                                             *00001400
//**                                                                   *00001500
//**                                                                   *00001600
//** OBSERVACIONES  :  CORRE A PETICION DEL USUARIO                    *00001700
//**                                                                   *00001800
//**                                                                   *00001900
//** REALIZO        :  AZERTIA (F.V.C.)                                *00002000
//*                    FEBRERO 2008.                                   *00002100
//**********************************************************************00002200
//* BITACORA DE MODIFICACIONES :                                       *00002300
//*--------------------------------------------------------------------*00002400
//*MODIF |  FECHA   |USUARIO|  PASO |DESCRIPCION                       *00002500
//*--------------------------------------------------------------------*00002600
//PJINDP01 EXEC PGM=ZM3DG001,                                           00002700
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00002800
//*                                                                     00002900
//ZMG001A1 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..PATR,                       00003000
//            DISP=(NEW,CATLG,DELETE),                                  00003100
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00003200
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00003300
//SYSTSPRT DD SYSOUT=*                                                  00003400
//SYSPRINT DD SYSOUT=*                                                  00003500
//SYSOUT   DD SYSOUT=*                                                  00003600
//SYSDBOUT DD SYSOUT=*                                                  00003700
//SYSABOUT DD SYSOUT=*                                                  00003800
//SYSUDUMP DD SYSOUT=*                                                  00003900
//*                                                                     00004000
//*--------------------------------------------------------------------*00004100
//* PROGRAMA:                                                          *00004200
//* OBJETIVO: ADICIONA CONDICION PARA QUE SE DISPARE EL  PROCESO       *00004300
//*           BCJIND01 PARA SOBRE ESCRIBIR CONSTANCIAS SAT.            *00004400
//*--------------------------------------------------------------------*00004500
//PJINDP02 EXEC  PGM=CTMCND,COND=(4,LT),                                00004600
//         PARM='ADD COND BCJIND01_OK WDATE'                            00004700
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                 00004800
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                 00004900
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV               00005000
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                 00005100
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                 00005200
//PRTDBG   DD   SYSOUT=*                                                00005300
//SYSPRINT DD   DUMMY                                                   00005400
//SYSUDUMP DD   DUMMY                                                   00005500
//DAPRINT  DD   SYSOUT=*                                                00005600
//DACNDIN  DD   DDNAME=SYSIN                                            00005700
//*                                                                     00005800
