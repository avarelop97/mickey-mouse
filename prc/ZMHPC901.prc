//ZMHPC901 PROC                                                         00010008
//*                                                                     00020100
//**********************************************************************00021000
//*                                                                    *00022000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00023000
//*                   CAPITALES                                        *00024000
//*                                                                    *00025000
//* PROCESO        :  ZMHPC901                                         *00026000
//*                                                                    *00027000
//* OBJETIVO       :  GENERA REPORTE DE HECHOS OPERADOS DURANTE EL DIA.A00028000
//*                                                                   C*00029000
//* CORRE                                                              *00029100
//* ANTES DE       :  XXXXXXXX                                         *00029200
//*                                                                   C*00029300
//* A PARTIR DE    : XX:XX HRS.                                        *00029400
//* HASTA          : XX:XX HSR.                                        *00029500
//*                                                                    *00029600
//* REALIZO        :  AZERTIA(F.V.C.)                                  *00029700
//* FECHA          :  MARZO 2005.                                      *00029800
//*                                                                    *00029900
//* OBSERVACION    :  ESTE PROC. SE EJECUTA A PETICION DEL USUARIO.    *00030000
//*                                                                    *00030100
//**********************************************************************00030300
//*                                                                    *00030400
//*  PASO: 04    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA   *00030513
//*              EN ARCHIVO SECUENCIAL                                 *00030600
//*                                                                    *00030700
//*  SECUENCIA: 1                                           ZM3DG001   *00030800
//*                                                                    *00030900
//**********************************************************************00031000
//PHC01P04 EXEC PGM=ZM3DG001,                                           00031113
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00031200
//*                                                                     00031300
//ZMG001A1 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..PATR,                       00031403
//            DISP=(NEW,CATLG,DELETE),                                  00031500
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00031600
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00031700
//SYSTSPRT DD SYSOUT=*                                                  00031800
//SYSPRINT DD SYSOUT=*                                                  00031900
//SYSOUT   DD SYSOUT=*                                                  00032000
//SYSDBOUT DD SYSOUT=*                                                  00032100
//SYSABOUT DD SYSOUT=*                                                  00032200
//SYSUDUMP DD SYSOUT=*                                                  00032300
//*                                                                     00032500
//********************************************************************* 00032600
//*                                                                   * 00032700
//*  PASO: 03    GENERA REPORTE DE HECHOS REALIZADOS.                 * 00032813
//*                                                                   * 00033000
//*  SECUENCIA: 2                                           ZM4DH473  * 00033100
//*                                                                   * 00033200
//********************************************************************* 00033300
//PHC01P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00090013
//*                                                                     00090110
//ZMG001A1 DD DSN=MXCP.ZM.WKF.E&EMP..S&SUC..PATR,DISP=SHR               00091010
//*                                                                     00100000
//VIB473R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00110013
//*                                                                     00110410
//VIB473T1 DD DSN=&&PASO06,                                             00130003
//            DISP=(NEW,PASS),                                          00131003
//            DCB=(LRECL=070,RECFM=FB,BLKSIZE=0,DSORG=PS),              00132001
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00133001
//*                                                                     00171000
//SYSTSPRT DD SYSOUT=*                                                  00200006
//SYSPRINT DD SYSOUT=*                                                  00210006
//SYSOUT   DD SYSOUT=*                                                  00220006
//SYSDBOUT DD SYSOUT=*                                                  00230006
//SYSABOUT DD DUMMY                                                     00240000
//SYSUDUMP DD DUMMY                                                     00250000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHC01P03),DISP=SHR                   00260013
//*-------------------------------------------------------------------- 00270000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00280000
//*-------------------------------------------------------------------- 00290000
//PHC01P02 EXEC PGM=MAILOPER,COND=(4,GE,PHC01P03),                      00291013
//         PARM=('/ATENCION OPERADOR.AVISAR A PRODUCCION QUE',          00292003
//             ' PROCESO SIVAXHEC TERMINO MAL.CONTESTAR SI',            00293003
//             'PARA TERMINAR')                                         00294003
//****************************************************************      00480008
//*  PASO: 01      SE ADICIONA CONDICION                         *      00490008
//*  SECUENCIA 4   PARA QUE SEA TOMADA POR CTL-D                 *      00500013
//****************************************************************      00510008
//PHC01P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXHEC_IN_OK WDATE',       00520012
//         COND=(4,LT)                                                  00530008
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00540008
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00550008
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00560008
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00570008
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00580008
//PRTDBG   DD SYSOUT=*                                                  00590008
//SYSPRINT DD DUMMY                                                     00600008
//SYSUDUMP DD DUMMY                                                     00610008
//DAPRINT  DD SYSOUT=*                                                  00620008
//DACNDIN  DD DDNAME=SYSIN                                              00630008
//**********************************************************************00640008
//*        TERMINA PROCESO ZMHPC901 SIVA MULTIEMPRESA                  *00650008
//**********************************************************************00660008
