//ZMGPPE01 PROC                                                         00010013
//*                                                                     00020011
//**********************************************************************00030011
//*                     C A S A   D E   B O L S A                      *00040011
//*                     =========================                      *00050011
//*                    << MERCADO DE CAPITALES >>                      *00060011
//*                                                                    *00070011
//*   APLICACION   : SISTEMA INTEGRAL DE VALORES (SIVA)                *00080011
//*                                                                    *00090011
//*   JCL          : BCGPNE01                                          *00100011
//*                                                                    *00110011
//*   OBJETIVO     : REALIZAR LA GENERACION DE LOS ARCHIVOS DEL FONDEO *00120021
//*                  PARA ENVIAR A DECALOG                             *00130021
//*                                                                    *00140011
//*   ELABORADO POR: BBVA BANCOMER                                     *00150021
//*                                                                    *00160011
//*   FECHA        : 29/JUL/2014                                       *00170011
//*                                                                    *00180011
//**********************************************************************00190011
//**********************************************************************00200011
//*  PASO    : 03                                                      *00210011
//*  PROGRAMA: ZM3DG001                                                *00220011
//*  OBJETIVO: RECIBE LOS PARAMETROS ENVIADOS Y LOS GRABA EN ARCHIVO   *00230011
//*            SECUENCIAL                                              *00240011
//**********************************************************************00250011
//PGP01P03 EXEC PGM=ZM3DG001,                                           00260011
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00270011
//*                                                                     00280011
//PI601765 DD DUMMY                                                     00290011
//*                                                                     00300011
//ZMG001A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMGPPE01,                   00310022
//            DISP=(NEW,CATLG,DELETE),                                  00320011
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00330011
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00340011
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00350011
//SYSPRINT DD SYSOUT=*                                                  00360011
//SYSOUT   DD SYSOUT=*                                                  00370011
//SYSDBOUT DD SYSOUT=*                                                  00380011
//SYSABOUT DD DUMMY                                                     00390011
//SYSUDUMP DD DUMMY                                                     00400011
//*                                                                     00410011
//**********************************************************************00420011
//*  PASO    : 02                                                      *00430011
//*  PROGRAMA: ZM4EL002                                                *00440011
//*  OBJETIVO: GENERA ARCHIVOS DEL FONDEO PARA DECALOG                 *00450017
//**********************************************************************00460011
//PGP01P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00470011
//*                                                                     00480011
//ZML002A1 DD DSN=MXCP.ZM.FIX.E&EMP..ZM4EL002.DEPOSITO,                 00490022
//            DISP=(NEW,CATLG,DELETE),                                  00500011
//            DCB=(LRECL=091,RECFM=FB,BLKSIZE=0,DSORG=PS),              00510021
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)                        00520011
//*                                                                     00530011
//ZML002A2 DD DSN=MXCP.ZM.FIX.E&EMP..ZM4EL002.IMPUESTO,                 00540022
//            DISP=(NEW,CATLG,DELETE),                                  00550011
//            DCB=(LRECL=091,RECFM=FB,BLKSIZE=0,DSORG=PS),              00560021
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)                        00570011
//*                                                                     00580018
//ZML002A3 DD DSN=MXCP.ZM.FIX.E&EMP..ZM4EL002.MOVTOS,                   00590022
//            DISP=(NEW,CATLG,DELETE),                                  00600018
//            DCB=(LRECL=213,RECFM=FB,BLKSIZE=0,DSORG=PS),              00610020
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)                        00620018
//*                                                                     00630011
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00640011
//SYSPRINT DD SYSOUT=*                                                  00650011
//SYSOUT   DD SYSOUT=*                                                  00660011
//SYSDBOUT DD SYSOUT=*                                                  00670011
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGP01T02),DISP=SHR                   00680022
//*                                                                     00690011
//**********************************************************************00700021
//*  PASO    : 01                                                      *00710021
//*  PROGRAMA: CTMCND                                                  *00720021
//*  OBJETIVO: ADICIONA CONDICION PARA EJECUTAR SIGUIENTE JCL          *00730021
//**********************************************************************00740021
//PGP01P01 EXEC PGM=CTMCND,PARM='ADD COND BCGTNE02_IN_OK WDATE',        00750023
//         COND=(4,LT)                                                  00760021
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00770021
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00780021
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00790021
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00800021
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00810021
//PRTDBG   DD SYSOUT=*                                                  00820021
//SYSPRINT DD DUMMY                                                     00830021
//SYSUDUMP DD DUMMY                                                     00840021
//DAPRINT  DD SYSOUT=*                                                  00850021
//DACNDIN  DD DDNAME=SYSIN                                              00860021
//********************************************************************* 00870011
//*                           FIN ZMGPPE01                            * 00880011
//********************************************************************* 00890011
