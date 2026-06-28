//ZMGIPD01 PROC                                                         00010004
//*                                                                     00020006
//**********************************************************************00030004
//*                     C A S A   D E   B O L S A                      *00040004
//*                     =========================                      *00050004
//*                    << MERCADO DE CAPITALES >>                      *00060004
//*                                                                    *00070004
//*   APLICACION   : SISTEMA INTEGRAL DE VALORES (SIVA)                *00080004
//*                                                                    *00090004
//*   JCL          : BCGICD01                                          *00100004
//*                                                                    *00110004
//*   OBJETIVO     : REALIZAR LA GENERACION DE CUATRO ARCHIVOS PARA    *00120004
//*                  HABILITAR O DESHABILITAR SU GESTIóN EN DECALOG    *00130004
//*                                                                    *00140004
//*   ELABORADO POR: CDA INFORMATICA                                   *00150004
//*                                                                    *00160004
//*   FECHA        : 24/FEB/2014                                       *00170004
//*                                                                    *00180004
//**********************************************************************00190004
//**********************************************************************00200004
//*  PASO    : 06                                                      *00210004
//*  PROGRAMA: ZM3DG001                                                *00220004
//*  OBJETIVO: RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA     *00230004
//*            EN ARCHIVO SECUENCIAL                                   *00240004
//**********************************************************************00250004
//PGI01P06 EXEC PGM=ZM3DG001,                                           00260004
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00270004
//*                                                                     00280004
//PI601765 DD DUMMY                                                     00290004
//*                                                                     00300004
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMGIPD01,               00310005
//            DISP=(NEW,CATLG,DELETE),                                  00320004
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00330004
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00340004
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00350004
//SYSPRINT DD SYSOUT=*                                                  00360004
//SYSOUT   DD SYSOUT=*                                                  00370004
//SYSDBOUT DD SYSOUT=*                                                  00380004
//SYSABOUT DD DUMMY                                                     00390004
//SYSUDUMP DD DUMMY                                                     00400004
//*                                                                     00410004
//**********************************************************************00420004
//*  PASO    : 05                                                      *00430004
//*  PROGRAMA: ZM4DG021                                                *00440004
//*  OBJETIVO: ACCESA A DATOS DE CONTRATOS Y LOS GRABA EN ARCHIVO      *00450004
//*            SECUENCIAL                                              *00460004
//**********************************************************************00470004
//PGI01P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00480004
//*                                                                     00490004
//ZMG021A1 DD DSN=MXCP.ZM.FIX.E&EMP..ZM4DG021.CONTRATO,                 00500005
//            DISP=(NEW,CATLG,DELETE),                                  00510004
//            DCB=(LRECL=007,RECFM=FB,BLKSIZE=0,DSORG=PS),              00520004
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)                        00530004
//*                                                                     00540004
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00550004
//SYSPRINT DD SYSOUT=*                                                  00560004
//SYSOUT   DD SYSOUT=*                                                  00570004
//SYSDBOUT DD SYSOUT=*                                                  00580004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGI01T05),DISP=SHR                   00590005
//*                                                                     00600004
//**********************************************************************00610004
//*  PASO    : 04                                                      *00620004
//*  PROGRAMA: ZM4DG022                                                *00630004
//*  OBJETIVO: ACCESA A DATOS DE SALDOS Y LOS GRABA EN ARCHIVO         *00640004
//*            SECUENCIAL                                              *00650004
//**********************************************************************00660004
//PGI01P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00670004
//*                                                                     00680004
//ZMG022A1 DD DSN=MXCP.ZM.FIX.E&EMP..ZM4DG022.SALDOS,                   00690005
//            DISP=(NEW,CATLG,DELETE),                                  00700004
//            DCB=(LRECL=091,RECFM=FB,BLKSIZE=0,DSORG=PS),              00710004
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)                        00720004
//*                                                                     00730004
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00740004
//SYSPRINT DD SYSOUT=*                                                  00750004
//SYSOUT   DD SYSOUT=*                                                  00760004
//SYSDBOUT DD SYSOUT=*                                                  00770004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGI01T04),DISP=SHR                   00780005
//*                                                                     00790004
//**********************************************************************00800004
//*  PASO    : 03                                                      *00810004
//*  PROGRAMA: ZM4DG023                                                *00820004
//*  OBJETIVO: ACCESA A DATOS DE POSICION Y LOS GRABA EN ARCHIVO       *00830004
//*            SECUENCIAL                                              *00840004
//**********************************************************************00850004
//PGI01P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00860004
//*                                                                     00870004
//ZMG023A1 DD DSN=MXCP.ZM.FIX.E&EMP..ZM4DG023.POSICION,                 00880005
//            DISP=(NEW,CATLG,DELETE),                                  00890004
//            DCB=(LRECL=115,RECFM=FB,BLKSIZE=0,DSORG=PS),              00900004
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)                        00910004
//*                                                                     00920004
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00930004
//SYSPRINT DD SYSOUT=*                                                  00940004
//SYSOUT   DD SYSOUT=*                                                  00950004
//SYSDBOUT DD SYSOUT=*                                                  00960004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGI01T03),DISP=SHR                   00970005
//*                                                                     00980004
//**********************************************************************00990004
//*  PASO    : 02                                                      *01000004
//*  PROGRAMA: ZM4DG024                                                *01010004
//*  OBJETIVO: ACCESA A DATOS DE MOVIMIENTOS Y LOS GRABA EN ARCHIVO    *01020004
//*            SECUENCIAL                                              *01030004
//**********************************************************************01040004
//PGI01P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                01050004
//*                                                                     01060004
//ZMG024A1 DD DSN=MXCP.ZM.FIX.E&EMP..ZM4DG024.MOVTOS,                   01070005
//            DISP=(NEW,CATLG,DELETE),                                  01080004
//            DCB=(LRECL=115,RECFM=FB,BLKSIZE=0,DSORG=PS),              01090004
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)                        01100004
//*                                                                     01110004
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    01120004
//SYSPRINT DD SYSOUT=*                                                  01130004
//SYSOUT   DD SYSOUT=*                                                  01140004
//SYSDBOUT DD SYSOUT=*                                                  01150004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGI01T02),DISP=SHR                   01160005
//*                                                                     01170004
//**********************************************************************01180004
//*  PASO    : 01                                                      *01190004
//*  PROGRAMA: CTMCND                                                  *01200004
//*  OBJETIVO: ADICIONA CONDICION PARA EJECUTAR SIGUIENTE JCLRCHIVO    *01210004
//**********************************************************************01220004
//PGI01P01 EXEC PGM=CTMCND,PARM='ADD COND BCGTCD02_IN_OK WDATE',        01230004
//         COND=(4,LT)                                                  01240004
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   01250004
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   01260004
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 01270004
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   01280004
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   01290004
//PRTDBG   DD SYSOUT=*                                                  01300004
//SYSPRINT DD DUMMY                                                     01310004
//SYSUDUMP DD DUMMY                                                     01320004
//DAPRINT  DD SYSOUT=*                                                  01330004
//DACNDIN  DD DDNAME=SYSIN                                              01340004
//********************************************************************* 01350004
//*                           FIN ZMGIPD01                            * 01360004
//********************************************************************* 01370004
