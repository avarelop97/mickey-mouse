//ZMVEND08 PROC                                                         00010002
//**********************************************************************00160001
//*                                                                    *00170001
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *00180001
//* PROCESO        :  CBJFCD12/CBVEND08                                *00190001
//*                                                                    *00200001
//* OBJETIVO       :  INTERFASE DE FINDIA TESORERIA                    *00210001
//*                                                                    *00220001
//* CORRE                                                              *00230001
//* ANTES DE       :  EVENTUAL                                         *00240001
//*                                                                    *00250001
//* DESPUES DE     :  EVENTUAL                                         *00260001
//*                                                                    *00270001
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *00280001
//* FECHA          :  MAYO 2006                                        *00290001
//*                                                                    *00300001
//* OBSERVACION    :  ESTE PROCESO CORRE EVENTUAL UNICA VEZ            *00310001
//*                                                                    *00320001
//**********************************************************************00340002
//*                                                                    *00340103
//**********************************************************************00342003
//* PROGRAMA: ZM3DG001                                                 *00350003
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO                 *00360003
//*           PARA SIGUIENTES PASOS                                    *00370003
//**********************************************************************00380002
//PJF12P10 EXEC PGM=ZM3DG001,                                           00390002
//         PARM=('&EMP','&SUC','     ','     ',)                        00400002
//ZMG001A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD12,                      00410002
//            DISP=(NEW,CATLG,DELETE),                                  00420002
//            SPACE=(CYL,(02,01),RLSE),                                 00430002
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00440002
//            UNIT=3390                                                 00450003
//SYSTSPRT DD SYSOUT=*                                                  00470002
//SYSPRINT DD SYSOUT=*                                                  00480002
//SYSOUT   DD SYSOUT=*                                                  00490002
//SYSDBOUT DD SYSOUT=*                                                  00500002
//SYSABOUT DD DUMMY                                                     00510002
//SYSUDUMP DD DUMMY                                                     00520002
//**********************************************************************00521003
//* PROGRAMA: ZM4MGF51                                                 *00540003
//* OBJETIVO: GENERAR REPORTE DE CANCELACION DE SOLICITUDES DE SALDO   *00550003
//*           DEUDOR RECHAZADAS POR TESORERIA.                         *00560003
//*           **** NO ACTUALIZA **** TESO.                             *00570003
//* << PASO REINICIABLE POR RESTART >>                                 *00580003
//**********************************************************************00581003
//PJF12P08 EXEC PGM=IKJEFT01,COND=(4,LT)                                00600002
//ZMGF51A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD12,DISP=SHR              00610002
//ZMGF51R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00620002
//SYSTSPRT DD SYSOUT=*                                                  00630002
//SYSPRINT DD SYSOUT=*                                                  00640002
//SYSOUT   DD SYSOUT=*                                                  00650002
//SYSDBOUT DD SYSOUT=*                                                  00660002
//SYSABOUT DD DUMMY                                                     00670002
//SYSUDUMP DD DUMMY                                                     00680002
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF12T02),DISP=SHR                   00690002
//**********************************************************************00691003
//* PROGRAMA: ZM4DH181                                                 *00710003
//* OBJETIVO: GENERAR REPORTE DE OPERACIONES REALIZADAS DURANTE EL     *00720003
//*           DIA CON CIFRAS POR SUCURSAL Y EMISORA.                   *00730003
//*               **** NO ACTUALIZA **** SOC.INV.                      *00740003
//*             << PASO REINICIABLE POR RESTART >>                     *00750003
//**********************************************************************00761003
//PJF12P07 EXEC PGM=IKJEFT01,COND=(4,LT)                                00770002
//ZMH181A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD12,DISP=SHR              00780002
//ZMH181R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00790002
//ZMH181R3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00800002
//SYSTSPRT DD SYSOUT=*                                                  00810002
//SYSPRINT DD SYSOUT=*                                                  00820002
//SYSOUT   DD SYSOUT=*                                                  00830002
//SYSDBOUT DD SYSOUT=*                                                  00840002
//SYSABOUT DD DUMMY                                                     00850002
//SYSUDUMP DD DUMMY                                                     00860002
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF12T03),DISP=SHR                   00870002
//**********************************************************************00871003
//* PROGRAMA: ZM4DJ182                                                 *00890003
//* OBJETIVO: GENERAR REPORTE DE OPERACIONES REALIZADAS DURANTE EL     *00900003
//*           DIA CON CIFRAS POR DIRECCION Y EMISORA.                  *00910003
//*           **** NO ACTUALIZA **** SOC.INV.                          *00920003
//* << PASO REINICIABLE POR RESTART >>                                 *00930003
//**********************************************************************00931003
//PJF12P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00950002
//ZMJ182A1 DD DSN=MXCP.ZM.TMP.SIN.E&EMP..ZMJFPD12,DISP=SHR              00960002
//ZMJ182R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00970002
//SYSTSPRT DD SYSOUT=*                                                  00980002
//SYSPRINT DD SYSOUT=*                                                  00990002
//SYSOUT   DD SYSOUT=*                                                  01000002
//SYSDBOUT DD SYSOUT=*                                                  01010002
//SYSABOUT DD DUMMY                                                     01020002
//SYSUDUMP DD DUMMY                                                     01030002
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF12T04),DISP=SHR                   01040002
