//ZMJLCU01 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  CUSTODIA                                         *
//*                                                                    *
//* PROCESO        :  ZMJLCU01   PROCEDIMIENTO                         *
//*                                                                    *
//* OBJETIVO       :  IMPRESION DE REPORTE DE EFECTIVOS DE CUSTODIA    *
//*                   SOLICITADOS POR EL USUARIO.                      *
//*                                                                    *
//* REALIZO        :  AZERTIA                                          *
//*                                                                    *
//* OBSERVACIONES  :  ESTE PROCESO NO ACTUALIZA NINGUNA TABLA          *
//*                                                                    *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//**********************************************************************
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//*                        RECIBE PARAMETROS
//**********************************************************************
//*
//PJLCUP01 EXEC PGM=ZM3DG001,                                           00290000
//         PARM=('&EMP',' ',' ',' ',)                                   00300000
//PI601765 DD DUMMY                                                     00310000
//SYSTSPRT DD SYSOUT=*                                                  00320000
//SYSPRINT DD SYSOUT=*                                                  00330000
//SYSOUT   DD SYSOUT=*                                                  00340000
//SYSDBOUT DD SYSOUT=*                                                  00350000
//SYSABOUT DD DUMMY                                                     00360000
//SYSUDUMP DD DUMMY                                                     00370000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJLCU01,                      00380000
//            DISP=(NEW,CATLG,DELETE),                                  00390000
//            SPACE=(CYL,(2,1),RLSE),                                   00400000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00410000
//            UNIT=3390                                                 00420000
//*                                                                     00430000
//*---------------------------------------------------------------------01130000
//* PROGRAMA: ZM4DQQ02                                                  01140000
//* OBJETIVO: REPORTE DE EFECTIVOS DE CUSTODIA                          01150000
//*---------------------------------------------------------------------01170000
//PJLCUP02 EXEC PGM=IKJEFT01,COND=(4,LT)                                01190000
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*                                                  01230000
//SYSPRINT DD SYSOUT=*                                                  01240000
//SYSOUT   DD SYSOUT=*                                                  01250000
//ZMQQ02A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJLCU01,DISP=SHR
//ZMQQ02R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01290000
//SYSDBOUT DD SYSOUT=*                                                  01330000
//SYSABOUT DD SYSOUT=*                                                  01340000
//SYSUDUMP DD DUMMY                                                     01350000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJLCUT02),DISP=SHR                   01360000
//*                                                                     01370000
