//ZMHCPD26 PROC                                                         00000100
//*                                                                     00000200
//**********************************************************************00000300
//*                                                                    *00000400
//* SISTEMA        :  SISTEMA DE MERCADO DE CAPITALES.                 *00000500
//*                                                                    *00000600
//* PROCESO        :  ZMHCPD26 - POS. PROPIA CASA DE BOLSA CAPITALES   *00000700
//*                   (JCL-CBHCND26)                                   *00000800
//*                                                                    *00000900
//* OBJETIVO       :  INSERTAR REGISTROS PARA MUREX EN IGOENV CON      *00001000
//*                   OPERACIONES DE POSICION PROPIA DE MERC.CAPITALES *00001100
//*                                                                    *00001200
//* CORRE                                                              *00001300
//* ANTES DE       :  NINGUNO                                          *00001400
//*                                                                    *00001500
//* DESPUES DE     :  ZMHCPD09 (JCL-CBHCND09) CIERRE CAPITALES DIARIO  *00001600
//* DESPUES DE     :  19:30 DIARIO                                     *00001700
//* DESPUES DE     :  ZMHCPD03 (JCL-CBHCCD03) CIERRE VALORES DIARIO    *00001800
//*                                                                    *00001900
//* REALIZO        :  MARCO A. MORALES GERMAN (GETRONICS) - 23/JUN/2006*00002000
//*                                                                    *00002100
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA.   *00002200
//**********************************************************************00002300
//* MODIFICACION   : - GENERAR REGISTROS DE OPERACIONES DE CAPITALES   *00002400
//*                    Y DE SOCIEDADES PARA CUENTAS DE POSICION PROPIA *00002500
//*                    DE CASA DE BOLSA Y GENERARLAS EN UN ARCHIVO.    *00002600
//*                                                                    *00002700
//*                  - TRANSFERIR EL ARCHIVO GENERADO A UN SERVIDOR    *00002800
//*                    PARA CONCILIAR CON MUREX.                       *00002900
//*                                                                    *00003000
//*                  - PONER LA FECHA COMO PARTE DE LOS ARCHIVOS       *00003100
//*                    GENERADOS.                                      *00003200
//*                                                                    *00003300
//* REALIZO        :  ABRAHAM JUAREZ PI#ON. (GETRONICS) - 21/AGO/2006  *00003400
//*                                                                    *00003500
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA.   *00003600
//**********************************************************************00003700
//**********************************************************************00003800
//* OBJETIVO : INSERTA REGISTROS PARA MUREX EN IGOENV CON OPERACIONES  *00003900
//*            DE POSICION PROPIA DE MERCADO DE CAPITALES              *00004000
//*            -- ZM4DHV82 --                                          *00004100
//**********************************************************************00004200
//PHC26P03 EXEC PGM=IKJEFT01                                            00004300
//PF601765  DD DUMMY                                                    00004400
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=2420                                00004500
//SYSPRINT DD  SYSOUT=*                                                 00004600
//SYSOUT   DD  SYSOUT=*                                                 00004700
//SYSDBOUT DD  SYSOUT=*                                                 00004800
//SYSABOUT DD  DUMMY                                                    00004900
//SYSUDUMP DD  DUMMY                                                    00005000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHC26T03),DISP=SHR                  00005100
//*                                                                     00005200
//**********************************************************************00005300
//* OBJETIVO : INSERTA REGISTROS PARA MUREX EN IGOENV CON OPERACIONES  *00005400
//*            DE POSICION PROPIA DE MERCADO DE CAPITALES              *00005500
//*            -- ZM4DHV83 --                                          *00005600
//**********************************************************************00005700
//PHC26P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00005800
//*                                                                     00005900
//ZMHV83A1 DD DSN=MXCP.ZM.FIX.MDC.ECBP.ZM4DHV83.D%%ODATE,               00006000
//            DISP=(NEW,CATLG,CATLG),                                   00006100
//            DCB=(LRECL=163,RECFM=FB,BLKSIZE=0,DSORG=PS),              00006200
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00006300
//*                                                                     00006400
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=2420                                00006500
//SYSPRINT DD  SYSOUT=*                                                 00006600
//SYSOUT   DD  SYSOUT=*                                                 00006700
//SYSDBOUT DD  SYSOUT=*                                                 00006800
//SYSABOUT DD  DUMMY                                                    00006900
//SYSUDUMP DD  DUMMY                                                    00007000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHC26T02),DISP=SHR                  00007100
//*                                                                     00007200
//**********************************************************************00007300
//* OBJETIVO : TRANSFERENCIA DE ARCHIVO  HOST AL AS/400 SISTEMA        *00007400
//*            INTERNACIONAL, GFBAS02.                                 *00007500
//*         -- DMBATCH --                                              *00007600
//**********************************************************************00007700
//PHC26P01 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)                  00007800
//*                                                                     00007900
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP                     00008000
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS                       00008100
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG                        00008200
//*                                                                     00008300
//DMPRINT   DD SYSOUT=*                                                 00008400
//SYSPRINT  DD SYSOUT=*                                                 00008500
//NDMCMDS   DD SYSOUT=*                                                 00008600
//SYSUDUMP  DD DUMMY                                                    00008700
//SYSIN     DD *                                                        00008800
  SIGNON USERID=(NDMUSER)                                        -      00008900
         ESF=YES                                                        00009000
   SUBMIT PROC=NMHTPE72                                          -      00009100
       &DSN1='\\PLANAS1F1\DATOS\PLAG021\MUV\POSPRO.D%%ODATE.TXT' -      00009200
       &DSN2='MXCP.ZM.FIX.MDC.ECBP.ZM4DHV83.D%%ODATE'                   00009300
  SIGNOFF                                                               00009400
//**********************************************************************00009500
//*                 F I N   Z M H C P D 2 6                            *00009600
//**********************************************************************00009700
