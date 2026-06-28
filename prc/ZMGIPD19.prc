//ZMGIPD19 PROC
//**********************************************************************
//*                                                                    *
//*                                                                    *
//* SISTEMA        :  SIVA                                             *
//*                                                                    *
//* PROCESO        :  BCJICD19                                         *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  COPIAR ARCHIVO ALTAMIRA CON ESTANDARES ZM        *
//*                   AGREGAR CONDICION PARA SIGUIENTE PROCESO         *
//* CORRE                                                              *
//* ANTES DE       :  BCJICD10 (VENCIMIENTOS DE PLAZOS)                *
//*                                                                    *
//* DESPUES DE     :  BGJC1500 (INTERFAZ DE VENCIMIENTOS)              *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//* SISTEMA  :SISTEMA MUV                                              *
//* PROCESO  :BCJICD19                                                 *
//* OBJETIVO :COPIA ARCHIVO DE ALTAMIRA A ESTANDARES SIVA/MUV          *
//* REALIZO:                                HITSS                      *
//* FECHA:   24/SEP/2015                                               *
//**********************************************************************
//*
//PGI19P02 EXEC PGM=ICEGENER
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MBVP.BG.FIX.F&FECHA..BGJC7500.INTERVTO.MUV,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.TES.PZOBGVEN.F&FECHA,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(LRECL=171,BLKSIZE=0,DSORG=PS,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SYSIN    DD DUMMY
//**********************************************************************
//* SISTEMA  :SISTEMA MUV                                              *
//* PROCESO  :BCJICD19                                                 *
//* OBJETIVO :AGREGA CONDICION PARA EJECUCION SIGUIENTE PROCESO        *
//* REALIZO:                                HITSS                      *
//* FECHA:   24/SEP/2015                                               *
//**********************************************************************
//PGI19P01 EXEC PGM=CTMCND,PARM='ADD COND BCJICD10_IN_OK WDATE',
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
