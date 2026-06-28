//ZMHLPE53  PROC                                                        00000100
//**********************************************************************00000200
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00000300
//* OBJETIVO       :  PRENDE LA CONDICION CBHCND30_IN PARA DISPARAR    *00000400
//*                   CBHCND30, EL CUAL HACE LA TRANSMISION DE ARCH.   *00000500
//* JCL            :  SIVAXVEA (OPCION EN LINEA 951-6)                 *00000600
//* CORRE ANTES DE :  PCAVAD10 (PROCESA LOS ARCHIVOS TRANSFERIDOS)     *00000700
//* REALIZO        :  ALBERTO ADUNA G. (GETRONICS)                     *00000800
//* FECHA          :  10 - OCTUBRE - 2007                              *00000900
//**********************************************************************00001000
//*                                                                     00001100
//**********************************************************************00001200
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *00001300
//**********************************************************************00001400
//PHL53P03 EXEC PGM=ZM3DG001,                                           00001500
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00001600
//PI601765 DD DUMMY                                                     00001700
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00001800
//SYSPRINT DD SYSOUT=*                                                  00001900
//SYSOUT   DD SYSOUT=*                                                  00002000
//SYSDBOUT DD SYSOUT=*                                                  00002100
//SYSABOUT DD DUMMY                                                     00002200
//SYSUDUMP DD DUMMY                                                     00002300
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE53,               00002400
//            DISP=(NEW,CATLG,DELETE),                                  00002500
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00002600
//            UNIT=3390,                                                00002700
//            SPACE=(CYL,(1,1),RLSE)                                    00002800
//*                                                                     00002900
//**********************************************************************00003000
//* OBJETIVO : CREAR EL ARCHIVO EN HOST PARA LA TRANSFERENCIA          *00003100
//**********************************************************************00003200
//*PHL53P02 EXEC PGM=IDCAMS,COND=(4,LT)                                 00003300
//*SYSPRINT DD SYSOUT=*                                                 00003400
//*SYSIN    DD DUMMY                                                    00003500
//*ARCHIVO1 DD DSN=MXCP.ZM.FIX.ECBP.SZPR.VECPRE,                        00003600
//*            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),             00003700
//*            DISP=(NEW,CATLG,CATLG),                                  00003800
//*            SPACE=(CYL,(10,5),RLSE),                                 00003900
//*            UNIT=3390                                                00004000
//**********************************************************************00004100
//*  OBJETIVO : DAR DE ALTA CONDICION A CONTROL-M PARA TRANSFERENCIA   *00004200
//*             DE ARCHIVOS.                                           *00004300
//**********************************************************************00004400
//PHL53P01 EXEC  PGM=CTMCND,PARM='ADD COND CBHCND30_IN WDATE',          00004500
//         COND=(4,LT)                                                  00004600
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00004700
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00004800
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00004900
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00005000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00005100
//PRTDBG   DD   SYSOUT=*                                                00005200
//SYSPRINT DD   DUMMY                                                   00005300
//SYSUDUMP DD   DUMMY                                                   00005400
//DAPRINT  DD   SYSOUT=*                                                00005500
//DACNDIN  DD   DDNAME=SYSIN                                            00005600
//SYSIN    DD   DUMMY                                                   00005700
//**********************************************************************00005800
