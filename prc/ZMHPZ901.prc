//ZMHPZ901 PROC                                                         00010000
//*                                                                     00020100
//**********************************************************************00021000
//*                                                                    *00022000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00023000
//*                   CAPITALES                                        *00024000
//*                                                                    *00025000
//* PROCESO        :  ZMHPZ901                                         *00026000
//*                                                                    *00027000
//* OBJETIVO       :  GENERA REPORTE DE HECHOS OPERADOS DURANTE EL DIA.A00028000
//*                                                                   C*00029000
//* CORRE                                                              *00029100
//* ANTES DE       :  XXXXXXXX                                         *00029200
//*                                                                   C*00029300
//* A PARTIR DE    : XX:XX HRS.                                        *00029400
//* HASTA          : XX:XX HSR.                                        *00029500
//*                                                                    *00029600
//* REALIZO        :  AZERTIA(F.V.C.)                                  *00029700
//* FECHA          :  MARZO 2005.                                      *00029800
//*                                                                    *00029900
//* OBSERVACION    :  ESTE PROC. SE EJECUTA A PETICION DEL USUARIO.    *00030000
//*                                                                    *00030100
//********************************************************************* 00032600
//*                                                                   * 00032700
//*  PASO: 03    GENERA REPORTE DE HECHOS REALIZADOS.                 * 00032800
//*                                                                   * 00033000
//*  SECUENCIA: 2                                           ZM4DH473  * 00033100
//*                                                                   * 00033200
//********************************************************************* 00033300
//PHC01P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00090000
//*                                                                     00090100
//ZMG001A1 DD DSN=MXCP.ZM.WKF.EMP.SUC.PATR,DISP=SHR                     00091001
//*                                                                     00100000
//VIB473R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00110000
//*                                                                     00110400
//VIB473T1 DD DSN=MXCP.ZM.WKF.EMP.SUC.ZMHPZ901,                         00130002
//            DISP=(NEW,CATLG,DELETE),                                  00131002
//            DCB=(LRECL=070,RECFM=FB,BLKSIZE=0,DSORG=PS),              00132000
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00133000
//*                                                                     00171000
//SYSTSPRT DD SYSOUT=*                                                  00200000
//SYSPRINT DD SYSOUT=*                                                  00210000
//SYSOUT   DD SYSOUT=*                                                  00220000
//SYSDBOUT DD SYSOUT=*                                                  00230000
//SYSABOUT DD DUMMY                                                     00240000
//SYSUDUMP DD DUMMY                                                     00250000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHC01P03),DISP=SHR                   00260000
//*                                                                     00260100
//**********************************************************************00640000
//*        TERMINA PROCESO ZMHPZ901 SIVA MULTIEMPRESA                  *00650000
//**********************************************************************00660000
