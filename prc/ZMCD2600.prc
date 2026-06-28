//ZMCD2600 PROC
//*
//**********************************************************************
//**                                                                   *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  ZMCD2600                                         *
//*                                                                    *
//* OBJETIVO       :  GENERA RESPALDOS DE INFORMACIÓN DEL SIVA    .    *
//*                                                                    *
//* FECHA          :  MAYO DEL 2010                                    *
//*                                                                    *
//* OBSERVACION    :                                                   *
//**                                                                   *
//**********************************************************************
//COPIA1 EXEC PGM=ICEGENER
//PI601765 DD  DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.GDGD.OTR.ARCHUSER(0),DISP=SHR
//SYSUT2   DD DSN=GFPP.CB.FIX.ARCHUSER,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(LRECL=132,BLKSIZE=0,DSORG=PS,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SYSIN    DD DUMMY
//*
//COPIA2 EXEC PGM=ICEGENER,COND=(4,LT)
//PI601765 DD  DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.GDGD.OTR.ARCHPROM(0),DISP=SHR
//SYSUT2   DD DSN=GFPP.CB.FIX.ARCHPROM,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(LRECL=140,BLKSIZE=0,DSORG=PS,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SYSIN    DD DUMMY
//*
//*COPIA3 EXEC PGM=ICEGENER,COND=(4,LT)
//*PI601765 DD  DUMMY
//*SYSPRINT DD SYSOUT=*
//*SYSUT1   DD DSN=MXCP.ZM.GDGD.OTR.ARCHPROM(0),DISP=SHR
//*SYSUT2   DD DSN=GFPP.CB.FIX.ARCHPROM,
//*            DISP=(NEW,CATLG,CATLG),
//*            DCB=(LRECL=140,BLKSIZE=0,DSORG=PS,RECFM=FB),
//*            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*SYSIN    DD DUMMY
//*
//NDMTRANS EXEC  PGM=IOACND,PARM='ADD COND NMUFPD40_IN_CB WDATE',
//             COND=(4,LT)
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
