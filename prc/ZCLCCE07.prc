//**********************************************************************00010001
//ZCLCCE07  PROC                                                        00020001
//**********************************************************************00030001
//*                                                                    *00040001
//*                   C A S A   D E  B O L S A                         *00050001
//*                   ========================                         *00060001
//*        <<  M E R C A D O   D E   C A P I T A L E S  >>             *00070001
//*                                                                    *00080001
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00090001
//*                                                                    *00100001
//* PROCESO        :  BCLCCE07.                                        *00110001
//*                                                                    *00120001
//* OBJETIVO       :  GENERA REPORTE  MANT. DE CAMBIO DE COMISION.     *00130001
//*                                                                    *00140001
//* CORRE          :  INICIO DE DIA CASA DE BOLSA.                     *00150001
//*                                                                    *00160001
//* ELABORADO POR  :  EDGAR CALVA CEDILLO (INDRA)                      *00170001
//*                                                                    *00180001
//**********************************************************************00190001
//*                      LOG DE MODIFICACIONES                         *00200001
//**********************************************************************00210001
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00220001
//*--------------------------------------------------------------------*00230001
//*      |          |       |        |                                 *00240001
//**********************************************************************00250001
//**********************************************************************00260001
//*                       -- ZM4OJ203 --                               *00270001
//* OBJETIVO : PROGRAMA QUE GENERA UN REPORTE CON LOS MANTENIMIENTOS   *00280001
//*            REALIZADOS EN EL DIA EN LA COMISION.                    *00290001
//*            CASA DE BOLSA.                                          *00300001
//**********************************************************************00310001
//PHC05P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00320001
//PF601765 DD DUMMY                                                     00330001
//*                                                                     00340001
//FDREPCOM DD DSN=MXCP.ZM.FIX.ZM4OJ203.COMISION,                        00350001
//         DISP=(NEW,CATLG,DELETE),                                     00360001
//         DCB=(LRECL=181,BLKSIZE=0,RECFM=FB),                          00370001
//         UNIT=3390,                                                   00380001
//         SPACE=(CYL,(50,10),RLSE)                                     00390001
//SYSTSPRT DD SYSOUT=*                                                  00400001
//SYSPRINT DD SYSOUT=*                                                  00410001
//SYSOUT   DD SYSOUT=*                                                  00420001
//SYSDBOUT DD SYSOUT=*                                                  00430001
//SYSABOUT DD DUMMY                                                     00440001
//SYSUDUMP DD DUMMY                                                     00450001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCM0196),DISP=SHR                   00460001
//*                                                                     00470001
//**********************************************************************00480001
//*            F I N  D E  P R O C E S O  Z C L C C E 0  7             *00490001
//**********************************************************************00500001
