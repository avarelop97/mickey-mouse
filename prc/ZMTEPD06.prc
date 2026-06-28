//ZMTEPD06 PROC
//**********************************************************************
//* SISTEMA        :  MODULO UNICO DE VALORES  (M.U.V.)                *
//*                                                                    *
//* JCL DISPARADOR :  BCTEND06                                         *
//*                                                                    *
//* OBJETIVO       :  FORMATEA LOS ARCHIVOS DE CONSTANCIAS             *
//*                   ADMINISTRATIVOS Y DIVIDENDOS.                    *
//*                                                                    *
//**********************************************************************
//*                         * ZM4CONS2 *                               *
//* OBJETIVO: FORMATEA EL ARCHIVO DE DIVIDENDOS.                       *
//* REINICIABLE POR RESTART'S                                          *
//**********************************************************************
//ZMD06P04 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMCONS2E DD DSN=MXC&AMB..ZM.FIX.CONSTAN.DIVIDEND,DISP=SHR
//*
//*---- ARCHIVOS SALIDA
//ZMCONS2S DD DSN=MXC&AMB..AJ.FIX.SATDIVID.CONSTA2,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=259,RECFM=FB,BLKSIZE=0),
//*           DCB=(DSORG=PS,LRECL=175,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZTEND502),DISP=SHR
//*
//**********************************************************************
//*                         * ZM4CONS1 *                               *
//* OBJETIVO: FORMATEA EL ARCHIVO DE ADMINISTRATIVO.                   *
//* REINICIABLE POR RESTART'S                                          *
//**********************************************************************
//ZMD06P03 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMCONS1E DD DSN=MXC&AMB..ZM.FIX.CONSTAN.ADMITIVO,DISP=SHR
//*
//*---- ARCHIVOS SALIDA
//ZMCONS1S DD DSN=MXC&AMB..AJ.FIX.SATADMON.CONSTA1,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=2467,RECFM=FB,BLKSIZE=0),
//*           DCB=(DSORG=PS,LRECL=2395,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZTEND501),DISP=SHR
//*
//**********************************************************************
//*                         * ZM4CONS0 *                               *
//* OBJETIVO: FORMATEA EL ARCHIVO DE CAPITALES.                        *
//* REINICIABLE POR RESTART'S                                          *
//**********************************************************************
//ZMD06P02 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMCONS0E DD DSN=MXC&AMB..ZM.FIX.CONSTAN.CAPITALE,DISP=SHR
//*
//*---- ARCHIVOS SALIDA
//ZMCONS0S DD DSN=MXC&AMB..AJ.FIX.SATACAPI.CONSTA3,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//*FSW-1      DCB=(DSORG=PS,LRECL=380,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=386,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZTEND500),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA:                                                          *
//* OBJETIVO: ADICIONA CONDICION PARA QUE SE DISPARE EL  PROCESO       *
//*           BCJIND01 PARA SOBRE ESCRIBIR CONSTANCIAS SAT.            *
//**********************************************************************
//* PRENDE CONDICION EN CONTROL-M DE PU PARA QUE SE EJECUTE            *
//* PROCESO DE AJENOS                                                  *
//**********************************************************************
//ZMD06P01 EXEC PGM=IOACND,
//**       PARM='ADD COND BCJIND06_OK WDATE',COND=(4,LT)
//         PARM='ADD COND BCJIND06_OK &FECH1',COND=(4,LT)
//       INCLUDE MEMBER=IOASET
//       INCLUDE MEMBER=IOAENV
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
//**************************  FIN ZMTEPD06  ****************************
