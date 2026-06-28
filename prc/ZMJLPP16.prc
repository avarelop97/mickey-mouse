//ZMJLPP16 PROC                                                         00010000
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                     <<< MERCADO DE TESORERIA >>>                   *00050000
//*                                                                    *00060000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMJLPP16    ANTES ZMJLPE16(SIVAXCRE)                *00090000
//*                                                                    *00100000
//*   OBJETIVO  :  REPORTE DE CONTRATOS POR RANGO DE EFECTIVO          *00110000
//*                                                                    *00120000
//*   CORRE ANTES DE  :  CBJLPZ16                                      *00130000
//*                                                                    *00140000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00170000
//*                                                                    *00180000
//*   MODIFICO        : OSCAR URBANO F. (AZERTIA).                     *00181000
//*   FECHA           : OCTUBRE 2008.                                  *00181100
//*                                                                    *00182000
//**********************************************************************00190000
//*                                                                    *00290000
//*                  MODULO DE TESORERIA                               *00300000
//*            REPORTE DE CONTRATOS POR RANGO DE EFECTIVO              *00310000
//*                                                                    *00320000
//********************************************************************* 00350000
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO   * 00360000
//********************************************************************* 00370000
//PJL16P02 EXEC PGM=ZM3DG001,                                           00380000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00390000
//SYSTSPRT DD SYSOUT=*                                                  00410000
//SYSPRINT DD SYSOUT=*                                                  00420000
//SYSOUT   DD SYSOUT=*                                                  00430000
//SYSDBOUT DD SYSOUT=*                                                  00440000
//SYSABOUT DD DUMMY                                                     00450000
//SYSUDUMP DD DUMMY                                                     00460000
//*                                                                     00470000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE16,                     00480000
//           DISP=(NEW,CATLG,DELETE),                                   00490000
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),                00500000
//           UNIT=3390,                                                 00510000
//           SPACE=(CYL,(2,1),RLSE)                                     00520000
//*                                                                     00530000
//****************************************************************      00540000
//*                SE ADICIONA CONDICION                         *      00550000
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00560000
//****************************************************************      00570000
//PJL16P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXCRE_IN_OK WDATE',        00580007
//         COND=(4,LT)                                                  00590000
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00600005
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00610001
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00620001
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00630001
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00640001
//PRTDBG   DD SYSOUT=Z                                                  00650001
//SYSPRINT DD DUMMY                                                     00660001
//SYSUDUMP DD DUMMY                                                     00670001
//DAPRINT  DD SYSOUT=Z                                                  00680001
//DACNDIN  DD DDNAME=SYSIN                                              00690001
//*                                                                     00700000
