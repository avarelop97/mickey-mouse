//ZMLLPZ18  PROC
//**********************************************************************00029600
//*                                                                    *00029700
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00029800
//*                                                                    *00029900
//* PROCESO        :  ZMLLPZ18                                         *00030000
//*                   PROCESO SUBMITIDO DESDE LA OPCION 936 SIVA       *00030100
//*                                                                    *00030200
//* OBJETIVO       :  GENERAR REPORTE DE ACUMULADO DE COMISIONES       *00030300
//*                                                                    *00030500
//* CORRE                                                              *00030900
//* ANTES DE       :  NINGUNO                                          *00031000
//*                                                                    *00031300
//* DESPUES DE     :  NINGUNO                                          *00031400
//*                                                                    *00031500
//* REALIZO        :  JLGO                                             *00031600
//* FECHA          :  JUNIO  2003                                      *00031700
//*                                                                    *00031800
//**********************************************************************00032400
//*                                                                     00310000
//**********************************************************************
//*                                                                    *
//* OBJETIVO : EJECUTA REPORTES PARA EL AREA DE MERCADO DE DINERO      *
//*                                                                    *
//**********************************************************************
//*
//********************************************************************* 00040000
//*  REPORTE DE ACUMULADO DE COMISIONES ZM4MLN05                      * 00050000
//********************************************************************* 00060000
//*
//PLL18P02 EXEC PGM=IKJEFT01                                            00070000
//*
//ZMLN05A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE18,DISP=SHR
//*
//ZMLN05R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL18T02),DISP=SHR                   00300000
//*                                                                     00310000
