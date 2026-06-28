//ZMHHPE56  PROC                                                        00000100
//**********************************************************************00000200
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00000300
//* OBJETIVO       :  PRENDE LA CONDICION CBHHPE57_IN PARA DISPARAR    *00000400
//*                   CBHHPE57, EL CUAL HACE LA TRANSMISION DE ARCH.   *00000500
//* JCL            :  SIVAXCS1 (OPCION EN LINEA H57-1).                *00000600
//* CORRE ANTES DE :  NUNGUNO                                          *00000700
//* REALIZO        :  DAMIAN LUNA PE%A.                                *00000800
//* FECHA          :  16 - AGOSTO - 2010.                              *00000900
//**********************************************************************00001000
//*                                                                     00001100
//**********************************************************************00001200
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *00001300
//**********************************************************************00001400
//PHL56P04 EXEC PGM=ZM3DG001,                                           00001501
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00001600
//PI601765 DD DUMMY                                                     00001700
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00001800
//SYSPRINT DD SYSOUT=*                                                  00001900
//SYSOUT   DD SYSOUT=*                                                  00002000
//SYSDBOUT DD SYSOUT=*                                                  00002100
//SYSABOUT DD DUMMY                                                     00002200
//SYSUDUMP DD DUMMY                                                     00002300
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHHPE56,               00002400
//            DISP=(NEW,CATLG,DELETE),                                  00002500
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00002600
//            UNIT=3390,                                                00002700
//            SPACE=(CYL,(1,1),RLSE)                                    00002800
//*                                                                     00002900
//**********************************************************************00003000
//* OBJETIVO : CREAR EL ARCHIVO EN HOST PARA LA TRANSFERENCIA          *00003100
//**********************************************************************00003200
//PHL56P03 EXEC PGM=IDCAMS,COND=(4,LT)                                  00003301
//SYSPRINT DD SYSOUT=*                                                  00003400
//SYSIN    DD DUMMY                                                     00003500
//ARCHIVO1 DD DSN=MXCP.ZM.FIX.ECBP.SZPR.CAPSOC,                         00003600
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),              00003700
//            DISP=(NEW,CATLG,CATLG),                                   00003800
//            SPACE=(CYL,(10,5),RLSE),                                  00003900
//            UNIT=3390                                                 00004000
//**********************************************************************00004101
//*  OBJETIVO: ACTUALIZA TABLA CTLPROC CON ESTATUS DE FINALIZADO: 'F'  *00004201
//*  PROGRAMA: ZM4EHB57 EVENTO: CV1.                                   *00004301
//**********************************************************************00004401
//PHH56P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00004502
//ZMH00AR1 DD SYSOUT=*                                                  00004601
//SYSTSPRT DD SYSOUT=*                                                  00004701
//SYSPRINT DD SYSOUT=*                                                  00004801
//SYSOUT   DD SYSOUT=*                                                  00004901
//SYSDBOUT DD SYSOUT=*                                                  00005001
//SYSABOUT DD SYSOUT=*                                                  00005101
//SYSUDUMP DD DUMMY                                                     00005201
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHH56T01),DISP=SHR                   00005302
//*                                                                     00005401
//**********************************************************************00005500
//*  OBJETIVO : DAR DE ALTA CONDICION A CONTROL-M PARA TRANSFERENCIA   *00005600
//*             DE ARCHIVOS.                                           *00005700
//**********************************************************************00005800
//PHL56P01 EXEC  PGM=CTMCND,PARM='ADD COND CBHHPE57_IN WDATE',          00005900
//         COND=(4,LT)                                                  00006000
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00006100
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00006200
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00006300
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00006400
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00006500
//PRTDBG   DD SYSOUT=*                                                  00006600
//SYSPRINT DD DUMMY                                                     00006700
//SYSUDUMP DD DUMMY                                                     00006800
//DAPRINT  DD SYSOUT=*                                                  00006900
//DACNDIN  DD DDNAME=SYSIN                                              00007000
//*                                                                     00007100
