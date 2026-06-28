//ZMUCPD01 PROC                                                         00000100
//*                                                                    *00000200
//**********************************************************************00000300
//*                                                                    *00000400
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00000500
//*                                                                    *00000600
//* PROCESO        :  SIVAXRCA                                         *00000700
//*                   CIERRE DE USUARIO DEL MODULO DE CONTRATOS        *00000800
//*                                                                    *00000900
//* OBJETIVO       :  DA DE ALTA CONDICION A CONTROL-M PARA QUE        *00001000
//*                   SE ENVIA EL CIERRE DE COTRATOS                   *00002000
//*                                                                    *00003000
//* CORRE                                                              *00004000
//* ANTES DE       :  CBUCCD02                                         *00005000
//*                                                                    *00006000
//* DESPUES DE     :  OPERACION DIARIA EN EL SIVA                      *00007000
//*                                                                    *00008000
//* REALIZO        :  MONICA RUBIO CONTRERAS                           *00009000
//* FECHA          :  JUNIO 2003                                       *00009100
//*                                                                    *00009200
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *00009300
//*                   SIEMPRE ANTES DE TODO EL FIN DE DIA              *00009400
//*                                                                    *00009500
//**********************************************************************00009600
//*                                                                    *00009700
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00009800
//*  PUC01P02     GRABA EN UN ARCHIVO SECUENCIAL.                      *00009900
//*                                                         ZM3DG001   *00010000
//**********************************************************************00010100
//PUC01P02 EXEC PGM=ZM3DG001,                                           00010200
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00010300
//PI601765 DD DUMMY                                                     00010400
//*                                                                     00010500
//ZMG001A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMUCPD01,               00010600
//            DISP=(NEW,CATLG,DELETE),                                  00010700
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00010800
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)                          00010900
//*                                                                     00011000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00011100
//SYSPRINT DD SYSOUT=*                                                  00011200
//SYSOUT   DD SYSOUT=*                                                  00011300
//SYSDBOUT DD SYSOUT=*                                                  00011400
//SYSABOUT DD DUMMY                                                     00011500
//SYSUDUMP DD DUMMY                                                     00011600
//*                                                                     00011700
//**********************************************************************00011800
//*   ACTIVA LA CONDICION EN CONTROLM QUE CERRO EL MODULO CONTRATOS    *00011900
//**********************************************************************00012000
//PUC01P01 EXEC  PGM=CTMCND,PARM='ADD COND   SIVAXRCA_&EMP._OK  WDATE'  00012100
//*                                                                     00012200
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                 00012300
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                 00012400
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV               00012500
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                 00012600
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                 00012700
//PRTDBG   DD   SYSOUT=*                                                00012800
//SYSPRINT DD   DUMMY                                                   00012900
//SYSUDUMP DD   DUMMY                                                   00013000
//DAPRINT  DD   SYSOUT=*                                                00014000
//DACNDIN  DD   DDNAME=SYSIN                                            00015000
//*                                                                     00120000
