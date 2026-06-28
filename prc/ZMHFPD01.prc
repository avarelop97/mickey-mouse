//ZMHFPD01  PROC                                                        00010025
//**********************************************************************00020000
//*                                                                    *00030000
//*                   C A S A   D E  B O L S A                         *00031000
//*                   ========================                         *00032000
//*                   <<  C A P I T A L E S  >>                        *00033000
//*                                                                    *00120000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00130000
//*                                                                    *00140000
//* PROCESO        :  ZMHFPD01 GENERA ARCHIVOS PARA TRANSFERENCIA      *00150025
//*                            FIN DE DIA DEL MODULO DE CAPITALES      *00160000
//*                                                                    *00170000
//* OBJETIVO       :  CREA LOS ARCHIVOS PARA LA TRANSFERENCIA.         *00180000
//*                                                                    *00190000
//*                                                                    *00200000
//* CORRE                                                              *00210000
//* ANTES DE       :                                                   *00220025
//*                                                                    *00230000
//* DESPUES DE     :  CBHFND33                                         *00240000
//*                                                                    *00250000
//* PERIODICIDAD   :  DIARIO                                           *00260000
//*                                                                    *00270000
//* ELABORADO POR  :  MARCIAL ROSALES RUIZ                             *00280000
//*                                                                    *00290000
//*                                                                    *00310000
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *00320000
//*                   SIEMPRE DESPUES DE CBHFND33                      *00330000
//*                                                                    *00340025
//**********************************************************************00481000
//*                      LOG DE MODIFICACIONES                         *00482000
//**********************************************************************00483000
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00484000
//*--------------------------------------------------------------------*00485000
//*      |          |       |        |                                 *
//**********************************************************************00487000
//*                                                                    *00488000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00489000
//*  PHF01P05     GRABA EN UN ARCHIVO SECUENCIAL.                      *00489127
//**********************************************************************00489300
//*                     ===   FIN DE DIA    ===                        *00489400
//*                     ===   CAPITALES     ===                        *00489500
//**********************************************************************00489600
//PHF01P05 EXEC PGM=ZM3DG001,                                           00489727
//         PARM=('&EMP','    ','     ','     ')                         00489847
//PI601765  DD DUMMY                                                    00489945
//*                                                                     00490000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..ZMHFPD01,                      00491038
//            DISP=(NEW,CATLG,DELETE),                                  00492000
//            SPACE=(CYL,(4,2),RLSE),                                   00494042
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00493000
//            UNIT=3390
//*                                                                     00496000
//SYSTSPRT DD SYSOUT=*                                                  00497035
//SYSPRINT DD SYSOUT=*                                                  00498035
//SYSOUT   DD SYSOUT=*                                                  00499035
//SYSDBOUT DD SYSOUT=*                                                  00499135
//SYSABOUT DD DUMMY                                                     00499200
//SYSUDUMP DD DUMMY                                                     00499300
//*                                                                     00499400
//**********************************************************************01941040
//* PASO 2                                                             *01950050
//* OBJETIVO : OBTENER EL ARCHIVO COSTO DE OPERACIONES DIARIAS         *01970000
//*            POR CENTRO.                                             *01980000
//*                     -- ZM4DU500 --                                 *01950050
//**********************************************************************02040040
//PHF01P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                02041027
//PI601765 DD DUMMY                                                     02042045
//ZMU500T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ZM4DU500,                      02043001
//         DISP=(NEW,CATLG,DELETE),                                     02044038
//         SPACE=(CYL,(20,10),RLSE),                                    02045001
//         DCB=(DSORG=PS,RECFM=FB,LRECL=295,BLKSIZE=0),                 02100038
//         UNIT=3390                                                    02110038
//SYSTSPRT DD SYSOUT=*                                                  02250038
//SYSPRINT DD SYSOUT=*                                                  02260038
//SYSOUT   DD SYSOUT=*                                                  02270038
//SYSDBOUT DD SYSOUT=*                                                  02280038
//SYSABOUT DD DUMMY                                                     02290000
//SYSUDUMP DD DUMMY                                                     02300000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF01T01),DISP=SHR                   02310041
//*
//**********************************************************************01941040
//* PASO 3                                                             *01950050
//* OBJETIVO : OBTENER EL ARCHIVO VALUACION DEL PORTAFOLIO RTA VAR ACCS*01970000
//*                                                                    *01980000
//*                     -- ZM4DU501 --                                 *01950050
//**********************************************************************02040040
//PHF01P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                02041027
//PI601765 DD DUMMY                                                     02042045
//ZMU501T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ZM4DU501,                      02043001
//         DISP=(NEW,CATLG,DELETE),                                     02044038
//         SPACE=(CYL,(20,10),RLSE),                                    02045001
//         DCB=(DSORG=PS,RECFM=FB,LRECL=194,BLKSIZE=0),                 02100038
//         UNIT=3390                                                    02110038
//SYSTSPRT DD SYSOUT=*                                                  02250038
//SYSPRINT DD SYSOUT=*                                                  02260038
//SYSOUT   DD SYSOUT=*                                                  02270038
//SYSDBOUT DD SYSOUT=*                                                  02280038
//SYSABOUT DD DUMMY                                                     02290000
//SYSUDUMP DD DUMMY                                                     02300000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF01T02),DISP=SHR                   02310041
//*
//*-------------------------------------------------------------------**
//*                                                                    *
//*  PASO:  4     GENERACION DE LOS ARCHIVOS ESTADISTICOS PARA HECTOR  *
//*               LEON.  COSTO DE OPERACION DIARIA POR CENTRO          *
//*                                                                    *
//*JFE    OCTUBRE 2006 SE INCREMENTA LONG. DE ARCHIVO OPEDIA A 324.    *
//*-------------------------------------------------------------------**
//PHF01P02 EXEC PGM=ZM3DU500,COND=(4,LT)                                02041027
//PI601765  DD DUMMY                                                    02042045
//SYSTSPRT DD SYSOUT=*                                                  02043001
//*                                                                     02044038
//ZMU500T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ZM4DU500,DISP=SHR              02045001
//ZMU500T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.OPEDIA,                        02100038
//         DISP=(NEW,CATLG,DELETE),                                     02110038
//         SPACE=(CYL,(20,10),RLSE),                                    02120038
//*        DCB=(DSORG=PS,RECFM=FB,LRECL=318,BLKSIZE=0),                 02141041
//         DCB=(DSORG=PS,RECFM=FB,LRECL=324,BLKSIZE=0),                 02141041
//         UNIT=3390                                                    02151038
//SYSPRINT DD SYSOUT=*                                                  02160043
//SYSOUT   DD SYSOUT=*                                                  02170043
//SYSDBOUT DD SYSOUT=*                                                  02180043
//SYSABOUT DD DUMMY                                                     02190043
//SYSUDUMP DD DUMMY                                                     02201038
//SYSTSIN  DD DUMMY                                                     02210043
//*                                                                     02220043
//*-------------------------------------------------------------------**
//*                                                                    *
//*  PASO:  5     GENERACION DE LOS ARCHIVOS ESTADISTICOS PARA HECTOR  *
//*               LEON.     VALUACION DE PORTAFOLIO                    *
//*                                                                    *
//*-------------------------------------------------------------------**
//PHF01P01 EXEC PGM=ZM3DU501,COND=(4,LT)                                02041027
//PI601765  DD DUMMY                                                    02042045
//SYSTSPRT DD SYSOUT=*                                                  02043001
//*                                                                     02044038
//ZMU501T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ZM4DU501,DISP=SHR              02045001
//ZMU501T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.VALPOR,                        02100038
//         DISP=(NEW,CATLG,DELETE),                                     02110038
//         SPACE=(CYL,(20,10),RLSE),                                    02120038
//         DCB=(DSORG=PS,RECFM=FB,LRECL=222,BLKSIZE=0),                 02141041
//         UNIT=3390                                                    02151038
//SYSPRINT DD SYSOUT=*                                                  02160043
//SYSOUT   DD SYSOUT=*                                                  02170043
//SYSDBOUT DD SYSOUT=*                                                  02180043
//SYSABOUT DD DUMMY                                                     02190043
//SYSUDUMP DD DUMMY                                                     02201038
//SYSTSIN  DD DUMMY                                                     02210043
//*                                                                     02220043
