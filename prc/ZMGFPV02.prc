//ZMGFPV02 PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00021000
//*                     C A S A   D E  B O L S A                       *00022000
//*                     ========================                       *00023000
//*                    <<SOCIEDADES DE INVERSION>>                     *00024000
//*                                                                    *00025000
//*   APLICACION      :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00026000
//*                                                                    *00027000
//*   OBJETIVO        :  ATUALIZA LA TABLA DE OPERINU                  *00028000
//*                                                                    *00029200
//*   CORRE ANTES DE  :  NINGUNO                                       *00029300
//*                                                                    *00029400
//*   CORRE DESPUES DE:  NINGUNO                                       *00029500
//*                                                                    *00029700
//*   PERIODICIDAD    :  CORRE POR UNICA VEZ                           *00029801
//*                                                                    *00030100
//**********************************************************************00030200
//*                      LOG DE MODIFICACIONES                         *00030300
//**********************************************************************00030400
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00030500
//*--------------------------------------------------------------------*00030600
//*      |          |       |        |                                 *00030700
//**********************************************************************00030800
//**********************************************************************00034503
//*                        RECIBE PARAMETROS                            00034603
//**********************************************************************00034703
//PGF02P02 EXEC PGM=ZM3DG001,                                           00034803
//         PARM=('&EMP',' ',' ',' ',)                                   00034903
//PI601765 DD DUMMY                                                     00035003
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00035103
//SYSPRINT DD SYSOUT=*                                                  00035203
//SYSOUT   DD SYSOUT=*                                                  00035303
//SYSDBOUT DD SYSOUT=*                                                  00035403
//SYSABOUT DD DUMMY                                                     00035503
//SYSUDUMP DD DUMMY                                                     00035603
//ZMG001A1 DD DSN=MXCP.ZM.TMP.OTR.E&EMP..ZMGFPV02,                      00035704
//           DISP=(NEW,CATLG,DELETE),                                   00035803
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),                00035903
//           UNIT=3390,                                                 00036003
//           SPACE=(CYL,(2,1),RLSE)                                     00036103
//*                                                                     00036203
//**********************************************************************00036300
//*                       -- ZM4VG003 --                               *00036401
//*                                                                    *00036500
//* OBJETIVO :   ACTUALIZACION DEL REGISTRO DE OPERACIONES INUSUALES   *00036600
//*                                                                    *00036700
//* ACTUALIZA :  OPERINU                                               *00036800
//*                                                                    *00036900
//* PASO REINICIABLE POR RESTART                                       *00037000
//**********************************************************************00037100
//PGF02P01 EXEC PGM=IKJEFT01                                            00037200
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00038000
//SYSPRINT DD  SYSOUT=*                                                 00039000
//SYSOUT   DD  SYSOUT=*                                                 00039100
//SYSDBOUT DD  SYSOUT=*                                                 00039200
//SYSABOUT DD  DUMMY                                                    00039300
//SYSUDUMP DD  DUMMY                                                    00039400
//ZM4VG0P1 DD  DSN=MXCP.ZM.TMP.OTR.E&EMP..ZMGFPV02,                     00039505
//         DISP=SHR                                                     00039603
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF02T02),DISP=SHR                   00039702
