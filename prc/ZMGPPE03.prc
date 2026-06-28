//ZMGPPE03 PROC                                                         00010021
//*                                                                     00020011
//**********************************************************************00030011
//*                     C A S A   D E   B O L S A                      *00040011
//*                     =========================                      *00050011
//*                    << MERCADO DE CAPITALES >>                      *00060011
//*                                                                    *00070011
//*   APLICACION   : SISTEMA INTEGRAL DE VALORES (SIVA)                *00080011
//*                                                                    *00090011
//*   JCL          : BCGPNE03                                          *00100021
//*                                                                    *00110011
//*   OBJETIVO     : REALIZAR LA GENERACION DEL ARCHIVO DE LA          *00120021
//*                  BARREDORA DE FIDEICOMISOS PARA ENVIAR A DECALOG   *00140021
//*                                                                    *00150011
//*   ELABORADO POR: BBVA BANCOMER                                     *00160021
//*                                                                    *00170011
//*   FECHA        : 29/JUL/2014                                       *00180011
//*                                                                    *00190011
//**********************************************************************00200011
//**********************************************************************00210011
//*  PASO    : 03                                                      *00220011
//*  PROGRAMA: ZM3DG001                                                *00230011
//*  OBJETIVO: RECIBE LOS PARAMETROS ENVIADOS Y LOS GRABA EN ARCHIVO   *00240011
//*            SECUENCIAL                                              *00250011
//**********************************************************************00260011
//PGP03P03 EXEC PGM=ZM3DG001,                                           00270021
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00280011
//*                                                                     00290011
//PI601765 DD DUMMY                                                     00300011
//*                                                                     00310011
//ZMG001A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMGPPE03,                   00320024
//            DISP=(NEW,CATLG,DELETE),                                  00330011
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00340011
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00350011
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00360011
//SYSPRINT DD SYSOUT=*                                                  00370011
//SYSOUT   DD SYSOUT=*                                                  00380011
//SYSDBOUT DD SYSOUT=*                                                  00390011
//SYSABOUT DD DUMMY                                                     00400011
//SYSUDUMP DD DUMMY                                                     00410011
//*                                                                     00420011
//**********************************************************************00430011
//*  PASO    : 02                                                      *00440021
//*  PROGRAMA: ZM4EJ011                                                *00450011
//*  OBJETIVO: GENERA ARCHIVO DE BARREDORA DE FIDEICOMISOS PARA DECALOG*00460017
//**********************************************************************00470011
//PGP03P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00480021
//*                                                                     00490011
//ZMJ011A1 DD DSN=MXCP.ZM.FIX.E&EMP..ZM4EJ011.BARRED,                   00500024
//            DISP=(NEW,CATLG,DELETE),                                  00510011
//            DCB=(LRECL=091,RECFM=FB,BLKSIZE=0,DSORG=PS),              00520022
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)                        00530011
//*                                                                     00540011
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00550011
//SYSPRINT DD SYSOUT=*                                                  00560011
//SYSOUT   DD SYSOUT=*                                                  00570011
//SYSDBOUT DD SYSOUT=*                                                  00580011
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGP03T02),DISP=SHR                   00590024
//*                                                                     00600011
//**********************************************************************00610021
//*  PASO    : 01                                                      *00620021
//*  PROGRAMA: CTMCND                                                  *00630021
//*  OBJETIVO: ADICIONA CONDICION PARA EJECUTAR SIGUIENTE JCL          *00640021
//**********************************************************************00650021
//PGP03P01 EXEC PGM=CTMCND,PARM='ADD COND BCGTNE04_IN_OK WDATE',        00660025
//         COND=(4,LT)                                                  00670021
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00680021
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00690021
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00700021
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00710021
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00720021
//PRTDBG   DD SYSOUT=*                                                  00730021
//SYSPRINT DD DUMMY                                                     00740021
//SYSUDUMP DD DUMMY                                                     00750021
//DAPRINT  DD SYSOUT=*                                                  00760021
//DACNDIN  DD DDNAME=SYSIN                                              00770021
//********************************************************************* 00780011
//*                           FIN ZMGPPE03                            * 00790021
//********************************************************************* 00800011
