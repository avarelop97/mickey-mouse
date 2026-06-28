//ZMJCPDD1 PROC                                                         00010000
//**********************************************************************00041000
//*                     C A S A   D E  B O L S A                       *00042000
//*                     ========================                       *00043000
//*                 <<  SOCIEDADES DE INVERSION   >>                   *00044000
//*                                                                    *00045000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00046000
//*                                                                    *00047000
//* PROCESO        :  SIVAXDKG (SUBMITIDOR)                            *00048000
//*                   ZMJCPDD1 (PROCEDIMIENTO)                         *00048100
//*                                                                    *00049000
//* OBJETIVO       :  DISPARO DEL CIERRE DE DECALOG DESPUES DEL ULTIMO *00049200
//*                   ENVIO A DECALOG                                  *00049300
//* CORRE                                                              *00049400
//* ANTES DE       :  FIN DE DIA                                       *00049500
//*                                                                    *00049600
//* DESPUES DE     :  CIERRE DE FONDOS DE INVERSION                    *00049700
//*                                                                    *00049800
//* PERIODICIDAD   :  DIARIO                                           *00050100
//*                                                                    *00050200
//**********************************************************************00051000
//**********************************************************************00051100
//*                      LOG DE MODIFICACIONES                         *00051200
//**********************************************************************00051300
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00051400
//*--------------------------------------------------------------------*00051500
//*      |          |       |        |                                 *00051720
//**********************************************************************00051730
//*                                                                     00051800
//**********************************************************************00055100
//*                        == IDCAMS   ==                              *00055200
//*                                                                    *00055300
//* OBJETIVO : BORRAR ARCHIVOS DE LA VALUACION DEL PROCESO.            *00055400
//**********************************************************************00055500
//PJCD1P03 EXEC PGM=IDCAMS                                              00055600
//*                                                                     00055700
//SYSPRINT DD SYSOUT=*                                                  00055800
//*                                                                     00055900
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJCD1T01),DISP=SHR                   00056000
//*                                                                     00065400
//**********************************************************************00065500
//*                        == ZM3DG001 ==                              *00065600
//*                                                                    *00065700
//* OBJETIVO : RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA     *00065800
//*            EN ARCHIVO PARA EL PROCESO ZMJCPD05                     *00065900
//**********************************************************************00066000
//PJCD1P02 EXEC PGM=ZM3DG001,COND=(4,LT),                               00066100
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00066200
//*                                                                     00066300
//PI601765 DD DUMMY                                                     00066400
//*                                                                     00066500
//ZMG001A1 DD DSN=MXCP.ZM.FIX.SIN.C1.ECBP.ZMJCPDD1,                     00066600
//            DISP=(NEW,CATLG,DELETE),                                  00066700
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00066800
//            UNIT=3390,                                                00066900
//            SPACE=(CYL,(6,3),RLSE)                                    00067000
//*                                                                     00067100
//SYSTSPRT DD SYSOUT=*                                                  00067200
//SYSPRINT DD SYSOUT=*                                                  00067300
//SYSOUT   DD SYSOUT=*                                                  00067400
//SYSDBOUT DD SYSOUT=*                                                  00067500
//SYSABOUT DD DUMMY                                                     00067600
//SYSUDUMP DD DUMMY                                                     00068000
//*                                                                     00394300
//********************************************************************* 00394400
//*                        == CTMCND   ==                              *00394500
//*                                                                    *00394600
//*OBJETIVO : ACTIVA LA CONDICION EN CONTROLM PARA QUE CORRA           *00395000
//********************************************************************* 00396000
//PJCD1P01 EXEC PGM=CTMCND,PARM='ADD COND    SIVAXDKG_IN     WDATE',    00430000
//         COND=(4,LT)                                                  00440000
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                 00531000
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                 00532000
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV               00533000
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                 00534000
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                 00535000
//PRTDBG   DD   SYSOUT=*                                                00538000
//SYSPRINT DD   DUMMY                                                   00539000
//SYSUDUMP DD   DUMMY                                                   00539100
//DAPRINT  DD   SYSOUT=*                                                00539200
//DACNDIN  DD   DDNAME=SYSIN                                            00539300
//*                                                                     00540000
//********************************************************************* 00540200
//** PEND         FIN DEL PROCEDIMIENTO ZMJCPDD1                       *00540300
//********************************************************************* 00540400
