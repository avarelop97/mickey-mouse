//ZMND2600 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  CONVERSION A COBOL II.                           *
//*                                                                    *
//* OBJETIVO       :  CARGA DE TABLA DE ERRORES QUE VIENE DE ALTAMIRA  *
//*                                                                    *
//* REALIZACION    :  SOFTTEK                         25/MAY/2010.     *
//*                                                                    *
//**********************************************************************
//* PROGRAMA: AMUUMAIN                                                 *
//* OBJETIVO: LOAD REPLACE DE LA TABLA MSGERLAT                        *
//**********************************************************************
//ZLF26P05 EXEC PGM=AMUUMAIN,
//         PARM='MXP1,ZLF26P05,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//ABNLIGNR DD DUMMY
//DSSPRINT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZLF26T05),DISP=SHR
//*
//SYSUT1   DD DSN=SIVA.AJ.FIX.DATA.SYSUT1,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(10,5),RLSE),
//            UNIT=3390
//SORTOUT  DD DSN=SIVA.CB.WKF.UNLOAD.STP1.SORTOUT,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(10,5),RLSE),
//            UNIT=3390
//SYSERR   DD DSN=SIVA.CB.WKF.UNLOAD.STP1.SYSERR,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(10,5),RLSE),
//            UNIT=3390
//SYSREC00 DD DSN=MBVP.AJ.FIX.QGDTERR,DISP=SHR
//*
