//ZMHIPD02 PROC                                                         00010000
//**********************************************************************00011000
//*                     C A S A   D E  B O L S A                       *00012000
//*                     ========================                       *00013000
//*                                                                    *00015000
//*                                                                    *00017000
//*   OBJETIVO  :  ACTUALIZA 'P05', FECHA DE OPERACIONES PARA EL       *00018000
//*                INICIO DE DIA , CENTROS DE COSTO DE PROMOTORES      *00019000
//*                REALIZA EL CAMBIO DE CENTRO DE COSTOS, CAMBIO       *00019100
//*                DE CENTRO DE COSTOS PADRE Y MODIFICACION DEL        *00019200
//*                NOMBRE DE CENTRO DE COSTOS.                         *00019300
//*                                                                    *00019400
//*                                                                    *00021000
//**********************************************************************00021100
//*                      LOG DE MODIFICACIONES                         *00021200
//**********************************************************************00021300
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00021400
//*--------------------------------------------------------------------*00021500
//* ACV  |19-JUN-03 |IDCEX30|        |ADECUACION A ESTANDARES DE P.U.  *00021600
//**********************************************************************00021700
//*                                                                     00023501
//**********************************************************************00023540
//* PROGRAMA: ZM3DG001                                                  00311000
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO                  00320000
//*           PARA SIGUIENTES PASOS                                     00322000
//**********************************************************************00323000
//PHI02P05 EXEC PGM=ZM3DG001,                                           00324000
//         PARM=('&EMP',' ',' ',' ',)                                   00325000
//SYSTSPRT DD SYSOUT=*                                                  00329300
//SYSPRINT DD SYSOUT=*                                                  00329400
//SYSOUT   DD SYSOUT=*                                                  00329500
//SYSDBOUT DD SYSOUT=*                                                  00329600
//SYSABOUT DD DUMMY                                                     00329700
//SYSUDUMP DD DUMMY                                                     00329800
//ZMG001A1 DD DSN=MXCP.ZM.TMP.CAP.E&EMP..ZMHIPD02,                      00330100
//            DISP=(NEW,CATLG,DELETE),                                  00330200
//            SPACE=(CYL,(2,1),RLSE),                                   00330300
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00330400
//            UNIT=3390                                                 00330500
//*                                                                     00330700
//**********************************************************************00330800
//* PROGRAMA: ZM4DJ351                                                  00331000
//* OBJETIVO: REALIZA CAMBIOS A LOS CENTROS DE COSTOS DE C.B.           00350000
//*           REALIZA CAMBIOS A LOS CENTRO DE COSTOS PADRE C.B.         00360000
//* ACTUALIZA: CCOSTO , AGPOCOS, AOPECST, ASIGNA , ASOLCST,             00370000
//*            BAJAMES, CTRLIMP, CUENTA , DEMANDA, DEMASAU,             00371000
//*            ECCUECO, EMPLEAD, MOVIND , OPERTET, PROMOT ,             00372000
//*            RAZSCOL, REDAUXI, SUCURSA, USUARIO, CCTONVO,             00373000
//*            NVOCCTO                                                  00374000
//* PASO REINICIABLE POR RESTART                                        00390000
//**********************************************************************00400000
//PHI02P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00410000
//ZMJ351R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00430000
//ZMJ351R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00430100
//ZMJ351R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00430200
//SYSTSPRT DD SYSOUT=*                                                  00430300
//SYSPRINT DD SYSOUT=*                                                  00432000
//SYSOUT   DD SYSOUT=*                                                  00440000
//SYSDBOUT DD SYSOUT=*                                                  00450000
//SYSABOUT DD DUMMY                                                     00460000
//SYSUDUMP DD DUMMY                                                     00470000
//ZMJ351P1 DD DSN=MXCP.ZM.TMP.CAP.E&EMP..ZMHIPD02,DISP=SHR              00472000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI02T01),DISP=SHR                   00480100
//*                                                                     00480200
//**********************************************************************00481000
//* PROGRAMA: ZM4DH515                                                  00482000
//* OBJETIVO: ACTUALIZA 'P05', FECHA DE OPERACIONES PARA INICIO DE DIA  00484000
//* ACTUALIZA: PARAM                                                    00486000
//* PASO REINICIABLE POR RESTART                                        00488000
//**********************************************************************00489000
//PHI02P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00489100
//SYSTSPRT DD SYSOUT=*                                                  00489200
//SYSPRINT DD SYSOUT=*                                                  00489300
//SYSOUT   DD SYSOUT=*                                                  00489400
//SYSDBOUT DD SYSOUT=*                                                  00489500
//SYSABOUT DD DUMMY                                                     00489600
//SYSUDUMP DD DUMMY                                                     00489700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI02T02),DISP=SHR                   00489900
//*                                                                     00490000
//**********************************************************************00491000
//* PROGRAMA: ZM4DGT90                                                  00500000
//* OBJETIVO: ACTUALIZA 'TR6', FECHA DE OPERACIONES PARA INICIO DE DIA  00520000
//* ACTUALIZA: PARAM                                                    00540000
//* PASO REINICIABLE POR RESTART                                        00560000
//**********************************************************************00570000
//PHI02P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00580000
//SYSTSPRT DD SYSOUT=*                                                  00590000
//SYSPRINT DD SYSOUT=*                                                  00600000
//SYSOUT   DD SYSOUT=*                                                  00610000
//SYSDBOUT DD SYSOUT=*                                                  00620000
//SYSABOUT DD DUMMY                                                     00630000
//SYSUDUMP DD DUMMY                                                     00640000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI02T03),DISP=SHR                   00650100
//*                                                                     00651000
//**********************************************************************00660000
//* PROGRAMA: ZM4DGU45                                                  00670000
//* OBJETIVO: ACTUALIZA ICCOSTO POR PROMOTOR Y TABLAS ASOCIADAS         00690000
//*           A PARTIR DE LOS DATOS DE LA PARAM 'TT8'                   00700000
//* ACTUALIZA: ASIGNA,  BAJAMES, BAJAFIS, CUENTA,  DEMANDA,             00720000
//*            DEMASAU, OPERTET, OPERTES, PROMOT,  USUARIO,             00730000
//*            MOVIND,  REDAUXI, CTRLIMP, DIAGNOS, PROSPEC              00740000
//* PASO REINICIABLE POR RESTART                                        00760000
//**********************************************************************00770000
//PHI02P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780000
//SYSTSPRT DD SYSOUT=*                                                  00790000
//SYSPRINT DD SYSOUT=*                                                  00800000
//SYSOUT   DD SYSOUT=*                                                  00810000
//SYSDBOUT DD SYSOUT=*                                                  00820000
//SYSABOUT DD DUMMY                                                     00830000
//SYSUDUMP DD DUMMY                                                     00840000
//ZMGU45P1 DD DSN=MXCP.ZM.TMP.CAP.E&EMP..ZMHIPD02,DISP=SHR              00842000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI02T04),DISP=SHR                   00860000
//*                                                                     00870000
