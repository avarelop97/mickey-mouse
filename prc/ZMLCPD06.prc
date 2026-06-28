//ZMLCPD06 PROC                                                         00000100
//**********************************************************************00000200
//*                                                                    *00000300
//*                     C A S A   D E   B O L S A                      *00000400
//*                     =========================                      *00000500
//*                     <<  MERCADO DE DINERO  >>                      *00000600
//*                                                                    *00000700
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00000800
//*                                                                    *00000900
//*   PROCEDIMIENTO    : ZMLCPD06                                      *00001000
//*                                                                    *00001100
//*   OBJETIVO         : ACTUALIZACION DE PRECIOS DE MERCADO DE DINERO *00001200
//*                                                                    *00001300
//*                                                                    *00001400
//*   CORRE ANTES DE   :                                               *00001500
//*                                                                    *00001600
//*   CORRE DESPUES DE : CBLCCD03 Y SIVAXVEW.                          *00001700
//*                    : PARA EL JOB SIVAXVEW CON CONDICION            *00001800
//*                    : ZMHLPE52_CBP_SIVA_OK.                         *00001900
//*                                                                    *00002000
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *00002100
//*                                                                    *00002200
//*   FECHA            : FEBRERO 2007                                  *00002300
//*                                                                    *00002400
//*   AUTOR            : SOFTTEK                                       *00002500
//*                                                                    *00002600
//*   OBSERVACION      : ESTE PROCEDIMIENTO SE PUEDE EJECUATAR MAS DE  *00002700
//*                      UNA VEZ DURANTE EL DIA.                       *00002800
//**********************************************************************00002900
//*                                                                    *00003000
//* PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS *00003100
//* PLC06P03     GRABA EN UN ARCHIVO SECUENCIAL.                       *00003200
//*                                                        ZM3DG001    *00003300
//**********************************************************************00003400
//PLC06P03 EXEC PGM=ZM3DG001,                                           00003500
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00003600
//*                                                                     00003700
//SYSTSPRT DD SYSOUT=*                                                  00003800
//SYSPRINT DD SYSOUT=*                                                  00003900
//SYSOUT   DD SYSOUT=*                                                  00004000
//SYSDBOUT DD SYSOUT=*                                                  00004100
//SYSABOUT DD DUMMY                                                     00004200
//SYSUDUMP DD DUMMY                                                     00004300
//*                                                                     00004400
//ZMG001A1 DD DSN=SIVA.MDD.FIX.E&EMP..S&SUC..ZMLCPD06,                  00004500
//            DISP=(NEW,CATLG,DELETE),                                  00004600
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00004700
//            UNIT=3390,                                                00004800
//            SPACE=(CYL,(2,1),RLSE)                                    00004900
//*                                                                     00005000
//**********************************************************************00005100
//*                     PROGRAMA: ZM4EHB84                             *00005200
//* OBJETIVO : ACTUALIZACION DE VECTOR DE PRECIOS.                     *00005300
//*                                                                    *00005400
//*ZMHB84A1 DD DSN=SIVA.VAL.FIX.VECPRE,DISP=SHR                         00005500
//**********************************************************************00005600
//PLC06P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00005700
//*                                                                     00005800
//ZMHB84P1 DD DSN=SIVA.MDD.FIX.E&EMP..S&SUC..ZMLCPD06,DISP=SHR          00005900
//ZMHB84A1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..VECPRE,DISP=SHR             00006000
//*                                                                     00006100
//SYSIN    DD DUMMY                                                     00006200
//SYSTSPRT DD SYSOUT=*                                                  00006300
//SYSPRINT DD SYSOUT=*                                                  00006400
//SYSOUT   DD SYSOUT=*                                                  00006500
//SYSDBOUT DD SYSOUT=*                                                  00006600
//SYSABOUT DD DUMMY                                                     00006700
//SYSUDUMP DD DUMMY                                                     00006800
//*                                                                     00006900
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC06T01),DISP=SHR                   00007000
//*                                                                     00007100
//**********************************************************************00007200
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROL-M, QUE TERMINA LA        *00007300
//*            ACTUALIZACION DE PRECIOS.                               *00007400
//**********************************************************************00007500
//PLC06P01  EXEC  PGM=CTMCND,PARM='ADD COND  CBLCND06_IN_SEP_OK WDATE', 00007600
//          COND=(4,LT)                                                 00007700
//*                                                                     00007800
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00007900
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00008000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00008100
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00008200
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00008300
//PRTDBG   DD SYSOUT=*                                                  00008400
//SYSPRINT DD DUMMY                                                     00008500
//SYSUDUMP DD DUMMY                                                     00008600
//DAPRINT  DD SYSOUT=*                                                  00008700
//DACNDIN  DD DDNAME=SYSIN                                              00008800
//*                                                                     00008900
//**********************************************************************00009000
//*                                                                    *00009100
//*     ===   F I N    D E    P R O C E S O   ===                      *00009200
//*     ===        VECTOR DE PRECIOS          ===                      *00009300
//*                                                                    *00009400
//**********************************************************************00009500
//*  PEND           FIN DE PROCEDIMIENTO ZMLCPD06                      *00009600
//**********************************************************************00009700
