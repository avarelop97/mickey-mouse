//ZMHCPD49 PROC
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  VOBO PROC. BLOQUES                               *
//*                                                                    *
//* OBJETIVO       :  DAR DE ALTA LA CONDICION PARA QUE SE EJECUTE     *
//*                   POR CONTROL-M EL CIERE DE CAPITALES A PARTIR DEL *
//*                   PROCESO CBHCND05                                 *
//* CORRE                                                              *
//* ANTES DE       :  CBHCND05 (CIERRE DE CAPITALES 2A. PARTE)         *
//*                                                                    *
//* DESPUES DE     :  CBHCND41 AL 48 (PROCESO BLOQUES)                 *
//**********************************************************************
//*   ACTIVA LA CONDICION EN CONTROLM QUE CERRO EL MODULO CAPITALES    *
//**********************************************************************
//PHC49P01 EXEC  PGM=CTMCND,PARM='ADD COND     CBHCND49_OK    WDATE'
//*
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=*
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=*
//DACNDIN  DD   DDNAME=SYSIN
//*
