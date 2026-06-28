//ZMHCPD09 PROC                                                         00000100
//*                                                                     00000200
//**********************************************************************00000700
//*                                                                    *00001700
//* SISTEMA        :  SISTEMA DE MERCADO DE CAPITALES.                 *00001800
//*                                                                    *00001900
//* PROCESO        :  ZMHCPD09 4A. PARTE DEL                           *00002000
//*                   CIERRE DE DIA DEL MODULO DE CAPITALES            *00002100
//*                                                                    *00002200
//* OBJETIVO       :  INSERTA EVENTO 'CC3', PARA INDICAR FIN           *00002300
//*                   DE CIERRE DE MERCADO DE CAPITALES.               *00002400
//*                                                                    *00002500
//* CORRE                                                              *00002600
//* ANTES DE       :  DEL FIN DE DíA.                                  *00002700
//*                                                                    *00002800
//* DESPUES DE     :  ZMHCPD06 (CIERRE DE CAPITALES)                   *00002900
//*                                                                    *00003000
//* REALIZO        :  ERNESTO MANUEL CUAUTLE MARTINEZ                  *00003100
//* FECHA          :  FEBRERO    2003.                                 *00003200
//*                                                                    *00003300
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *00003400
//*                   SIEMPRE ANTES DEL CIERRE DE CAPITALES            *00003500
//**********************************************************************00003600
//*                                                                    *00003700
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00003800
//*  PHC07P02     GRABA EN UN ARCHIVO SECUENCIAL.                      *00003900
//*                                                         ZM3DG001   *00004000
//**********************************************************************00004100
//PHC09P02 EXEC PGM=ZM3DG001,                                           00004300
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00004400
//PI601765 DD DUMMY                                                     00004500
//*                                                                     00004600
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD09,               00004700
//            DISP=(NEW,CATLG,DELETE),                                  00004800
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00004900
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE)                          00005000
//*                                                                     00005100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00005200
//SYSPRINT DD SYSOUT=*                                                  00005300
//SYSOUT   DD SYSOUT=*                                                  00005400
//SYSDBOUT DD SYSOUT=*                                                  00005500
//SYSABOUT DD DUMMY                                                     00005600
//SYSUDUMP DD DUMMY                                                     00005700
//*                                                                     00005800
//**********************************************************************00006000
//* OBJETIVO : INSERTA EVENTO 'CC3', PARA FINALIZAR CIERRE DE          *00006200
//*            MERCADO DE CAPITALES.                                   *00006300
//*            -- ZM4DLE11 --                                          *00006400
//**********************************************************************00006500
//PHC09P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00006600
//PF601765  DD DUMMY                                                    00006700
//*                                                                     00006800
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD09,DISP=SHR       00006900
//*                                                                     00007000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=2420                                00007100
//SYSPRINT DD  SYSOUT=*                                                 00007200
//SYSOUT   DD  SYSOUT=*                                                 00007300
//SYSDBOUT DD  SYSOUT=*                                                 00007400
//SYSABOUT DD  DUMMY                                                    00007500
//SYSUDUMP DD  DUMMY                                                    00007600
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHC09T01),DISP=SHR                  00007700
//*                                                                     00007800
