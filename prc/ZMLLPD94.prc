//ZMLLPD94 PROC                                                         00000100
//*                                                                     00000200
//**********************************************************************00000300
//*                                                                    *00000400
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00000500
//*                                                                    *00000600
//* PROCESO        :  SIVAXDRC                                         *00000700
//*                   DEPOSITOS Y RETIROS                              *00000800
//*                                                                    *00000900
//* OBJETIVO       :  DAR DE ALTA CONDICION (1/4) PARA EJECUTAR EL     *00001000
//*                   PROCESO DEL CIERRE DE MDO DINERO POR CTRL-M.     *00001100
//*                                                                    *00001200
//* CORRE                                                              *00001300
//* ANTES DE       :  CIERRE DE MERCADO DE DINERO                      *00001400
//*                                                                    *00001500
//* DESPUES DE     :  PETICION DEL USUARIO                             *00001600
//*                                                                    *00001700
//* REALIZO        :  J. JAIME FLORES ESTRADA                          *00001800
//* FECHA          :  JULIO     2007.                                  *00001900
//*                                                                    *00002000
//**********************************************************************00002100
//*                                                                     00002200
//********************************************************************* 00002300
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO     00002400
//********************************************************************* 00002500
//*                                                                     00002600
//PLL94P02 EXEC PGM=ZM3DG001,                                           00002700
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00002800
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00002900
//SYSPRINT DD SYSOUT=X                                                  00003000
//SYSOUT   DD SYSOUT=X                                                  00003100
//SYSDBOUT DD SYSOUT=X                                                  00003200
//SYSABOUT DD DUMMY                                                     00003300
//SYSUDUMP DD DUMMY                                                     00003400
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPD94,               00003500
//           DISP=(NEW,CATLG,DELETE),                                   00003600
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),                00003700
//           UNIT=3390,                                                 00003800
//           SPACE=(CYL,(2,1),RLSE)                                     00003900
//*                                                                     00004000
//**********************************************************************00004100
//*                         -- CTMCND --                               *00004200
//* OBJETIVO: ACTIVA CONDICION EN CONTROL-M "BCLCCD94_IN" PARA QUE SE  *00004300
//*           EJECUTEN LOS DEPOSITOS Y RETIROS.  BCLCCD94 BANCO.       *00004400
//*                                                                    *00004500
//* PASO REINICIABLE POR RESTART                                       *00004600
//**********************************************************************00004700
//PLL94P01 EXEC PGM=CTMCND,                                             00004800
//         PARM='ADD COND BCLCCD94_IN_PR_OK WDATE',COND=(4,LT)          00004900
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00005000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00005100
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00005200
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00005300
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00005400
//PRTDBG   DD SYSOUT=*                                                  00005500
//SYSPRINT DD DUMMY                                                     00005600
//SYSUDUMP DD DUMMY                                                     00005700
//DAPRINT  DD SYSOUT=*                                                  00005800
//DACNDIN  DD DDNAME=SYSIN                                              00005900
//*                                                                     00006000
