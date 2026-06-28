//ZMPFPD01  PROC                                                        00000100
//**********************************************************************00000200
//*                     C A S A   D E  B O L S A                       *00000300
//*                     ========================                       *00000400
//*                     <<  C A P I T A L E S >>                       *00000500
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00000600
//*                                                                    *00000700
//* PROCESO        :  ZMPFPD01                                         *00000800
//*                   GENERAR Y                                        *00000900
//*                   ENVIAR REPORTES DE PRESTAMOS Y GARANTIAS AL      *00001000
//* FUNCION        :  SERVIDOR                                         *00001100
//*                                                                    *00001200
//* MODIFICACION   :  REALIZA TRANSFERENCIAS A SERVIDOR BLADE:         *00001300
//*                   CBNOCFS03\C_CB003                                *00001400
//* OCTUBRE 2005.     GETRONICS                                        *00001500
//*                                                                    *00001600
//* CORRE                                                              *00001700
//* ANTES DE       :  CBGFCD01                                         *00001800
//*                                                                    *00001900
//* DESPUES DE     :  CBJFCD28                                         *00002000
//*                                                                    *00002100
//* PERIODICIDAD   :  A SOLICITUD DEL USUARIO                          *00002200
//*                                                                    *00002300
//* ELABORADO POR  :  EDUARDO MORALES VILLAFUERTE  (SOFTTEK)           *00002400
//**********************************************************************00002500
//*  PROGRAMA:    ZM3DG001                                             *00002600
//*  FUNCION:     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00002700
//*               GRABA EN UN ARCHIVO SECUENCIAL.                      *00002800
//**********************************************************************00002900
//PPF01P07 EXEC PGM=ZM3DG001,                                           00003000
//         PARM=('&EMP','&SUC','     ','     ',)                        00003100
//*                                                                     00003200
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD35,               00003300
//            DISP=(NEW,CATLG,DELETE),                                  00003400
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00003500
//            UNIT=3390,                                                00003600
//            SPACE=(CYL,(4,2),RLSE)                                    00003700
//SYSTSPRT DD SYSOUT=*                                                  00003800
//SYSPRINT DD SYSOUT=*                                                  00003900
//SYSOUT   DD SYSOUT=*                                                  00004000
//SYSDBOUT DD SYSOUT=*                                                  00004100
//SYSABOUT DD DUMMY                                                     00004200
//SYSUDUMP DD DUMMY                                                     00004300
//**********************************************************************00004400
//*  PROGRAMA:    ZM4DH023                                             *00004500
//*  FUNCION:     GENERAR UN ARCHIVO CON LOS VALORES RECIBIDOS EN      *00004600
//*               PRESTAMO, REGISTRADOS EN EL DíA.                     *00004700
//**********************************************************************00004800
//PPF01P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00004900
//*                                                                     00005000
//ZM4DH0A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD35,DISP=SHR       00005100
//ZM4DH0S1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZM4DH023.PRESHOY,              00005200
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00005300
//            SPACE=(CYL,(20,10),RLSE),                                 00005400
//            DCB=(RECFM=FB,DSORG=PS,LRECL=246,BLKSIZE=0)               00005500
//SYSTSPRT DD SYSOUT=*                                                  00005600
//SYSPRINT DD SYSOUT=*                                                  00005700
//SYSOUT   DD SYSOUT=*                                                  00005800
//SYSDBOUT DD SYSOUT=*                                                  00005900
//SYSABOUT DD SYSOUT=*                                                  00006000
//SYSUDUMP DD DUMMY                                                     00006100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPF01T07),DISP=SHR                   00006200
//**********************************************************************00006300
//*  PROGRAMA:    ZM4DH024                                             *00006400
//*  FUNCION:     GENERAR UN ARCHIVO CON LOS VALORES RECIBIDOS EN      *00006500
//*               PRESTAMOS.                                           *00006600
//**********************************************************************00006700
//PPF01P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00006800
//*                                                                     00006900
//ZM4DH0A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD35,DISP=SHR       00007000
//ZM4DH0S1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZM4DH024.PRESHOY2,             00007100
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007200
//            SPACE=(CYL,(20,10),RLSE),                                 00007300
//            DCB=(RECFM=FB,DSORG=PS,LRECL=246,BLKSIZE=0)               00007400
//SYSTSPRT DD SYSOUT=*                                                  00007500
//SYSPRINT DD SYSOUT=*                                                  00007600
//SYSOUT   DD SYSOUT=*                                                  00007700
//SYSDBOUT DD SYSOUT=*                                                  00007800
//SYSABOUT DD SYSOUT=*                                                  00007900
//SYSUDUMP DD DUMMY                                                     00008000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPF01T06),DISP=SHR                   00008100
//*                                                                     00008200
//**********************************************************************00008300
//*  PROGRAMA:  SORT                                                   *00008400
//*  FUNCION:   ORDENA ARCHIVOS DE ENTRADA POR IREF DE FORMA ASCENDENTE*00008500
//*                                                                    *00008600
//**********************************************************************00008700
//PPF01P04 EXEC PGM=SYNCSORT,COND=(4,LT)                                00008800
//SYSOUT   DD SYSOUT=*                                                  00008900
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZM4DH023.PRESHOY,DISP=SHR      00009000
//         DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZM4DH024.PRESHOY2,DISP=SHR     00009100
//SORTOUT  DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZH4DH023.PVPOP,                00009200
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00009300
//            SPACE=(CYL,(20,10),RLSE),                                 00009400
//            DCB=(RECFM=FB,DSORG=PS,LRECL=235,BLKSIZE=0)               00009500
//*SYSTSPRT DD SYSOUT=*                                                 00009600
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPF01T05),DISP=SHR                   00009700
//**********************************************************************00009800
//*  PROGRAMA:    ZM4DH025                                             *00009900
//*  FUNCION:     GENERAR ARCHIVO DE GARANTIAS PARA POSICION PROPIA.   *00010000
//**********************************************************************00010100
//PPF01P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00010200
//*                                                                     00010300
//ZM4DH0A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD35,DISP=SHR       00010400
//ZM4DH0S1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZH4DH025.GARPOP,               00010500
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00010600
//            SPACE=(CYL,(20,10),RLSE),                                 00010700
//            DCB=(RECFM=FB,DSORG=PS,LRECL=238,BLKSIZE=0)               00010800
//SYSTSPRT DD SYSOUT=*                                                  00010900
//SYSPRINT DD SYSOUT=*                                                  00011000
//SYSOUT   DD SYSOUT=*                                                  00011100
//SYSDBOUT DD SYSOUT=*                                                  00011200
//SYSABOUT DD SYSOUT=*                                                  00011300
//SYSUDUMP DD DUMMY                                                     00011400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPF01T04),DISP=SHR                   00011500
//*                                                                     00011600
//**********************************************************************00011700
//*  PROGRAMA:    ZM4DH026                                             *00011800
//*  OBJERIVO     GENERA UN REPORTE DE POSICION CON COSTO PROMEDIO     *00011900
//*                                                                    *00012000
//**********************************************************************00012100
//PPF01P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00012200
//*                                                                     00012300
//ZM4DH0A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHFPD35,DISP=SHR       00012400
//*ZM4DH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00012500
//ZM4DH0R1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZM4DH026.POSPOP,               00012600
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00012700
//            SPACE=(CYL,(20,10),RLSE),                                 00012800
//            DCB=(RECFM=FB,DSORG=PS,LRECL=132,BLKSIZE=0)               00012900
//SYSTSPRT DD SYSOUT=*                                                  00013000
//SYSPRINT DD SYSOUT=*                                                  00013100
//SYSOUT   DD SYSOUT=*                                                  00013200
//SYSDBOUT DD SYSOUT=*                                                  00013300
//SYSABOUT DD SYSOUT=*                                                  00013400
//SYSUDUMP DD DUMMY                                                     00013500
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPF01T03),DISP=SHR                   00013600
//*                                                                     00013700
//********************************************************************* 00013800
//* PROGRAMA: DMBATCH                                                 * 00013900
//* FUNCION:  TRANSFERIR ARCHIVOS  DEL HOST AL SERVIDOR BLADE         * 00014000
//*   DSN1= \\CBNOCFS03\C_CB003\ZM\CUSTODIA\...                       * 00014100
//*   DSN2=   MXCP.ZM.FIX.VAL.BCM...                                  * 00014200
//********************************************************************* 00014300
//PPF01P01 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)                  00014407
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB                    00014500
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP                     00014600
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS                       00014700
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG                        00014800
//DMPRINT   DD SYSOUT=*                                                 00014900
//SYSPRINT  DD SYSOUT=*                                                 00015000
//NDMCMDS   DD SYSOUT=*                                                 00015100
//SYSUDUMP  DD DUMMY                                                    00015200
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZPF01T01),DISP=SHR                  00015300
//*                                                                     00015400
//**********************************************************************00015500
//*  PEND           FIN DE PROCEDIMIENTO ZMPFPD01                      *00015600
//**********************************************************************00015700
