//ZMJCPD02 PROC                                                         00000100
//**********************************************************************00000200
//*                     C A S A   D E  B O L S A                       *00000300
//*                     ========================                       *00000400
//*                     <<  T E S O R E R I A >>                       *00000500
//*                                                                    *00000600
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00000700
//*                                                                    *00000800
//*                                                                    *00000900
//*   DISPARADOR:  SIVAXCGB (OPC. 603ZFIQ)                             *00001000
//*   PROCEDIM. :  ZMJCPD02                                            *00001100
//*                                                                    *00001200
//*   OBJETIVO  :  CIERRE GLOBAL DE TESORERIA DE LA EMPRESA PROPORC.   *00002000
//*                                                                    *00002100
//*   CORRE ANTES DE  :  CBJCND03  (CIERRE DE TESORERIA)               *00002200
//*                                                                    *00002300
//*   CORRE DESPUES DE:  NINGUNO                                       *00002400
//*                                                                    *00002500
//*   PERIODICIDAD    :  DIARIO (DISPARADO POR EL USUARIO)             *00002600
//*                                                                    *00002700
//**********************************************************************00003200
//*                                                                     00003900
//**********************************************************************00004000
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *00005000
//**********************************************************************00005100
//PJC02P02 EXEC PGM=ZM3DG001,REGION=0M,                                 00005200
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00005300
//PI601765 DD DUMMY                                                     00005400
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00005500
//SYSPRINT DD SYSOUT=*                                                  00005600
//SYSOUT   DD SYSOUT=*                                                  00005700
//SYSDBOUT DD SYSOUT=*                                                  00005800
//SYSABOUT DD DUMMY                                                     00005900
//SYSUDUMP DD DUMMY                                                     00006000
//*                                                                     00006100
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.E&EMP..CIEGLBAL,                      00006302
//            DISP=(NEW,CATLG,DELETE),                                  00006401
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00006501
//            UNIT=3390,                                                00006601
//            SPACE=(CYL,(2,1),RLSE)                                    00006701
//*                                                                     00010000
//*****************************************************************     00010100
//*   ACTIVA LA CONDICION EN CONTROLM QUE YA PUEDE CORRER EL CIERRE     00010200
//*      DE SIVAERIA POR CONTROL-M (STJGM.JCL.CNTL(CIERRTES))           00010300
//*****************************************************************     00010400
//PJC02P01 EXEC  PGM=CTMCND,PARM='ADD COND FINTES_&EMP._OK   WDATE',    00010500
//         COND=(0,NE)                                                  00010600
//STEPLIB  DD DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD,DISP=SHR                   00010700
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00010800
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00010900
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00011000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00011500
//PRTDBG   DD SYSOUT=*                                                  00011601
//SYSPRINT DD DUMMY                                                     00011700
//SYSUDUMP DD DUMMY                                                     00011800
//DAPRINT  DD SYSOUT=*                                                  00011901
//DACNDIN  DD DDNAME=SYSIN                                              00012000
//*                                                                     00012100
//**********************************************************************00012200
//*        TERMINA PROCESO ZMJCPD02 SIVA MULTIEMPRESA                  *00012300
//**********************************************************************00013000
