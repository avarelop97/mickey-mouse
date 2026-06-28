//ZMULPZ21 PROC
//**********************************************************************
//*                                                                    *
//* PROCESO  : ZMULPZ21.                                               *
//*            INTERFAZ FIN DE DIA DE MERCADO DE DINERO                *
//*                                                                    *
//* OBJETIVO : - CORRER LOS PROGRAMAS DE INTERFACES                    *
//*            - PROGRAMAS PARA IMPRIMIR REPORTES ESPECIALES           *
//*            - TRANSFERENCIA DE TABLAS GENERADAS EN LA SIVA38P       *
//*            - TRANSFERENCIA DEL RENGLON DE FOLIOS DE CONTROL        *
//*            - TRANSFERENCIA DE LOS ARCHIVOS DE                      *
//*              COMISIONES VIRTUALES Y DE CIFRAS DE CONTROL           *
//*                                                                    *
//* REALIZO  : TECNOSYS (ING. VICTOR BAEZ PUENTE)    FECHA : 04/DIC/90 *
//*                                                                    *
//**********************************************************************
//*   ACTIVA LA CONDICION EN CONTROLM PARA QUE SE PROCESE LA INTERFAZ  *
//*   DE MERCADO DE DINERO.                                            *
//**********************************************************************
//PASO01   EXEC  PGM=CTMCND,PARM='ADD COND    PIFMDD08_IN     WDATE'
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
