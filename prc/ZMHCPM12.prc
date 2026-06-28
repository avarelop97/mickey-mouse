//**********************************************************************00010000
//ZMHCPM12  PROC                                                        00020002
//**********************************************************************00030000
//*                                                                    *00040000
//*                   C A S A   D E  B O L S A                         *00050000
//*                   ========================                         *00060000
//*                   <<  M E R C A D O   D E   C A P I T A L E S  >>  *00070000
//*                                                                    *00080000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00090000
//*                                                                    *00100000
//* PROCESO        :  ZMHCPM12.                                        *00110002
//*                                                                    *00120000
//* OBJETIVO:      :  GENERA REPORTES MENSUALES DE C/V DE M.CAPITALES  *00130000
//*                   BANCA PATRIMONIAL.                               *00140000
//*                                                                    *00150000
//* CORRE                                                              *00160000
//* ANTES DE       :  NINGUNO.                                         *00170000
//*                                                                    *00180000
//* DESPUES DE     :  DESPUES DEL CIERRE DEFINITIVO DE B. PATRIMONIAL  *00190000
//*                   (18:00 HRS.).                                    *00200000
//*                                                                    *00210000
//* REALIZO        :  H. ABRAHAM JUAREZ PI#ON.                         *00220000
//*                                                                    *00230000
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA DE FORMA MENSUAL.  *00240000
//*                                                                    *00250000
//**********************************************************************00260000
//*                      LOG DE MODIFICACIONES                         *00270000
//**********************************************************************00280000
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00290000
//*--------------------------------------------------------------------*00300000
//*      |          |       |        |                                 *00310000
//**********************************************************************00320000
//*                       -- ZM4DHW66 --                               *00330000
//* OBJETIVO : GENERAR ARCHIVO MENSUAL DE OPERACIONES DE CPA/VTA       *00340000
//*            DE MERCADO DE CAPITALES.(BANCA PATRIMONIAL)             *00350000
//**********************************************************************00360000
//PHC12P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00370002
//PF601765  DD DUMMY                                                    00380000
//*                                                                     00390000
//ZMHW66A1 DD DSN=MXCP.ZM.FIX.ECBP.SZPR.CPVTBPA,                        00400003
//         DISP=(NEW,CATLG,DELETE),                                     00410000
//         DCB=(LRECL=222,BLKSIZE=0,RECFM=FB,DSORG=PS),                 00420001
//         UNIT=3390,                                                   00430000
//         SPACE=(CYL,(4,2),RLSE)                                       00440000
//*                                                                     00450000
//SYSTSPRT DD SYSOUT=*                                                  00460000
//SYSPRINT DD SYSOUT=*                                                  00470000
//SYSOUT   DD SYSOUT=*                                                  00480000
//SYSDBOUT DD SYSOUT=*                                                  00490000
//SYSABOUT DD DUMMY                                                     00500000
//SYSUDUMP DD DUMMY                                                     00510000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC12T01),DISP=SHR                   00520002
//*                                                                     00530000
