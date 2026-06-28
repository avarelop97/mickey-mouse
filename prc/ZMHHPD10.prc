//ZMHHPD10  PROC                                                        00000100
//**********************************************************************00000200
//*                     C A S A   D E  B O L S A                       *00000300
//*                     ========================                       *00000400
//*                     <<  C A P I T A L E S >>                       *00000500
//*                                                                    *00000600
//*                                                                    *00000700
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES.(HOST TO HOST).      *00000800
//*                                                                    *00000900
//* PROCESO        :  SIVAXEFF                                         *00001000
//*                   EXTRACTOR PARA FONDO DE FONDOS.                  *00001100
//*                                                                    *00001200
//* OBJETIVO       :  EXTRACTOR PARA FONDO DE FONDOS.                  *00001300
//*                   HOST TO HOST.                                    *00001400
//*                                                                    *00001500
//* GRUPO          :  06         SOC. DE INV. QUE OPERAN SOC. DE INV.  *00001600
//*                                                                    *00001700
//*                                                                    *00001800
//* DESPUES DE     :  A PETICION DEL USUARIO,                          *00001900
//*                   SUBMITE POR OPCION 868.                          *00002000
//*                                                                    *00002100
//* PERIODICIDAD   :  DIARIO, DE LUNES A VIERNES, A PETICION.          *00002200
//*                                                                    *00002300
//* ELABORADO POR  :  EQUIPO DE HOST TO HOST.                          *00002400
//*                                                                    *00002500
//**********************************************************************00002600
//*                                                                    *00002700
//**********************************************************************00002800
//*                      LOG DE MODIFICACIONES                         *00002900
//**********************************************************************00003000
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00003100
//*--------------------------------------------------------------------*00003200
//* FECHA    :                                                         *00003300
//* MODIFICO :                                                         *00003400
//*                                                                    *00003500
//* OBJETIVO :                                                         *00003600
//*                                                                    *00003700
//**********************************************************************00003800
//*  ZMHHPD10                                                          *00003900
//*  PASO: 3/4    RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00004000
//*  PHH10P03     GRABA EN UN ARCHIVO SECUENCIAL.                      *00004100
//*                                                         ZM3DH001   *00004200
//**********************************************************************00004300
//PHH10P03 EXEC PGM=ZM3DG001,                                           00004400
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00004500
//*                                                                     00004600
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHHPD10,               00004700
//            DISP=(NEW,CATLG,DELETE),                                  00004800
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00004900
//            UNIT=3390,                                                00005000
//            SPACE=(CYL,(4,2),RLSE)                                    00005100
//*                                                                     00005200
//SYSTSPRT DD SYSOUT=*                                                  00005300
//SYSPRINT DD SYSOUT=*                                                  00005400
//SYSOUT   DD SYSOUT=*                                                  00005500
//SYSDBOUT DD SYSOUT=*                                                  00005600
//SYSABOUT DD DUMMY                                                     00005700
//SYSUDUMP DD DUMMY                                                     00005800
//*                                                                     00005900
//**********************************************************************00006000
//*                            (ZM4DHH08)                              *00006100
//* PASO     : 2/4                                                     *00006200
//* PHH10P02                                                           *00006300
//* OBJETIVO : GENERA EXTRACCION PARA SOC. DE INV. QUE OPERAN SOC. DE  *00006400
//*            INV.                                                    *00006500
//*            LA EXTRACCION SE HACE EN FECHA DE LIQUIDACION.          *00006600
//*                                                                    *00006700
//**********************************************************************00006800
//PHH10P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00006900
//*                                                                     00007000
//ZMHH09A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHHPD10,DISP=SHR       00007100
//SYSIN    DD DUMMY                                                     00007200
//SYSTSPRT DD SYSOUT=*                                                  00007300
//SYSPRINT DD SYSOUT=*                                                  00007400
//SYSOUT   DD SYSOUT=*                                                  00007500
//SYSDBOUT DD SYSOUT=*                                                  00007600
//SYSABOUT DD DUMMY                                                     00007700
//SYSUDUMP DD DUMMY                                                     00007800
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMH10T01),DISP=SHR                   00007900
//*                                                                     00008000
//**********************************************************************00008100
//*                                                                    *00008200
//*     ===   F I N   D E    E X T R A C C I O N   ===                 *00008300
//*     ===       H O S T   T O   H O S T          ===                 *00008400
//*                                                                    *00008500
//**********************************************************************00008600
//*                 FIN DE PROCEDIMIENTO ZMHHPD10                      *00008700
//**********************************************************************00008800
