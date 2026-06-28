//**********************************************************************00000100
//ZMHCPD20  PROC                                                        00000200
//**********************************************************************00000300
//*                                                                    *00000400
//*                   C A S A   D E  B O L S A                         *00000500
//*                   ========================                         *00000600
//*                   <<  M E R C A D O   D E   C A P I T A L E S  >>  *00000700
//*                                                                    *00000800
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00000900
//*                                                                    *00001000
//* PROCESO        :  ZMHCPD20.                                        *00001100
//*                                                                    *00001200
//* OBJETIVO:      :  GENERA ARCHIVOS DE MOVIMIENTOS DE INTERSIVA,     *00001300
//*                   PARA LOS FORMATOS 'IC' , '0' , 'HA' Y 'HB'.      *00001400
//*                                                                    *00001500
//* CORRE                                                              *00001600
//* ANTES DE       :  NINGUNO.                                         *00001700
//*                                                                    *00001800
//* DESPUES DE     :  DESPUES DEL FIN DE TRANSMISIÓN DE BMV.           *00001900
//*                   (20:30 HRS.).                                    *00002000
//*                                                                    *00002100
//* REALIZO        :  ERNESTO MANUEL CUAUTLE MARTINEZ                  *00002200
//*                                                                    *00002300
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA.   *00002400
//*                                                                    *00002500
//**********************************************************************00002600
//*                      LOG DE MODIFICACIONES                         *00002700
//**********************************************************************00002800
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00002900
//*--------------------------------------------------------------------*00003000
//*      |          |       |        |                                 *00003100
//**********************************************************************00003200
//*                                                                    *00003300
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00003400
//*  PHC20P02     GRABA EN UN ARCHIVO SECUENCIAL.                      *00003500
//*                                                         ZM3DH001   *00003600
//**********************************************************************00003700
//*                     ===   INICIO DE     ===                        *00003800
//*                     ===   CAPITALES     ===                        *00003900
//**********************************************************************00004000
//PHC20P02 EXEC PGM=ZM3DG001,                                           00004100
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00004200
//PF601765  DD DUMMY                                                    00004300
//*                                                                     00004400
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD20,               00004500
//            DISP=(NEW,CATLG,DELETE),                                  00004600
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00004700
//            UNIT=3390,SPACE=(CYL,(04,02),RLSE)                        00004800
//*                                                                     00004900
//SYSTSPRT DD SYSOUT=*                                                  00005000
//SYSPRINT DD SYSOUT=*                                                  00005100
//SYSOUT   DD SYSOUT=*                                                  00005200
//SYSDBOUT DD SYSOUT=*                                                  00005300
//SYSABOUT DD DUMMY                                                     00005400
//SYSUDUMP DD DUMMY                                                     00005500
//*                                                                     00005600
//**********************************************************************00005700
//*                       -- ZM4DHW07 --                               *00005800
//* OBJETIVO : GENERAR ARCHIVOS SECUENCIALES DE LOS FORMATOS           *00005900
//*            DENOMINADOS "IC" Y "0", QUE CONTIENEN LA                *00006000
//*            INFORMACION DE LA BMV.                                  *00006100
//**********************************************************************00006200
//PHC20P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00006300
//PF601765  DD DUMMY                                                    00006400
//*                                                                     00006500
//ZMHW07A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPD20,DISP=SHR       00006600
//*                                                                     00006700
//ZMHW07A2 DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..FORMATO.IC,                00006800
//        DISP=(NEW,CATLG,DELETE),                                      00006900
//        DCB=(LRECL=251,BLKSIZE=0,RECFM=FB,DSORG=PS),                  00007000
//        UNIT=3390,                                                    00007100
//        SPACE=(CYL,(4,2),RLSE)                                        00007200
//*                                                                     00007300
//ZMHW07A3 DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..FORMATO.CERO,              00007400
//        DISP=(NEW,CATLG,DELETE),                                      00007500
//        DCB=(LRECL=251,BLKSIZE=0,RECFM=FB,DSORG=PS),                  00007600
//        UNIT=3390,                                                    00007700
//        SPACE=(CYL,(4,2),RLSE)                                        00007800
//*                                                                     00007900
//ZMHW07A4 DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..FORMATO.HA,                00008000
//        DISP=(NEW,CATLG,DELETE),                                      00008100
//        DCB=(LRECL=251,BLKSIZE=0,RECFM=FB,DSORG=PS),                  00008200
//        UNIT=3390,                                                    00008300
//        SPACE=(CYL,(4,2),RLSE)                                        00008400
//*                                                                     00008500
//ZMHW07A5 DD DSN=SIVA.MDC.FIX.E&EMP..S&SUC..FORMATO.HB,                00008600
//        DISP=(NEW,CATLG,DELETE),                                      00008700
//        DCB=(LRECL=251,BLKSIZE=0,RECFM=FB,DSORG=PS),                  00008800
//        UNIT=3390,                                                    00008900
//        SPACE=(CYL,(4,2),RLSE)                                        00009000
//*                                                                     00009100
//SYSTSPRT DD SYSOUT=*                                                  00009200
//SYSPRINT DD SYSOUT=*                                                  00009300
//SYSOUT   DD SYSOUT=*                                                  00009400
//SYSDBOUT DD SYSOUT=*                                                  00009500
//SYSABOUT DD DUMMY                                                     00009600
//SYSUDUMP DD DUMMY                                                     00009700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC20T01),DISP=SHR                   00009800
//*                                                                     00009900
