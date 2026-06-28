//ZMGIPD20 PROC
//**********************************************************************
//*                                                                    *
//*                                                                    *
//* SISTEMA        :  SIVA                                             *
//*                                                                    *
//* PROCESO        :  BCJICD20                                         *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  COPIAR ARCHIVO ALTAMIRA CON ESTANDARES ZM        *
//*                   AGREGAR CONDICION PARA SIGUIENTE PROCESO         *
//* CORRE                                                              *
//* ANTES DE       :  BCJICD11 (CARGA CUPONES CEDES)                   *
//*                                                                    *
//* DESPUES DE     :  BGJC1355 (INTERFAZ DE TASAS CEDES )              *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//* SISTEMA  :SISTEMA MUV                                              *
//* PROCESO  :BCJICD20                                                 *
//* OBJETIVO :COPIA ARCHIVO DE ALTAMIRA A ESTANDARES SIVA/MUV          *
//* REALIZO:                                HITSS                      *
//* FECHA:   24/SEP/2015                                               *
//**********************************************************************
//*
//PGI20P02 EXEC PGM=ICEGENER
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MBVP.BG.FIX.F&FECHA..BGJC1355.INTERTAS.MUV,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.TES.PZOBGCUP.F&FECHA,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(LRECL=327,BLKSIZE=0,DSORG=PS,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SYSIN    DD DUMMY
//**********************************************************************
//* SISTEMA  :SISTEMA MUV                                              *
//* PROCESO  :BCJICD20                                                 *
//* OBJETIVO :AGREGA CONDICION PARA EJECUCION SIGUIENTE PROCESO        *
//* REALIZO:                                HITSS                      *
//* FECHA:   24/SEP/2015                                               *
//**********************************************************************
//PGI20P01 EXEC PGM=CTMCND,PARM='ADD COND BCJICD11_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD   DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD,DISP=SHR
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//PRTDBG   DD   SYSOUT=*
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=*
//DACNDIN  DD   DDNAME=SYSIN
