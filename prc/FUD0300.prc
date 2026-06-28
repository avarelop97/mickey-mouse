//FUD0300 PROC                                                          00001000
//*                                                                     00002000
//**********************************************************************00029600
//*                                                                    *00029700
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00029800
//*                                                                    *00029900
//* PROCESO        :  PCIMDD34                                         *00030000
//*                   FUTUROS DE TASAS E INDICES.                      *00030100
//*                                                                    *00030200
//* OBJETIVO       :  GENERAR ARCHIVOS DE TASAS E INDICES PARA         *00030300
//*                   BANCO DE MEXICO.                                 *00030300
//*                                                                    *00030500
//* DESPUES DE     :  PAAMDD07                                         *00031400
//*                                                                    *00031500
//* REALIZO        :  RZV                                              *00031600
//* FECHA          :  MAYO 1996.                                       *00031700
//*                                                                    *00031800
//**********************************************************************00032400
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :      GENERAR CARTAS CONFIRMACION DE INDICES       *00030300
//**********************************************************************00080001
//FUD0304 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M           00070000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=X                                                  00240000
//SYSOUT   DD SYSOUT=X                                                  00250000
//SYSDBOUT DD SYSOUT=X                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=SIVA.CARDS(FUD0304),DISP=SHR                          00210002
//CIB128R1 DD SYSOUT=(V,,TK45)                                          00140027
//*                                                                     00181000
//**********************************************************************00032400
//* OBJETIVO       :      GENERAR CARTAS CONFIRMACION DE TASAS         *00030300
//**********************************************************************00080001
//FUD0303 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M           00070000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=X                                                  00240000
//SYSOUT   DD SYSOUT=X                                                  00250000
//SYSDBOUT DD SYSOUT=X                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=SIVA.CARDS(FUD0303),DISP=SHR                          00210002
//CIB124R1 DD SYSOUT=(V,,TK44)                                          00140027
//*                                                                     00181000
//**********************************************************************00032400
//* OBJETIVO       :      BORRAR ARCHIVO DE INDICES                    *00030300
//**********************************************************************00080001
//FUD0302 EXEC PGM=IDCAMS,COND=(0,NE)                                   00070000
//SYSIN    DD  DSN=SIVA.CARDS(FUD0302),DISP=SHR                         00210002
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=X                                                  00240000
//SYSOUT   DD SYSOUT=X                                                  00250000
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :      CREAR LOS ARCHIVOS DE TASAS E INDICES        *00030300
//**********************************************************************00080001
//FUD0301 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,          00070000
//        PARM='/DEBUG',TIME=100                                        00090000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=X                                                  00240000
//SYSOUT   DD SYSOUT=X                                                  00250000
//SYSDBOUT DD SYSOUT=X                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0301),DISP=SHR                         00210002
//COB156A1 DD DSN=SIVA.OTR.WKF.FUTUROS.TASAS,                           00140027
//           DISP=(NEW,CATLG,DELETE),                                   00151028
//           DCB=(DSORG=PS,LRECL=117,RECFM=FB,BLKSIZE=0),               00160026
//           UNIT=SYSDA,                                                00170028
//           SPACE=(CYL,(10,5),RLSE)                                    00180028
//*                                                                     00181000
//COB156A2 DD DSN=SIVA.OTR.WKF.FUTUROS.INDICES,                         00140027
//           DISP=(NEW,CATLG,DELETE),                                   00151028
//           DCB=(DSORG=PS,LRECL=117,RECFM=FB,BLKSIZE=0),               00160026
//           UNIT=SYSDA,                                                00170028
//           SPACE=(CYL,(10,5),RLSE)                                    00180028
//*                                                                     00181000
