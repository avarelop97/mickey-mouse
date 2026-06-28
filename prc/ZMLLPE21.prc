//ZMLLPE21 PROC                                                         00010007
//**********************************************************************00020000
//*                                                                    *00030000
//* SISTEMA        :  Z I V A    M U L T I E M P R E S A               *00040005
//*                                                                    *00050000
//* PROCESO        :  ZMLLPE21   (DISPARADOR)                          *00060007
//*                                                                    *00070000
//* OBJETIVO       :  EJECUTA REPORTE EMISORAS SIN PRECIO MDD          *00080000
//*                                                                    *00090000
//* REALIZO        :  J. JAIME FLORES ESTRADA   -  ASATECK  -          *00100005
//*                                                                    *00101005
//* FECHA          :  JUN /2003                                        *00110005
//**********************************************************************00120000
//**********************************************************************00121000
//*                        RECIBE PARAMETROS                            00122000
//**********************************************************************00123000
//PLL21P04 EXEC PGM=ZM3DG001,                                           00124007
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00125000
//PI601765 DD DUMMY                                                     00126000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00127000
//SYSPRINT DD SYSOUT=*                                                  00128000
//SYSOUT   DD SYSOUT=*                                                  00129000
//SYSDBOUT DD SYSOUT=*                                                  00129100
//SYSABOUT DD DUMMY                                                     00129200
//SYSUDUMP DD DUMMY                                                     00129300
//*                                                                     00129400
//ZMG001A1 DD DSN=SIVA.MDD.WKF.E&EMP..S&SUC..ZMLLPE21,                  00129507
//            DISP=(NEW,CATLG,DELETE),                                  00129600
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00129700
//            UNIT=3390,                                                00129800
//            SPACE=(CYL,(2,1),RLSE)                                    00129900
//*                                                                     00130000
//**********************************************************************00131000
//*                          --  ZM4DSF69  --                          *00140005
//*                                                                    *00150000
//* OBJETIVO :    REPORTE DE EMISORAS SIN PRECIO                       *00160000
//*                >>>>> NO ACTUALIZA TABLAS <<<<<                     *00170000
//*                                                                    *00180000
//**********************************************************************00190000
//PLL21P03 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00200008
//*                                                                     00230000
//PI601765  DD DUMMY                                                    00231010
//*                                                                     00232010
//ZMSF69A1 DD DSN=SIVA.MDD.WKF.E&EMP..S&SUC..ZMLLPE21,DISP=SHR          00240007
//ZMSF69R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00250006
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00270006
//SYSPRINT DD SYSOUT=*                                                  00280006
//SYSOUT   DD SYSOUT=*                                                  00290006
//SYSDBOUT DD SYSOUT=*                                                  00300006
//SYSABOUT DD DUMMY                                                     00310005
//SYSUDUMP DD DUMMY                                                     00320005
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL21T01),DISP=SHR                   00330008
//*                                                                     00340005
//***************************************************************       00341006
//*        AVISO EN CASO DE ERROR A LA CONSOLA                  *       00342006
//***************************************************************       00343006
//PLL21P02 EXEC PGM=MAILOPER,COND=(4,GE,PLL21P04),                      00344007
//         PARM=('/ATENCION.AVISAR A SOPPROD QUE PROCESO ',             00345006
//             'SIVAXSDX(ZMLLPE21)TERMINO MAL.CONTESTAR SI',            00346007
//             'PARA TERMINAR')                                         00347006
//****************************************************************      00350000
//*                SE ADICIONA CONDICION                         *      00360000
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00370000
//****************************************************************      00380000
//PLL21P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXSDX_IN_SEP_OK WDATE',   00390007
//         COND=(4,LT)                                                  00400000
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                 00410009
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                 00420009
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV               00430009
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                 00440009
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                 00450009
//PRTDBG   DD   SYSOUT=Z                                                00460009
//SYSPRINT DD   DUMMY                                                   00470009
//SYSUDUMP DD   DUMMY                                                   00480009
//DAPRINT  DD   SYSOUT=Z                                                00490009
//DACNDIN  DD   DDNAME=SYSIN                                            00500009
//*                                                                     00510009
