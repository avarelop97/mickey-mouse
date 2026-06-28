//ZMULPE05 PROC                                                         00000100
//**********************************************************************00000200
//*                     C A S A   D E   B O L S A                      *00000300
//*                     =========================                      *00000400
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *00000500
//*                                                                    *00000600
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00000700
//*                                                                    *00000800
//*   PROCEDIM. :  ZMULPE05                                            *00000900
//*                                                                    *00001000
//*   OBJETIVO  :  REPROCESO DE ESTADOS DE CUENTA CON REIMPRESION DE   *00001100
//*                LOS ESTADOS DE CUENTA AFECTADOS DE LA EMPRESA       *00001200
//*                CORRESPONDIENTE                                     *00001300
//*                (OPCION: 348-99)                                    *00001400
//*                                                                    *00001500
//*   CORRE ANTES DE  :  NINGUNO                                       *00001600
//*                                                                    *00001700
//*   CORRE DESPUES DE:  NINGUNO                                       *00001800
//*                                                                    *00001900
//*   PERIODICIDAD    :  CORRE A SOLICITUD DEL USUARIO                 *00002000
//*                                                                    *00002100
//**********************************************************************00002200
//*                                                                     00002300
//**********************************************************************00002400
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *00002500
//**********************************************************************00002600
//PUL05P66 EXEC PGM=ZM3DG001,                                           00002700
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00002800
//PI601765 DD DUMMY                                                     00002900
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00003000
//SYSPRINT DD SYSOUT=*                                                  00003100
//SYSOUT   DD SYSOUT=*                                                  00003200
//SYSDBOUT DD SYSOUT=*                                                  00003300
//SYSABOUT DD DUMMY                                                     00003400
//SYSUDUMP DD DUMMY                                                     00003500
//*                                                                     00003600
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMULPE05,                      00003700
//            DISP=(NEW,CATLG,DELETE),                                  00003800
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00003900
//            UNIT=3390,                                                00004000
//            SPACE=(CYL,(2,1),RLSE)                                    00004100
//*                                                                     00004200
//**********************************************************************00004300
//*    GENERA LOS PARAMETROS PARA LOS ESTADOS DE CUENTA A REPROCESAR   *00004400
//**********************************************************************00004500
//PUL05P65 EXEC PGM=ZM3DG001,                                           00004600
//         PARM=('&EMP','&SUC','0000001-9999999',' ',)                  00004700
//PI601765 DD DUMMY                                                     00004800
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00004900
//SYSPRINT DD SYSOUT=*                                                  00005000
//SYSOUT   DD SYSOUT=*                                                  00005100
//SYSDBOUT DD SYSOUT=*                                                  00005200
//SYSABOUT DD DUMMY                                                     00005300
//SYSUDUMP DD DUMMY                                                     00005400
//*                                                                     00005500
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMULPE05.EDOSCTA,              00005600
//            DISP=(NEW,CATLG,DELETE),                                  00005700
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00005800
//            UNIT=3390,                                                00005900
//            SPACE=(CYL,(2,1),RLSE)                                    00006000
//*                                                                     00006100
//**********************************************************************00006200
//*    GENERA LOS PARAMETROS PARA LA DIGITALIZACION DE EDOS. DE CUENTA *00006300
//**********************************************************************00006400
//PUL05P64 EXEC PGM=ZM3DG001,                                           00006500
//         PARM=('&EMP',' ',' ',' ',)                                   00006600
//PI601765 DD DUMMY                                                     00006700
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00006800
//SYSPRINT DD SYSOUT=*                                                  00006900
//SYSOUT   DD SYSOUT=*                                                  00007000
//SYSDBOUT DD SYSOUT=*                                                  00007100
//SYSABOUT DD DUMMY                                                     00007200
//SYSUDUMP DD DUMMY                                                     00007300
//*                                                                     00007400
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMULPE05.DIGITAL,              00007500
//            DISP=(NEW,CATLG,DELETE),                                  00007600
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00007700
//            UNIT=3390,                                                00007800
//            SPACE=(CYL,(2,1),RLSE)                                    00007900
//*                                                                     00008000
//**********************************************************************00008100
//*                    -- ZM4MU001  --                                  00008200
//*  DESCARGA DE LAS TABLAS PRODUSVP.EDCUENTA, PRODUSVP.PROMOT,         00008300
//*                       PRODUSVP.SUCURSA,  PRODUSVP.ESTZONE,          00008400
//*                       PRODUSVP.EMPRESA  SOBRE UN ARCHIVO SECUENCIAL 00008500
//*  PARA USO EN LA GENERACION DE ESTADOS DE CUENTA                     00008600
//**********************************************************************00008700
//PUL05P63 EXEC PGM=IKJEFT01,COND=(0,NE)                                00008800
//PI601765 DD DUMMY                                                     00008900
//ZMU001C1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDCUENTA,                        00009000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00009100
//            DCB=(DSORG=PS,LRECL=540,RECFM=FB,BLKSIZE=0),              00009200
//            SPACE=(CYL,(100,50),RLSE)                                 00009300
//ZMU001V1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.HD,                      00009400
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00009500
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),               00009600
//            SPACE=(CYL,(1,1),RLSE)                                    00009700
//ZMU001D1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDDEPRE.HD,                      00009800
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00009900
//            DCB=(DSORG=PS,LRECL=76,RECFM=FB,BLKSIZE=0),               00010000
//            SPACE=(CYL,(1,1),RLSE)                                    00010100
//ZMU001I1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDIMPUE.HD,                      00010200
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00010300
//            DCB=(DSORG=PS,LRECL=85,RECFM=FB,BLKSIZE=0),               00010400
//            SPACE=(CYL,(1,1),RLSE)                                    00010500
//ZMU001M1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDMOVED.HD,                      00010600
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00010700
//            DCB=(DSORG=PS,LRECL=109,RECFM=FB,BLKSIZE=0),              00010800
//            SPACE=(CYL,(1,1),RLSE)                                    00010900
//ZMU001O1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDOPERT1.HD,                     00011000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00011100
//            DCB=(DSORG=PS,LRECL=68,RECFM=FB,BLKSIZE=0),               00011200
//            SPACE=(CYL,(1,1),RLSE)                                    00011300
//ZMU001S1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDSECIN.HD,                      00011400
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00011500
//            DCB=(DSORG=PS,LRECL=145,RECFM=FB,BLKSIZE=0),              00011600
//            SPACE=(CYL,(1,1),RLSE)                                    00011700
//ZMU001P1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDPARAM.HD,                      00011800
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00011900
//            DCB=(DSORG=PS,LRECL=83,RECFM=FB,BLKSIZE=0),               00012000
//            SPACE=(CYL,(1,1),RLSE)                                    00012100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00012200
//SYSPRINT DD SYSOUT=*                                                  00012300
//SYSOUT   DD SYSOUT=*                                                  00012400
//SYSDBOUT DD SYSOUT=*                                                  00012500
//SYSABOUT DD SYSOUT=*                                                  00012600
//SYSUDUMP DD DUMMY                                                     00012700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL05T01),DISP=SHR                   00012800
//*                                                                     00012900
//**********************************************************************00013000
//*                     * SORT   *                                      00013100
//* OBJETIVO : ORDENA POR ICUENTA, ISUCCASA EL ARCHIVO: EDCUENTA        00013200
//**********************************************************************00013300
//PUL05P62 EXEC PGM=ICEMAN,COND=(0,NE)                                  00013400
//PI601765 DD  DUMMY                                                    00013500
//SYSOUT   DD SYSOUT=*                                                  00013600
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDCUENTA,                        00013700
//            DISP=(MOD,DELETE,DELETE)                                  00013800
//*                                                                     00013900
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDCUENTA.SRT(+1),               00014000
//            DISP=(NEW,CATLG,DELETE),                                  00014100
//            SPACE=(CYL,(100,50),RLSE),                                00014200
//            LRECL=540,RECFM=FB,BLKSIZE=0,                             00014300
//            UNIT=3390,DCB=BKUP.MODEL                                  00014400
//*                                                                     00014500
//SYSTSPRT DD SYSOUT=*                                                  00014600
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUL05T02),DISP=SHR                   00014700
//*                                                                     00014800
//**********************************************************************00014900
//*                     * UNLOAD *                                      00015000
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 0) SOBRE UN ARCHIVO   00015100
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA          00015200
//**********************************************************************00015300
//PUL05P61 EXEC PGM=ADUUMAIN,COND=(0,NE),                               00015400
//         PARM='MXP1,D&EMP,NEW/RESTART,,MSGLEVEL(1)'                   00015500
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00015600
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00015700
//         DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00015800
//PI601765 DD DUMMY                                                     00015900
//SYSTSPRT DD SYSOUT=*                                                  00016000
//SYSPRINT DD SYSOUT=*                                                  00016100
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP0,                     00016200
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00016300
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),               00016400
//            SPACE=(CYL,(80,40),RLSE)                                  00016500
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUL05T03),DISP=SHR                   00016600
//*                                                                     00016700
//**********************************************************************00016800
//*                     * UNLOAD *                                      00016900
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 1) SOBRE UN ARCHIVO   00017000
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA          00017100
//**********************************************************************00017200
//PUL05P60 EXEC PGM=ADUUMAIN,COND=(0,NE),                               00017300
//         PARM='MXP1,D&EMP,NEW/RESTART,,MSGLEVEL(1)'                   00017400
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00017500
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00017600
//         DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00017700
//PI601765 DD DUMMY                                                     00017800
//SYSTSPRT DD SYSOUT=*                                                  00017900
//SYSPRINT DD SYSOUT=*                                                  00018000
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP1,                     00018100
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00018200
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),               00018300
//            SPACE=(CYL,(80,40),RLSE)                                  00018400
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUL05T04),DISP=SHR                   00018500
//*                                                                     00018600
//**********************************************************************00018700
//*                     * UNLOAD *                                      00018800
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 2) SOBRE UN ARCHIVO   00018900
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA          00019000
//**********************************************************************00019100
//PUL05P59 EXEC PGM=ADUUMAIN,COND=(0,NE),                               00019200
//         PARM='MXP1,D&EMP,NEW/RESTART,,MSGLEVEL(1)'                   00019300
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00019400
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00019500
//         DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00019600
//PI601765 DD DUMMY                                                     00019700
//SYSTSPRT DD SYSOUT=*                                                  00019800
//SYSPRINT DD SYSOUT=*                                                  00019900
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP2,                     00020000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00020100
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),               00020200
//            SPACE=(CYL,(80,40),RLSE)                                  00020300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUL05T05),DISP=SHR                   00020400
//*                                                                     00020500
//**********************************************************************00020600
//*                     * UNLOAD *                                      00020700
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 3) SOBRE UN ARCHIVO   00020800
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA          00020900
//**********************************************************************00021000
//PUL05P58 EXEC PGM=ADUUMAIN,COND=(0,NE),                               00021100
//         PARM='MXP1,D&EMP,NEW/RESTART,,MSGLEVEL(1)'                   00021200
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00021300
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00021400
//         DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00021500
//PI601765 DD DUMMY                                                     00021600
//SYSTSPRT DD SYSOUT=*                                                  00021700
//SYSPRINT DD SYSOUT=*                                                  00021800
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP3,                     00021900
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00022000
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),               00022100
//            SPACE=(CYL,(80,40),RLSE)                                  00022200
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUL05T06),DISP=SHR                   00022300
//*                                                                     00022400
//**********************************************************************00022500
//*                     * UNLOAD *                                      00022600
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 4) SOBRE UN ARCHIVO   00022700
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA          00022800
//**********************************************************************00022900
//PUL05P57 EXEC PGM=ADUUMAIN,COND=(0,NE),                               00023000
//         PARM='MXP1,D&EMP,NEW/RESTART,,MSGLEVEL(1)'                   00023100
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00023200
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00023300
//         DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00023400
//PI601765 DD DUMMY                                                     00023500
//SYSTSPRT DD SYSOUT=*                                                  00023600
//SYSPRINT DD SYSOUT=*                                                  00023700
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP4,                     00023800
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00023900
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),               00024000
//            SPACE=(CYL,(80,40),RLSE)                                  00024100
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUL05T07),DISP=SHR                   00024200
//*                                                                     00024300
//**********************************************************************00024400
//*                     * UNLOAD *                                      00024500
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 5) SOBRE UN ARCHIVO   00024600
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA          00024700
//**********************************************************************00024800
//PUL05P56 EXEC PGM=ADUUMAIN,COND=(0,NE),                               00024900
//         PARM='MXP1,D&EMP,NEW/RESTART,,MSGLEVEL(1)'                   00025000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00025100
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00025200
//         DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00025300
//PI601765 DD DUMMY                                                     00025400
//SYSTSPRT DD SYSOUT=*                                                  00025500
//SYSPRINT DD SYSOUT=*                                                  00025600
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP5,                     00025700
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00025800
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),               00025900
//            SPACE=(CYL,(80,40),RLSE)                                  00026000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUL05T08),DISP=SHR                   00026100
//*                                                                     00026200
//**********************************************************************00026300
//*                     * UNLOAD *                                      00026400
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 6) SOBRE UN ARCHIVO   00026500
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA          00026600
//**********************************************************************00026700
//PUL05P55 EXEC PGM=ADUUMAIN,COND=(0,NE),                               00026800
//         PARM='MXP1,D&EMP,NEW/RESTART,,MSGLEVEL(1)'                   00026900
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00027000
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00027100
//         DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00027200
//PI601765 DD DUMMY                                                     00027300
//SYSTSPRT DD SYSOUT=*                                                  00027400
//SYSPRINT DD SYSOUT=*                                                  00027500
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP6,                     00027600
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00027700
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),               00027800
//            SPACE=(CYL,(80,40),RLSE)                                  00027900
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUL05T09),DISP=SHR                   00028000
//*                                                                     00028100
//**********************************************************************00028200
//*                     * UNLOAD *                                      00028300
//*  DESCARGA DE LA TABLA PRODUSVP.EDVALCA (GRUPO 7) SOBRE UN ARCHIVO   00028400
//*  SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA          00028500
//**********************************************************************00028600
//PUL05P54 EXEC PGM=ADUUMAIN,COND=(0,NE),                               00028700
//         PARM='MXP1,D&EMP,NEW/RESTART,,MSGLEVEL(1)'                   00028800
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00028900
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00029000
//         DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00029100
//PI601765 DD DUMMY                                                     00029200
//SYSTSPRT DD SYSOUT=*                                                  00029300
//SYSPRINT DD SYSOUT=*                                                  00029400
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP7,                     00029500
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00029600
//            DCB=(DSORG=PS,LRECL=84,RECFM=FB,BLKSIZE=0),               00029700
//            SPACE=(CYL,(80,40),RLSE)                                  00029800
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUL05T10),DISP=SHR                   00029900
//*                                                                     00030000
//**********************************************************************00030100
//*                     * SORT   *                                      00030200
//* OBJETIVO : JUNTA TODOS LOS GRUPOS DE ARCHIVOS DE EDVALCA UN UNO SOLO00030300
//*            ORDENADO POR: ICUENTA, TIPOREG,  IEMISORA, ISERIE,       00030400
//*                          ICUPON,  FPROCESO, ICLACON                 00030500
//**********************************************************************00030600
//PUL05P53 EXEC PGM=ICEMAN,COND=(0,NE)                                  00030700
//PI601765 DD  DUMMY                                                    00030800
//SYSOUT   DD SYSOUT=*                                                  00030900
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.HD,                      00031000
//            DISP=(MOD,DELETE,DELETE)                                  00031100
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP0,                     00031200
//            DISP=(MOD,DELETE,DELETE)                                  00031300
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP1,                     00031400
//            DISP=(MOD,DELETE,DELETE)                                  00031500
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP2,                     00031600
//            DISP=(MOD,DELETE,DELETE)                                  00031700
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP3,                     00031800
//            DISP=(MOD,DELETE,DELETE)                                  00031900
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP4,                     00032000
//            DISP=(MOD,DELETE,DELETE)                                  00032100
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP5,                     00032200
//            DISP=(MOD,DELETE,DELETE)                                  00032300
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP6,                     00032400
//            DISP=(MOD,DELETE,DELETE)                                  00032500
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDVALCA.GP7,                     00032600
//            DISP=(MOD,DELETE,DELETE)                                  00032700
//*                                                                     00032800
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDVALCA.SRT(+1),                00032900
//            DISP=(NEW,CATLG,DELETE),                                  00033000
//            SPACE=(CYL,(100,50),RLSE),                                00033100
//            LRECL=084,RECFM=FB,BLKSIZE=0,                             00033200
//            UNIT=3390,DCB=BKUP.MODEL                                  00033300
//*                                                                     00033400
//SYSTSPRT DD SYSOUT=*                                                  00033500
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUL05T11),DISP=SHR                   00033600
//*                                                                     00033700
//**********************************************************************00033800
//*                     * UNLOAD *                                      00033900
//*  DESCARGA DE LA TABLA PRODUSVP.EDDEPRE  SOBRE UN ARCHIVO SECUENCIAL 00034000
//*  PARA USO EN LA GENERACION DE ESTADOS DE CUENTA                     00034100
//**********************************************************************00034200
//PUL05P52 EXEC PGM=ADUUMAIN,COND=(0,NE),                               00034300
//         PARM='MXP1,D&EMP,NEW/RESTART,,MSGLEVEL(1)'                   00034400
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00034500
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00034600
//         DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00034700
//PI601765 DD DUMMY                                                     00034800
//SYSTSPRT DD SYSOUT=*                                                  00034900
//SYSPRINT DD SYSOUT=*                                                  00035000
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDDEPRE,                         00035100
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00035200
//            DCB=(DSORG=PS,LRECL=76,RECFM=FB,BLKSIZE=0),               00035300
//            SPACE=(CYL,(80,40),RLSE)                                  00035400
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUL05T12),DISP=SHR                   00035500
//*                                                                     00035600
//**********************************************************************00035700
//*                     * SORT   *                                      00035800
//* OBJETIVO : ORDENA POR ICUENTA, FPROCESO, FLIQUIDA                   00035900
//*            EL ARCHIVO: EDDEPRE                                      00036000
//**********************************************************************00036100
//PUL05P51 EXEC PGM=ICEMAN,COND=(0,NE)                                  00036200
//PI601765 DD  DUMMY                                                    00036300
//SYSOUT   DD SYSOUT=*                                                  00036400
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDDEPRE.HD,                      00036500
//            DISP=(MOD,DELETE,DELETE)                                  00036600
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDDEPRE,                         00036700
//            DISP=(MOD,DELETE,DELETE)                                  00036800
//*                                                                     00036900
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDDEPRE.SRT(+1),                00037000
//            DISP=(NEW,CATLG,DELETE),                                  00037100
//            SPACE=(CYL,(100,50),RLSE),                                00037200
//            LRECL=076,RECFM=FB,BLKSIZE=0,                             00037300
//            UNIT=3390,DCB=BKUP.MODEL                                  00037400
//*                                                                     00037500
//SYSTSPRT DD SYSOUT=*                                                  00037600
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUL05T13),DISP=SHR                   00037700
//*                                                                     00037800
//**********************************************************************00037900
//*                    -- ZM4MU004  --                                  00038000
//*  DESCARGA DE LA TABLA PRODUSVP.EDIMPUE Y PRODUSVP.PARAM ('TI3') EN  00038100
//*  ARCHIVO SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA  00038200
//**********************************************************************00038300
//PUL05P50 EXEC PGM=IKJEFT01,COND=(0,NE)                                00038400
//PI601765 DD DUMMY                                                     00038500
//ZMU004I1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDIMPUE,                         00038600
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00038700
//            DCB=(DSORG=PS,LRECL=85,RECFM=FB,BLKSIZE=0),               00038800
//            SPACE=(CYL,(100,50),RLSE)                                 00038900
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00039000
//SYSPRINT DD SYSOUT=*                                                  00039100
//SYSOUT   DD SYSOUT=*                                                  00039200
//SYSDBOUT DD SYSOUT=*                                                  00039300
//SYSABOUT DD SYSOUT=*                                                  00039400
//SYSUDUMP DD DUMMY                                                     00039500
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL05T14),DISP=SHR                   00039600
//*                                                                     00039700
//**********************************************************************00039800
//*                     * SORT   *                                      00039900
//* OBJETIVO : ORDENA POR ICUENTA, ICONCIMP, FPROCESO                   00040000
//*            EL ARCHIVO: EDIMPUE                                      00040100
//**********************************************************************00040200
//PUL05P49 EXEC PGM=ICEMAN,COND=(0,NE)                                  00040300
//PI601765 DD  DUMMY                                                    00040400
//SYSOUT   DD SYSOUT=*                                                  00040500
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDIMPUE.HD,                      00040600
//            DISP=(MOD,DELETE,DELETE)                                  00040700
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDIMPUE,                         00040800
//            DISP=(MOD,DELETE,DELETE)                                  00040900
//*                                                                     00041000
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDIMPUE.SRT(+1),                00041100
//            DISP=(NEW,CATLG,DELETE),                                  00041200
//            SPACE=(CYL,(100,50),RLSE),                                00041300
//            LRECL=085,RECFM=FB,BLKSIZE=0,                             00041400
//            UNIT=3390,DCB=BKUP.MODEL                                  00041500
//*                                                                     00041600
//SYSTSPRT DD SYSOUT=*                                                  00041700
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUL05T15),DISP=SHR                   00041800
//*                                                                     00041900
//**********************************************************************00042000
//*                    -- ZM4MU003  --                                  00042100
//*  DESCARGA DE LA TABLA PRODUSVP.EDMOVED Y PRODUSVP.EDDESOP SOBRE UN  00042200
//*  ARCHIVO SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA  00042300
//**********************************************************************00042400
//PUL05P48 EXEC PGM=IKJEFT01,COND=(0,NE)                                00042500
//PI601765 DD DUMMY                                                     00042600
//ZMU003M1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDMOVED,                         00042700
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00042800
//            DCB=(DSORG=PS,LRECL=109,RECFM=FB,BLKSIZE=0),              00042900
//            SPACE=(CYL,(100,50),RLSE)                                 00043000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00043100
//SYSPRINT DD SYSOUT=*                                                  00043200
//SYSOUT   DD SYSOUT=*                                                  00043300
//SYSDBOUT DD SYSOUT=*                                                  00043400
//SYSABOUT DD SYSOUT=*                                                  00043500
//SYSUDUMP DD DUMMY                                                     00043600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL05T16),DISP=SHR                   00043700
//*                                                                     00043800
//**********************************************************************00043900
//*                     * SORT   *                                      00044000
//* OBJETIVO : ORDENA POR ICUENTA, FPROCESO, FLIQUIDA, IREF, ISEC,      00044100
//*                       ICLACON                                       00044200
//*            EL ARCHIVO: EDMOVED                                      00044300
//**********************************************************************00044400
//PUL05P47 EXEC PGM=ICEMAN,COND=(0,NE)                                  00044500
//PI601765 DD  DUMMY                                                    00044600
//SYSOUT   DD SYSOUT=*                                                  00044700
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDMOVED.HD,                      00044800
//            DISP=(MOD,DELETE,DELETE)                                  00044900
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDMOVED,                         00045000
//            DISP=(MOD,DELETE,DELETE)                                  00045100
//*                                                                     00045200
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDMOVED.SRT(+1),                00045300
//            DISP=(NEW,CATLG,DELETE),                                  00045400
//            SPACE=(CYL,(100,50),RLSE),                                00045500
//            LRECL=109,RECFM=FB,BLKSIZE=0,                             00045600
//            UNIT=3390,DCB=BKUP.MODEL                                  00045700
//*                                                                     00045800
//SYSTSPRT DD SYSOUT=*                                                  00045900
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUL05T17),DISP=SHR                   00046000
//*                                                                     00046100
//**********************************************************************00046200
//*                     * UNLOAD *                                      00046300
//*  DESCARGA DE LA TABLA PRODUSVP.EDSECIN  SOBRE UN ARCHIVO SECUENCIAL 00046400
//*  PARA USO EN LA GENERACION DE ESTADOS DE CUENTA                     00046500
//**********************************************************************00046600
//PUL05P46 EXEC PGM=ADUUMAIN,COND=(0,NE),                               00046700
//         PARM='MXP1,D&EMP,NEW/RESTART,,MSGLEVEL(1)'                   00046800
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00046900
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00047000
//         DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00047100
//PI601765 DD DUMMY                                                     00047200
//SYSTSPRT DD SYSOUT=*                                                  00047300
//SYSPRINT DD SYSOUT=*                                                  00047400
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDSECIN,                         00047500
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00047600
//            DCB=(DSORG=PS,LRECL=145,RECFM=FB,BLKSIZE=0),              00047700
//            SPACE=(CYL,(80,40),RLSE)                                  00047800
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUL05T18),DISP=SHR                   00047900
//*                                                                     00048000
//**********************************************************************00048100
//*                     * SORT   *                                      00048200
//* OBJETIVO : ORDENA POR ICUENTA, FPROCESO, EINFO                      00048300
//*            EL ARCHIVO: EDSECIN                                      00048400
//**********************************************************************00048500
//PUL05P45 EXEC PGM=ICEMAN,COND=(0,NE)                                  00048600
//PI601765 DD  DUMMY                                                    00048700
//SYSOUT   DD SYSOUT=*                                                  00048800
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDSECIN.HD,                      00048900
//            DISP=(MOD,DELETE,DELETE)                                  00049000
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDSECIN,                         00049100
//            DISP=(MOD,DELETE,DELETE)                                  00049200
//*                                                                     00049300
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDSECIN.SRT(+1),                00049400
//            DISP=(NEW,CATLG,DELETE),                                  00049500
//            SPACE=(CYL,(100,50),RLSE),                                00049600
//            LRECL=145,RECFM=FB,BLKSIZE=0,                             00049700
//            UNIT=3390,DCB=BKUP.MODEL                                  00049800
//*                                                                     00049900
//SYSTSPRT DD SYSOUT=*                                                  00050000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUL05T19),DISP=SHR                   00050100
//*                                                                     00050200
//**********************************************************************00050300
//*                     * UNLOAD *                                      00050400
//*  DESCARGA DE LA TABLA PRODUSVP.EDOPERT1 SOBRE UN ARCHIVO SECUENCIAL 00050500
//*  PARA USO EN LA GENERACION DE ESTADOS DE CUENTA                     00050600
//**********************************************************************00050700
//PUL05P44 EXEC PGM=ADUUMAIN,COND=(0,NE),                               00050800
//         PARM='MXP1,D&EMP,NEW/RESTART,,MSGLEVEL(1)'                   00050900
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00051000
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00051100
//         DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00051200
//PI601765 DD DUMMY                                                     00051300
//SYSTSPRT DD SYSOUT=*                                                  00051400
//SYSPRINT DD SYSOUT=*                                                  00051500
//SYSREC   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDOPERT1,                        00051600
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00051700
//            DCB=(DSORG=PS,LRECL=68,RECFM=FB,BLKSIZE=0),               00051800
//            SPACE=(CYL,(80,40),RLSE)                                  00051900
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUL05T20),DISP=SHR                   00052000
//*                                                                     00052100
//**********************************************************************00052200
//*                     * SORT   *                                      00052300
//* OBJETIVO : ORDENA POR ICUENTA1, FREG, FLIQUIDA, IOPERA, SESTATUS    00052400
//*            EL ARCHIVO: EDOPERT1                                     00052500
//**********************************************************************00052600
//PUL05P43 EXEC PGM=ICEMAN,COND=(0,NE)                                  00052700
//PI601765 DD  DUMMY                                                    00052800
//SYSOUT   DD SYSOUT=*                                                  00052900
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDOPERT1.HD,                     00053000
//            DISP=(MOD,DELETE,DELETE)                                  00053100
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDOPERT1,                        00053200
//            DISP=(MOD,DELETE,DELETE)                                  00053300
//*                                                                     00053400
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDOPERT1.SRT(+1),               00053500
//            DISP=(NEW,CATLG,DELETE),                                  00053600
//            SPACE=(CYL,(100,50),RLSE),                                00053700
//            LRECL=068,RECFM=FB,BLKSIZE=0,                             00053800
//            UNIT=3390,DCB=BKUP.MODEL                                  00053900
//*                                                                     00054000
//SYSTSPRT DD SYSOUT=*                                                  00054100
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUL05T21),DISP=SHR                   00054200
//*                                                                     00054300
//**********************************************************************00054400
//*                    -- ZM4MU005  --                                  00054500
//*  DESCARGA DE LA TABLA PRODUSVP.PARAM ('ET1','ET2', 'ET3') EN        00054600
//*  ARCHIVO SECUENCIAL PARA USO EN LA GENERACION DE ESTADOS DE CUENTA  00054700
//**********************************************************************00054800
//PUL05P42 EXEC PGM=IKJEFT01,COND=(0,NE)                                00054900
//PI601765 DD DUMMY                                                     00055000
//ZMU005P1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDPARAM,                         00055100
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00055200
//            DCB=(DSORG=PS,LRECL=83,RECFM=FB,BLKSIZE=0),               00055300
//            SPACE=(CYL,(100,50),RLSE)                                 00055400
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00055500
//SYSPRINT DD SYSOUT=*                                                  00055600
//SYSOUT   DD SYSOUT=*                                                  00055700
//SYSDBOUT DD SYSOUT=*                                                  00055800
//SYSABOUT DD SYSOUT=*                                                  00055900
//SYSUDUMP DD DUMMY                                                     00056000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL05T22),DISP=SHR                   00056100
//*                                                                     00056200
//**********************************************************************00056300
//*                     * SORT   *                                      00056400
//* OBJETIVO : ORDENA POR ITIPOPAR, IPARAM                              00056500
//*            EL ARCHIVO: EDPARAM                                      00056600
//**********************************************************************00056700
//PUL05P41 EXEC PGM=ICEMAN,COND=(0,NE)                                  00056800
//PI601765 DD  DUMMY                                                    00056900
//SYSOUT   DD SYSOUT=*                                                  00057000
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDPARAM.HD,                      00057100
//            DISP=(MOD,DELETE,DELETE)                                  00057200
//         DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDPARAM,                         00057300
//            DISP=(MOD,DELETE,DELETE)                                  00057400
//*                                                                     00057500
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDPARAM.SRT(+1),                00057600
//            DISP=(NEW,CATLG,DELETE),                                  00057700
//            SPACE=(CYL,(100,50),RLSE),                                00057800
//            LRECL=083,RECFM=FB,BLKSIZE=0,                             00057900
//            UNIT=3390,DCB=BKUP.MODEL                                  00058000
//*                                                                     00058100
//SYSTSPRT DD SYSOUT=*                                                  00058200
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUL05T23),DISP=SHR                   00058300
//*                                                                     00058400
//**********************************************************************00058500
//*                    -- ZM4MU009  --                                 *00058600
//*  SEPARA LOS ESTADOS DE CUENTA EN DOS ARCHIVOS: UNO CON LOS ESTADOS *00058700
//*  DE CUENTA QUE NO SE TIENEN QUE REPROCESAR Y OTRO CON LOS REGISTROS*00058800
//*  DE EDCUENTA A REPROCESAR                                          *00058900
//*                                                                    *00059000
//**********************************************************************00059100
//PUL05P40 EXEC PGM=IKJEFT01,COND=(0,NE)                                00059200
//PI601765 DD DUMMY                                                     00059300
//ZMU009A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMULPE05,DISP=SHR              00059400
//*                                                                     00059500
//ZMU009E1 DD DSN=MXCP.ZM.GDGD.ECT.E&EMP..EDOSCTA(0),DISP=SHR           00059600
//*                                                                     00059700
//ZMU009ED DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDCUENTA.SRT(+1),DISP=SHR       00059800
//*                                                                     00059900
//ZMU009G0 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA,                       00060000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00060100
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),             00060200
//            SPACE=(CYL,(400,200),RLSE)                                00060300
//ZMU009ER DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDCUENTA.REPR,                 00060400
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00060500
//            DCB=(DSORG=PS,LRECL=540,RECFM=FB,BLKSIZE=0),              00060600
//            SPACE=(CYL,(100,50),RLSE)                                 00060700
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00060800
//SYSPRINT DD SYSOUT=*                                                  00060900
//SYSOUT   DD SYSOUT=*                                                  00061000
//SYSDBOUT DD SYSOUT=*                                                  00061100
//SYSABOUT DD SYSOUT=*                                                  00061200
//SYSUDUMP DD DUMMY                                                     00061300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL05T24),DISP=SHR                   00061400
//*                                                                     00061500
//**********************************************************************00061600
//*                    -- ZM3MU260  --                                 *00061700
//*                 GENERA ESTADOS DE CUENTA REPROCESADOS              *00061800
//**********************************************************************00061900
//PUL05P39 EXEC PGM=IKJEFT01,COND=(0,NE)                                00062000
//PI601765 DD DUMMY                                                     00062100
//ZMU260A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMULPE05.EDOSCTA,DISP=SHR      00062200
//ZMU260EC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.REPR,                  00062300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00062400
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),             00062500
//            SPACE=(CYL,(400,200),RLSE)                                00062600
//ZMU260R1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOTEMP,                       00062700
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,                       00062800
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),             00062900
//            SPACE=(CYL,(400,200),RLSE)                                00063000
//ZMU260R2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MAXHJA,                        00063100
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,                       00063200
//            DCB=(DSORG=PS,LRECL=30,RECFM=FB,BLKSIZE=0),               00063300
//            SPACE=(CYL,(40,20),RLSE)                                  00063400
//ZMU260R3 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL,                        00063500
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,                       00063600
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               00063700
//            SPACE=(CYL,(6,3),RLSE)                                    00063800
//ZMU260C1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDCUENTA.REPR,                 00063900
//            DISP=(MOD,DELETE,DELETE)                                  00064000
//*                                                                     00064100
//ZMU260V1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDVALCA.SRT(+1),DISP=SHR        00064200
//ZMU260D1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDDEPRE.SRT(+1),DISP=SHR        00064300
//ZMU260I1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDIMPUE.SRT(+1),DISP=SHR        00064400
//ZMU260M1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDMOVED.SRT(+1),DISP=SHR        00064500
//ZMU260S1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDSECIN.SRT(+1),DISP=SHR        00064600
//ZMU260O1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDOPERT1.SRT(+1),DISP=SHR       00064700
//ZMU260P1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDPARAM.SRT(+1),DISP=SHR        00064800
//*                                                                     00064900
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00065000
//SYSPRINT DD SYSOUT=*                                                  00065100
//SYSOUT   DD SYSOUT=*                                                  00065200
//SYSDBOUT DD SYSOUT=*                                                  00065300
//SYSABOUT DD SYSOUT=*                                                  00065400
//SYSUDUMP DD DUMMY                                                     00065500
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL05T00),DISP=SHR                   00065600
//*                                                                     00065700
//**********************************************************************00065800
//*                     * SORT   *                                      00065900
//* OBJETIVO : UNE LOS DOS ARCHIVOS DE ESTADOS DE CUENTA ORDENANDOLOS   00066000
//*            POR IEMPR, ICUENTA, ISUCCASA                             00066100
//**********************************************************************00066200
//PUL05P38 EXEC PGM=ICEMAN,COND=(0,NE)                                  00066300
//PI601765 DD  DUMMY                                                    00066400
//SYSOUT   DD SYSOUT=*                                                  00066500
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA,                       00066600
//            DISP=(MOD,DELETE,DELETE)                                  00066700
//         DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.REPR,                  00066800
//            DISP=(MOD,DELETE,DELETE)                                  00066900
//SORTOUT  DD DSN=MXCP.ZM.GDGD.ECT.E&EMP..EDOSCTA(0),DISP=SHR           00067000
//SYSTSPRT DD SYSOUT=*                                                  00067100
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUL05T25),DISP=SHR                   00067200
//*                                                                     00067300
//**********************************************************************00067400
//*                    -- ZM4MU007  --                                 *00067500
//*  SEPARA LOS ESTADOS DE CUENTA EN ARCHIVOS DE IMPRESION DE ACUERDO  *00067600
//*  A LOS CRITERIOS DE SEPARACION PROPORCIONADOS EN LINEA MEDIANTE LA *00067700
//*  TABLA PRODUSVP.PARAM ('ESP')                                      *00067800
//*                                                                    *00067900
//**********************************************************************00068000
//PUL05P37 EXEC PGM=IKJEFT01,COND=(0,NE)                                00068100
//PI601765 DD DUMMY                                                     00068200
//ZMU007A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMULPE05.DIGITAL,DISP=SHR      00068300
//ZMU007E1 DD DSN=MXCP.ZM.GDGD.ECT.E&EMP..EDOSCTA(0),DISP=SHR           00068400
//*                                                                     00068500
//ZMU007CC DD DSN=MXCP.ZM.TMP.ECT.E&EMP..CIFCTL.GEN,                    00068600
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,                       00068700
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               00068800
//            SPACE=(CYL,(6,3),RLSE)                                    00068900
//ZMU007G0 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP00,                  00069000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00069100
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),             00069200
//            SPACE=(CYL,(400,200),RLSE)                                00069300
//ZMU007G1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP01,                  00069400
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00069500
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),             00069600
//            SPACE=(CYL,(400,200),RLSE)                                00069700
//ZMU007G2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP02,                  00069800
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00069900
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),             00070000
//            SPACE=(CYL,(400,200),RLSE)                                00070100
//ZMU007G3 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP03,                  00070200
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00070300
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),             00070400
//            SPACE=(CYL,(400,200),RLSE)                                00070500
//ZMU007G4 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP04,                  00070600
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00070700
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),             00070800
//            SPACE=(CYL,(400,200),RLSE)                                00070900
//ZMU007G5 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP05,                  00071000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00071100
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),             00071200
//            SPACE=(CYL,(400,200),RLSE)                                00071300
//ZMU007G6 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP06,                  00071400
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00071500
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),             00071600
//            SPACE=(CYL,(400,200),RLSE)                                00071700
//ZMU007G7 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP07,                  00071800
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00071900
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),             00072000
//            SPACE=(CYL,(400,200),RLSE)                                00072100
//ZMU007G8 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP08,                  00072200
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00072300
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),             00072400
//            SPACE=(CYL,(400,200),RLSE)                                00072500
//ZMU007G9 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP09,                  00072600
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00072700
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),             00072800
//            SPACE=(CYL,(400,200),RLSE)                                00072900
//ZMU007GA DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP10,                  00073000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00073100
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),             00073200
//            SPACE=(CYL,(400,200),RLSE)                                00073300
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00073400
//SYSPRINT DD SYSOUT=*                                                  00073500
//SYSOUT   DD SYSOUT=*                                                  00073600
//SYSDBOUT DD SYSOUT=*                                                  00073700
//SYSABOUT DD SYSOUT=*                                                  00073800
//SYSUDUMP DD DUMMY                                                     00073900
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL05T26),DISP=SHR                   00074000
//*                                                                     00074100
//**********************************************************************00074200
//*                    -- ZM4MU006  --                                 *00074300
//*  GENERA LOS ARCHIVOS DE TARJETAS DE SORT PARA LOS 11 GRUPOS DE     *00074400
//*  IMPRESION PARA USO EN EL ORDENAMIENTO PARAMETRICO DE LOS ESTADOS  *00074500
//*  DE CUENTA DE ACUERDO A LOS CRITERIOS DE ORDENAMIENTO DE LA TABLA  *00074600
//*  PRODUSVP.PARAM ('ESR')                                            *00074700
//**********************************************************************00074800
//PUL05P36 EXEC PGM=IKJEFT01,COND=(0,NE)                                00074900
//PI601765 DD DUMMY                                                     00075000
//ZMU006A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMULPE05.DIGITAL,DISP=SHR      00075100
//*                                                                     00075200
//ZMU006G0 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP00,                       00075300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00075400
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               00075500
//            SPACE=(CYL,(1,1),RLSE)                                    00075600
//ZMU006G1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP01,                       00075700
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,                       00075800
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               00075900
//            SPACE=(CYL,(1,1),RLSE)                                    00076000
//ZMU006G2 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP02,                       00076100
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,                       00076200
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               00076300
//            SPACE=(CYL,(1,1),RLSE)                                    00076400
//ZMU006G3 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP03,                       00076500
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,                       00076600
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               00076700
//            SPACE=(CYL,(1,1),RLSE)                                    00076800
//ZMU006G4 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP04,                       00076900
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,                       00077000
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               00077100
//            SPACE=(CYL,(1,1),RLSE)                                    00077200
//ZMU006G5 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP05,                       00077300
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,                       00077400
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               00077500
//            SPACE=(CYL,(1,1),RLSE)                                    00077600
//ZMU006G6 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP06,                       00077700
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,                       00077800
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               00077900
//            SPACE=(CYL,(1,1),RLSE)                                    00078000
//ZMU006G7 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP07,                       00078100
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,                       00078200
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               00078300
//            SPACE=(CYL,(1,1),RLSE)                                    00078400
//ZMU006G8 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP08,                       00078500
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,                       00078600
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               00078700
//            SPACE=(CYL,(1,1),RLSE)                                    00078800
//ZMU006G9 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP09,                       00078900
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,                       00079000
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               00079100
//            SPACE=(CYL,(1,1),RLSE)                                    00079200
//ZMU006GA DD DSN=MXCP.ZM.TMP.ECT.E&EMP..SRTGP10,                       00079300
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,                       00079400
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               00079500
//            SPACE=(CYL,(1,1),RLSE)                                    00079600
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00079700
//SYSPRINT DD SYSOUT=*                                                  00079800
//SYSOUT   DD SYSOUT=*                                                  00079900
//SYSDBOUT DD SYSOUT=*                                                  00080000
//SYSABOUT DD SYSOUT=*                                                  00080100
//SYSUDUMP DD DUMMY                                                     00080200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL05T27),DISP=SHR                   00080300
//*                                                                     00081700
//**********************************************************************00081800
//*                    -- ZM4MU002  --                                 *00081900
//*        RECORTA ARCHIVO PARA MICROFIL. ESTADOS DE CUENTA GRUPO  00  *00082000
//**********************************************************************00082100
//PUL05P34 EXEC PGM=IKJEFT01,COND=(0,NE)                                00082200
//PI601765 DD DUMMY                                                     00082300
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMULPE05.DIGITAL,DISP=SHR      00082400
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP00,                  00082500
//            DISP=(MOD,DELETE,DELETE)                                  00082600
//ZMU002C1 DD DUMMY                                                     00082700
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP00,              00082800
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00082900
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00083000
//            SPACE=(CYL,(400,200),RLSE)                                00083100
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP00,              00083200
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00083300
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00083400
//            SPACE=(CYL,(400,200),RLSE)                                00083500
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00083600
//SYSPRINT DD SYSOUT=*                                                  00083700
//SYSOUT   DD SYSOUT=*                                                  00083800
//SYSDBOUT DD SYSOUT=*                                                  00083900
//SYSABOUT DD SYSOUT=*                                                  00084000
//SYSUDUMP DD DUMMY                                                     00084100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL05T28),DISP=SHR                   00084200
//*                                                                     00085600
//**********************************************************************00085700
//*                    -- ZM4MU002  --                                 *00085800
//*        RECORTA ARCHIVO PARA MICROFIL. ESTADOS DE CUENTA GRUPO  01  *00085900
//**********************************************************************00086000
//PUL05P32 EXEC PGM=IKJEFT01,COND=(0,NE)                                00086100
//PI601765 DD DUMMY                                                     00086200
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMULPE05.DIGITAL,DISP=SHR      00086300
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP01,                  00086400
//            DISP=(MOD,DELETE,DELETE)                                  00086500
//ZMU002C1 DD DUMMY                                                     00086600
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP01,              00086700
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00086800
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00086900
//            SPACE=(CYL,(400,200),RLSE)                                00087000
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP01,              00087100
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00087200
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00087300
//            SPACE=(CYL,(400,200),RLSE)                                00087400
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00087500
//SYSPRINT DD SYSOUT=*                                                  00087600
//SYSOUT   DD SYSOUT=*                                                  00087700
//SYSDBOUT DD SYSOUT=*                                                  00087800
//SYSABOUT DD SYSOUT=*                                                  00087900
//SYSUDUMP DD DUMMY                                                     00088000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL05T29),DISP=SHR                   00088100
//*                                                                     00089500
//**********************************************************************00089600
//*                    -- ZM4MU002  --                                 *00089700
//*        RECORTA ARCHIVO PARA MICROFIL. ESTADOS DE CUENTA GRUPO  02  *00089800
//**********************************************************************00089900
//PUL05P30 EXEC PGM=IKJEFT01,COND=(0,NE)                                00090000
//PI601765 DD DUMMY                                                     00090100
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMULPE05.DIGITAL,DISP=SHR      00090200
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP02,                  00090300
//            DISP=(MOD,DELETE,DELETE)                                  00090400
//ZMU002C1 DD DUMMY                                                     00090500
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP02,              00090600
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00090700
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00090800
//            SPACE=(CYL,(400,200),RLSE)                                00090900
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP02,              00091000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00091100
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00091200
//            SPACE=(CYL,(400,200),RLSE)                                00091300
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00091400
//SYSPRINT DD SYSOUT=*                                                  00091500
//SYSOUT   DD SYSOUT=*                                                  00091600
//SYSDBOUT DD SYSOUT=*                                                  00091700
//SYSABOUT DD SYSOUT=*                                                  00091800
//SYSUDUMP DD DUMMY                                                     00091900
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL05T30),DISP=SHR                   00092000
//*                                                                     00093400
//**********************************************************************00093500
//*                    -- ZM4MU002  --                                 *00093600
//*        RECORTA ARCHIVO PARA MICROFIL. ESTADOS DE CUENTA GRUPO  03  *00093700
//**********************************************************************00093800
//PUL05P28 EXEC PGM=IKJEFT01,COND=(0,NE)                                00093900
//PI601765 DD DUMMY                                                     00094000
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMULPE05.DIGITAL,DISP=SHR      00094100
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP03,                  00094200
//            DISP=(MOD,DELETE,DELETE)                                  00094300
//ZMU002C1 DD DUMMY                                                     00094400
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP03,              00094500
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00094600
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00094700
//            SPACE=(CYL,(400,200),RLSE)                                00094800
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP03,              00094900
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00095000
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00095100
//            SPACE=(CYL,(400,200),RLSE)                                00095200
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00095300
//SYSPRINT DD SYSOUT=*                                                  00095400
//SYSOUT   DD SYSOUT=*                                                  00095500
//SYSDBOUT DD SYSOUT=*                                                  00095600
//SYSABOUT DD SYSOUT=*                                                  00095700
//SYSUDUMP DD DUMMY                                                     00095800
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL05T31),DISP=SHR                   00095900
//*                                                                     00097300
//**********************************************************************00097400
//*                    -- ZM4MU002  --                                 *00097500
//*        RECORTA ARCHIVO PARA MICROFIL. ESTADOS DE CUENTA GRUPO  04  *00097600
//**********************************************************************00097700
//PUL05P26 EXEC PGM=IKJEFT01,COND=(0,NE)                                00097800
//PI601765 DD DUMMY                                                     00097900
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMULPE05.DIGITAL,DISP=SHR      00098000
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP04,                  00098100
//            DISP=(MOD,DELETE,DELETE)                                  00098200
//ZMU002C1 DD DUMMY                                                     00098300
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP04,              00098400
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00098500
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00098600
//            SPACE=(CYL,(400,200),RLSE)                                00098700
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP04,              00098800
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00098900
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00099000
//            SPACE=(CYL,(400,200),RLSE)                                00099100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00099200
//SYSPRINT DD SYSOUT=*                                                  00099300
//SYSOUT   DD SYSOUT=*                                                  00099400
//SYSDBOUT DD SYSOUT=*                                                  00099500
//SYSABOUT DD SYSOUT=*                                                  00099600
//SYSUDUMP DD DUMMY                                                     00099700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL05T32),DISP=SHR                   00099800
//*                                                                     00101200
//**********************************************************************00101300
//*                    -- ZM4MU002  --                                 *00101400
//*        RECORTA ARCHIVO PARA MICROFIL. ESTADOS DE CUENTA GRUPO  05  *00101500
//**********************************************************************00101600
//PUL05P24 EXEC PGM=IKJEFT01,COND=(0,NE)                                00101700
//PI601765 DD DUMMY                                                     00101800
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMULPE05.DIGITAL,DISP=SHR      00101900
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP05,                  00102000
//            DISP=(MOD,DELETE,DELETE)                                  00102100
//ZMU002C1 DD DUMMY                                                     00102200
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP05,              00102300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00102400
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00102500
//            SPACE=(CYL,(400,200),RLSE)                                00102600
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP05,              00102700
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00102800
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00102900
//            SPACE=(CYL,(400,200),RLSE)                                00103000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00103100
//SYSPRINT DD SYSOUT=*                                                  00103200
//SYSOUT   DD SYSOUT=*                                                  00103300
//SYSDBOUT DD SYSOUT=*                                                  00103400
//SYSABOUT DD SYSOUT=*                                                  00103500
//SYSUDUMP DD DUMMY                                                     00103600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL05T33),DISP=SHR                   00103700
//*                                                                     00105100
//**********************************************************************00105200
//*                    -- ZM4MU002  --                                 *00105300
//*        RECORTA ARCHIVO PARA MICROFIL. ESTADOS DE CUENTA GRUPO  06  *00105400
//**********************************************************************00105500
//PUL05P22 EXEC PGM=IKJEFT01,COND=(0,NE)                                00105600
//PI601765 DD DUMMY                                                     00105700
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMULPE05.DIGITAL,DISP=SHR      00105800
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP06,                  00105900
//            DISP=(MOD,DELETE,DELETE)                                  00106000
//ZMU002C1 DD DUMMY                                                     00106100
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP06,              00106200
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00106300
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00106400
//            SPACE=(CYL,(400,200),RLSE)                                00106500
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP06,              00106600
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00106700
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00106800
//            SPACE=(CYL,(400,200),RLSE)                                00106900
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00107000
//SYSPRINT DD SYSOUT=*                                                  00107100
//SYSOUT   DD SYSOUT=*                                                  00107200
//SYSDBOUT DD SYSOUT=*                                                  00107300
//SYSABOUT DD SYSOUT=*                                                  00107400
//SYSUDUMP DD DUMMY                                                     00107500
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL05T34),DISP=SHR                   00107600
//*                                                                     00109000
//**********************************************************************00109100
//*                    -- ZM4MU002  --                                 *00109200
//*        RECORTA ARCHIVO PARA MICROFIL. ESTADOS DE CUENTA GRUPO  07  *00109300
//**********************************************************************00109400
//PUL05P20 EXEC PGM=IKJEFT01,COND=(0,NE)                                00109500
//PI601765 DD DUMMY                                                     00109600
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMULPE05.DIGITAL,DISP=SHR      00109700
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP07,                  00109800
//            DISP=(MOD,DELETE,DELETE)                                  00109900
//ZMU002C1 DD DUMMY                                                     00110000
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP07,              00110100
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00110200
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00110300
//            SPACE=(CYL,(400,200),RLSE)                                00110400
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP07,              00110500
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00110600
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00110700
//            SPACE=(CYL,(400,200),RLSE)                                00110800
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00110900
//SYSPRINT DD SYSOUT=*                                                  00111000
//SYSOUT   DD SYSOUT=*                                                  00111100
//SYSDBOUT DD SYSOUT=*                                                  00111200
//SYSABOUT DD SYSOUT=*                                                  00111300
//SYSUDUMP DD DUMMY                                                     00111400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL05T35),DISP=SHR                   00111500
//*                                                                     00112900
//**********************************************************************00113000
//*                    -- ZM4MU002  --                                 *00113100
//*        RECORTA ARCHIVO PARA MICROFIL. ESTADOS DE CUENTA GRUPO  08  *00113200
//**********************************************************************00113300
//PUL05P18 EXEC PGM=IKJEFT01,COND=(0,NE)                                00113400
//PI601765 DD DUMMY                                                     00113500
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMULPE05.DIGITAL,DISP=SHR      00113600
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP08,                  00113700
//            DISP=(MOD,DELETE,DELETE)                                  00113800
//ZMU002C1 DD DUMMY                                                     00113900
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP08,              00114000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00114100
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00114200
//            SPACE=(CYL,(400,200),RLSE)                                00114300
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP08,              00114400
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00114500
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00114600
//            SPACE=(CYL,(400,200),RLSE)                                00114700
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00114800
//SYSPRINT DD SYSOUT=*                                                  00114900
//SYSOUT   DD SYSOUT=*                                                  00115000
//SYSDBOUT DD SYSOUT=*                                                  00115100
//SYSABOUT DD SYSOUT=*                                                  00115200
//SYSUDUMP DD DUMMY                                                     00115300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL05T36),DISP=SHR                   00115400
//*                                                                     00116800
//**********************************************************************00116900
//*                    -- ZM4MU002  --                                 *00117000
//*        RECORTA ARCHIVO PARA MICROFIL. ESTADOS DE CUENTA GRUPO  09  *00117100
//**********************************************************************00117200
//PUL05P16 EXEC PGM=IKJEFT01,COND=(0,NE)                                00117300
//PI601765 DD DUMMY                                                     00117400
//ZMU002A1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..ZMULPE05.DIGITAL,DISP=SHR      00117500
//ZMU002E1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..EDOSCTA.GP09,                  00117600
//            DISP=(MOD,DELETE,DELETE)                                  00117700
//ZMU002C1 DD DUMMY                                                     00117800
//ZMU002F1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..FISICAS.MIC.GP09,              00117900
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00118000
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00118100
//            SPACE=(CYL,(400,200),RLSE)                                00118200
//ZMU002M1 DD DSN=MXCP.ZM.TMP.ECT.E&EMP..MORALES.MIC.GP09,              00118300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00118400
//            DCB=(DSORG=PS,LRECL=201,RECFM=FBA,BLKSIZE=0),             00118500
//            SPACE=(CYL,(400,200),RLSE)                                00118600
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00118700
//SYSPRINT DD SYSOUT=*                                                  00118800
//SYSOUT   DD SYSOUT=*                                                  00118900
//SYSDBOUT DD SYSOUT=*                                                  00119000
//SYSABOUT DD SYSOUT=*                                                  00119100
//SYSUDUMP DD DUMMY                                                     00119200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUL05T37),DISP=SHR                   00119300
//*                                                                     00130300
//**********************************************************************00130400
//*                    -- ICEGENER  --                                 *00130500
//*        RESPALDA GDGD    'MXCP.ZM.GDGD.ECT.ECBP.EDCUENTA.SRT(+1)'   *00130600
//*        EN EL GDGR       'MXCP.ZM.GDGR.ECT.ECBP.EDCUENTA(+1)'       *00130700
//**********************************************************************00130800
//PUL05P12 EXEC PGM=ICEGENER,COND=(4,LT)                                00130900
//SYSIN    DD DUMMY                                                     00131000
//SYSPRINT DD SYSOUT=*                                                  00131100
//SYSUT1   DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDCUENTA.SRT(+1),DISP=SHR       00131200
//SYSUT2   DD  DSN=MXCP.ZM.GDGR.ECT.ECBP.EDCUENTA(+1),
//             DISP=(NEW,CATLG,DELETE),
//             LABEL=(1,SL,,,EXPDT=99000),
//             UNIT=FJVTPH,
//             DCB=(BKUP.MODEL,BLKSIZE=0,DSORG=PS,LRECL=540,RECFM=FB)
//*                                                                     00131700
//**********************************************************************00131800
//*                    -- ICEGENER  --                                 *00131900
//*        RESPALDA GDGD    'MXCP.ZM.GDGD.ECT.ECBP.EDVALCA.SRT(+1)'    *00132000
//*        EN EL GDGR       'MXCP.ZM.GDGR.ECT.ECBP.EDVALCA(+1)'        *00132100
//**********************************************************************00132200
//PUL05P11 EXEC PGM=ICEGENER,COND=(4,LT)                                00132300
//SYSIN    DD DUMMY                                                     00132400
//SYSPRINT DD SYSOUT=*                                                  00132500
//SYSUT1   DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDVALCA.SRT(+1),DISP=SHR        00132600
//SYSUT2   DD  DSN=MXCP.ZM.GDGR.ECT.ECBP.EDVALCA(+1),
//             DISP=(NEW,CATLG,DELETE),
//             LABEL=(1,SL,,,EXPDT=99000),
//             UNIT=FJVTPH,
//             DCB=(BKUP.MODEL,BLKSIZE=0,DSORG=PS,LRECL=084,RECFM=FB)
//*                                                                     00133100
//**********************************************************************00133200
//*                    -- ICEGENER  --                                 *00133300
//*        RESPALDA GDGD    'MXCP.ZM.GDGD.ECT.ECBP.EDDEPRE.SRT(+1)'    *00133400
//*        EN EL GDGR       'MXCP.ZM.GDGR.ECT.ECBP.EDDEPRE(+1)'        *00133500
//**********************************************************************00133600
//PUL05P10 EXEC PGM=ICEGENER,COND=(4,LT)                                00133700
//SYSIN    DD DUMMY                                                     00133800
//SYSPRINT DD SYSOUT=*                                                  00133900
//SYSUT1   DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDDEPRE.SRT(+1),DISP=SHR        00134000
//SYSUT2   DD  DSN=MXCP.ZM.GDGR.ECT.ECBP.EDDEPRE(+1),
//             DISP=(NEW,CATLG,DELETE),
//             LABEL=(1,SL,,,EXPDT=99000),
//             UNIT=FJVTPH,
//             DCB=(BKUP.MODEL,BLKSIZE=0,DSORG=PS,LRECL=076,RECFM=FB)
//*                                                                     00134500
//**********************************************************************00134600
//*                    -- ICEGENER  --                                 *00134700
//*        RESPALDA GDGD    'MXCP.ZM.GDGD.ECT.ECBP.EDIMPUE.SRT(+1)'    *00134800
//*        EN EL GDGR       'MXCP.ZM.GDGR.ECT.ECBP.EDIMPUE(+1)'        *00134900
//**********************************************************************00135000
//PUL05P09 EXEC PGM=ICEGENER,COND=(4,LT)                                00135100
//SYSIN    DD DUMMY                                                     00135200
//SYSPRINT DD SYSOUT=*                                                  00135300
//SYSUT1   DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDIMPUE.SRT(+1),DISP=SHR        00135400
//SYSUT2   DD  DSN=MXCP.ZM.GDGR.ECT.ECBP.EDIMPUE(+1),
//             DISP=(NEW,CATLG,DELETE),
//             LABEL=(1,SL,,,EXPDT=99000),
//             UNIT=FJVTPH,
//             DCB=(BKUP.MODEL,BLKSIZE=0,DSORG=PS,LRECL=085,RECFM=FB)
//*                                                                     00135900
//**********************************************************************00136000
//*                    -- ICEGENER  --                                 *00136100
//*        RESPALDA GDGD    'MXCP.ZM.GDGD.ECT.ECBP.EDMOVED.SRT(+1)'    *00136200
//*        EN EL GDGR       'MXCP.ZM.GDGR.ECT.ECBP.EDMOVED(+1)'        *00136300
//**********************************************************************00136400
//PUL05P08 EXEC PGM=ICEGENER,COND=(4,LT)                                00136500
//SYSIN    DD DUMMY                                                     00136600
//SYSPRINT DD SYSOUT=*                                                  00136700
//SYSUT1   DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDMOVED.SRT(+1),DISP=SHR        00136800
//SYSUT2   DD  DSN=MXCP.ZM.GDGR.ECT.ECBP.EDMOVED(+1),
//             DISP=(NEW,CATLG,DELETE),
//             LABEL=(1,SL,,,EXPDT=99000),
//             UNIT=FJVTPH,
//             DCB=(BKUP.MODEL,BLKSIZE=0,DSORG=PS,LRECL=109,RECFM=FB)
//*                                                                     00137300
//**********************************************************************00137400
//*                    -- ICEGENER  --                                 *00137500
//*        RESPALDA GDGD    'MXCP.ZM.GDGD.ECT.ECBP.EDSECIN.SRT(+1)'    *00137600
//*        EN EL GDGR       'MXCP.ZM.GDGR.ECT.ECBP.EDSECIN(+1)'        *00137700
//**********************************************************************00137800
//PUL05P07 EXEC PGM=ICEGENER,COND=(4,LT)                                00137900
//SYSIN    DD DUMMY                                                     00138000
//SYSPRINT DD SYSOUT=*                                                  00138100
//SYSUT1   DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDSECIN.SRT(+1),DISP=SHR        00138200
//SYSUT2   DD  DSN=MXCP.ZM.GDGR.ECT.ECBP.EDSECIN(+1),
//             DISP=(NEW,CATLG,DELETE),
//             LABEL=(1,SL,,,EXPDT=99000),
//             UNIT=FJVTPH,
//             DCB=(BKUP.MODEL,BLKSIZE=0,DSORG=PS,LRECL=145,RECFM=FB)
//*                                                                     00138700
//**********************************************************************00138800
//*                    -- ICEGENER  --                                 *00138900
//*        RESPALDA GDGD    'MXCP.ZM.GDGD.ECT.ECBP.EDOPERT1.SRT(+1)'   *00139000
//*        EN EL GDGR       'MXCP.ZM.GDGR.ECT.ECBP.EDOPERT1(+1)'       *00139100
//**********************************************************************00139200
//PUL05P06 EXEC PGM=ICEGENER,COND=(4,LT)                                00139300
//SYSIN    DD DUMMY                                                     00139400
//SYSPRINT DD SYSOUT=*                                                  00139500
//SYSUT1   DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDOPERT1.SRT(+1),DISP=SHR       00139600
//SYSUT2   DD  DSN=MXCP.ZM.GDGR.ECT.ECBP.EDOPERT1(+1),
//             DISP=(NEW,CATLG,DELETE),
//             LABEL=(1,SL,,,EXPDT=99000),
//             UNIT=FJVTPH,
//             DCB=(BKUP.MODEL,BLKSIZE=0,DSORG=PS,LRECL=068,RECFM=FB)
//*                                                                     00140100
//**********************************************************************00140200
//*                    -- ICEGENER  --                                 *00140300
//*        RESPALDA GDGD    'MXCP.ZM.GDGD.ECT.ECBP.EDPARAM.SRT(+1)'    *00140400
//*        EN EL GDGR       'MXCP.ZM.GDGR.ECT.ECBP.EDPARAM(+1)'        *00140500
//**********************************************************************00140600
//PUL05P05 EXEC PGM=ICEGENER,COND=(4,LT)                                00140700
//SYSIN    DD DUMMY                                                     00140800
//SYSPRINT DD SYSOUT=*                                                  00140900
//SYSUT1   DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDPARAM.SRT(+1),DISP=SHR        00141000
//SYSUT2   DD  DSN=MXCP.ZM.GDGR.ECT.ECBP.EDPARAM(+1),
//             DISP=(NEW,CATLG,DELETE),
//             LABEL=(1,SL,,,EXPDT=99000),
//             UNIT=FJVTPH,
//             DCB=(BKUP.MODEL,BLKSIZE=0,DSORG=PS,LRECL=083,RECFM=FB)
//*                                                                     00141500
//**********************************************************************00141600
//*                    -- ICEGENER  --                                 *00141700
//*        RESPALDA ARCHIVO 'MXCP.ZM.GDGD.ECT.E&EMP..EDOSCTA(0)'       *00141800
//*        EN EL GDGR       'MXCP.ZM.GDGR.ECT.E&EMP..EDOSCTA(+1)'      *00141900
//**********************************************************************00142000
//PUL05P04 EXEC PGM=ICEGENER,COND=(4,LT)                                00142100
//SYSIN    DD DUMMY                                                     00142200
//SYSPRINT DD SYSOUT=*                                                  00142300
//SYSUT1   DD DSN=MXCP.ZM.GDGD.ECT.E&EMP..EDOSCTA(0),DISP=SHR           00142400
//SYSUT2   DD  DSN=MXCP.ZM.GDGR.ECT.E&EMP..EDOSCTA(+1),
//             DISP=(NEW,CATLG,DELETE),
//             LABEL=(1,SL,,,EXPDT=99000),
//             UNIT=FJVTPH,
//             DCB=(BKUP.MODEL,BLKSIZE=0,DSORG=PS,LRECL=258,RECFM=FBA)
//*                                                                     00147800
//**********************************************************************00147900
//*        TERMINA PROCESO ZMULPE05 SIVA MULTIEMPRESA                  *00148000
//**********************************************************************00148100
