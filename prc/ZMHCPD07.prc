//ZMHCPD07 PROC                                                         00000100
//*                                                                     00000200
//**********************************************************************00000700
//*                                                                    *00001700
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00001800
//*                                                                    *00001900
//* PROCESO        :  SIVAXDEF                                         *00002000
//*                   CIERRE DE DIA DEL MODULO DE CAPITALES            *00002100
//*                                                                    *00002200
//* OBJETIVO       :  DAR DE ALTA LA CONDICION PARA QUE SE EJECUTE     *00002300
//*                   POR CONTROL-M EL CIERE DE CAPITALES              *00002400
//*                                                                    *00002500
//* CORRE                                                              *00002600
//* ANTES DE       :  ZMHCPD04 (CIERRE DE CAPITALES)                   *00002700
//*                                                                    *00002800
//* DESPUES DE     :  OPERACION DIARIA EN EL SIVA                      *00002900
//*                                                                    *00003000
//* REALIZO        :  ERNESTO MANUEL CUAUTLE MARTINEZ                  *00003100
//* FECHA          :  FEBRERO    2003.                                 *00003200
//*                                                                    *00003300
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *00003400
//*                   SIEMPRE ANTES DEL CIERRE DE CAPITALES            *00003500
//**********************************************************************00003600
//*                                                                    *00003700
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00003800
//*  PHC07P02     GRABA EN UN ARCHIVO SECUENCIAL.                      *00003900
//*                                                         ZM3DG001   *00004000
//**********************************************************************00004100
//PHC07P02 EXEC PGM=ZM3DG001,                                           00004300
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00004400
//PI601765 DD DUMMY                                                     00004500
//*                                                                     00004600
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD07,               00004700
//            DISP=(NEW,CATLG,DELETE),                                  00004800
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00004900
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)                          00005000
//*                                                                     00005100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00005200
//SYSPRINT DD SYSOUT=*                                                  00005300
//SYSOUT   DD SYSOUT=*                                                  00005400
//SYSDBOUT DD SYSOUT=*                                                  00005500
//SYSABOUT DD DUMMY                                                     00005600
//SYSUDUMP DD DUMMY                                                     00005700
//*                                                                     00005800
//**********************************************************************00006100
//*   ACTIVA LA CONDICION EN CONTROLM QUE CERRO EL MODULO CAPITALES    *00006200
//**********************************************************************00006300
//PHC07P01 EXEC  PGM=CTMCND,PARM='ADD COND     SIVAXDEF_OK    WDATE',   00006400
//         COND=(4,LT)                                                  00006410
//*                                                                     00006500
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                 00006600
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                 00006700
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV               00006800
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                 00007000
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                 00008000
//PRTDBG   DD   SYSOUT=*                                                00020000
//SYSPRINT DD   DUMMY                                                   00030000
//SYSUDUMP DD   DUMMY                                                   00040000
//DAPRINT  DD   SYSOUT=*                                                00050000
//DACNDIN  DD   DDNAME=SYSIN                                            00060000
//*                                                                     00080000
