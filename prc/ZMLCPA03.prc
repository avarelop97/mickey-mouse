//ZMLCPA03 PROC                                                         00010001
//*                                                                     00020000
//**********************************************************************00030000
//*                                                                    *00040000
//*               << CIERRE DE CORTE DE CUPON DE MDD >>                *00050000
//*                                                                    *00060000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00070000
//*                                                                    *00080000
//* PROCESO        :  SIVAXCCC                                         *00090002
//*                   CIERRE DE CORTE DE CUPON DE MDD                  *00100000
//*                                                                    *00110000
//* OBJETIVO       :  DAR DE ALTA CONDICION PARA EJECUTAR EL PROCESO   *00120000
//*                   DE CORTE DE CUPON POR CONTROL-M                  *00130000
//* CORRE                                                              *00140000
//* ANTES DE       :  CIERRE DE MERCADO DE DINERO                      *00150000
//*                                                                    *00160000
//* DESPUES DE     :  CONFIRMACIONES DE MDD                            *00170000
//*                                                                    *00180000
//* REALIZO        :  IEF (GETRONICS)                                  *00190000
//*                                                                    *00200000
//* FECHA          :  SEP  2003                                        *00210000
//*                                                                    *00220000
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *00230000
//*                                                                    *00240000
//*                                                                     00600000
//**********************************************************************00610000
//* PASO  01 : PLC03P02                                                *00620002
//*                                                                    *00630000
//* OBJETIVO : RECIBE PARAMETROS Y CREA ARCHIVO                        *00640002
//*                                                                    *00650000
//**********************************************************************00660000
//*                                                                     00680002
//PLC03P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)      00690002
//PI601765  DD DUMMY                                                    00700002
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD03,               00710002
//            DISP=(NEW,CATLG,DELETE),                                  00720002
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00730002
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)                        00740002
//*                                                                     00750002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00760002
//SYSPRINT DD SYSOUT=*                                                  00770002
//SYSOUT   DD SYSOUT=*                                                  00780002
//SYSDBOUT DD SYSOUT=*                                                  00790002
//SYSABOUT DD DUMMY                                                     00791002
//SYSUDUMP DD DUMMY                                                     00792002
//*                                                                     00800000
//**********************************************************************00810002
//* PASO  02 : PLC03P01                                                *00820002
//*                                                                    *00830002
//* OBJETIVO : ADICIONAR CONDICION PARA QUE SEA TOMADA POR CNTL-M      *00840002
//*                                                                    *00850002
//**********************************************************************00860002
//PLC03P01 EXEC  PGM=CTMCND,                                            00870002
//         PARM='ADD COND CBLCCD03_&EMP_SIVA_OK WDATE',COND=(4,LT)      00880002
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                 00900002
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                 00910002
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV               00920002
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                 00930002
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                 00940002
//PRTDBG   DD   SYSOUT=Z                                                00950002
//SYSPRINT DD   DUMMY                                                   00960002
//SYSUDUMP DD   DUMMY                                                   00970002
//DAPRINT  DD   SYSOUT=Z                                                00980002
//DACNDIN  DD   DDNAME=SYSIN                                            00990002
//*                                                                     01000002
