//ZMUFPM01 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.).          *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPM01                                         *00060002
//*                                                                    *
//* DISPARADOR     :  CBUFNM01                                         *00080002
//*                                                                    *00080002
//* OBJETIVO       :  REPORTES MENSUALES DE CONTABILIDAD.              *00090002
//*                                                                    *00100002
//* CORRE EN       :  INICIO DE DIA EL ULTIMO DIA HABIL                *00120002
//*                                                                    *00130002
//* DESPUES DE     :  CBJFNDS8                                         *00140002
//*                                                                    *00150002
//* REALIZACION    :  OSCAR URBANO FERNANDEZ   MARZO 2008.             *00160002
//*                                                                    *00170002
//* OBSERVACION    :  ESTE PRECESO CORRE EL                            *00180002
//*                   ULTIMO DIA HABIL DEL MES.                        *00220002
//**********************************************************************00003000
//**********************************************************************00779900
//*                          === ZM4EU004 ===                          *00780000
//*                                                                    *00780100
//* OBJETIVO : REPORTE DE INVERSIONISTAS CNV M20                       *00780200
//*                                                                    *00780400
//* PASO REINICIABLE POR RESTART.                                      *00780500
//**********************************************************************00780600
//PUF01P02 EXEC PGM=IKJEFT01                                            00780700
//ZM4EU4R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00780800
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMU01T02),DISP=SHR                   00781500
//**********************************************************************00779900
//*                          === ZM4EU003 ===                          *00780000
//*                                                                    *00780100
//* OBJETIVO : REPORTE DE TOTAL DE CLIENTES POR CLASIFICACION          *00780200
//*                                                                    *00780400
//* PASO REINICIABLE POR RESTART.                                      *00780500
//**********************************************************************00780600
//PUF01P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZMUG44R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00780800
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMU01T01),DISP=SHR                   00781500
