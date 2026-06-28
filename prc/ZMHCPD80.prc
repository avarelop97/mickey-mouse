//ZMHCPD80 PROC                                                         00010000
//**********************************************************************
//* SISTEMA        :  SOCIEDADES DE INVERSION                          *
//* PROCESO        :  PINSID26   (DISPARADOR).                         *
//*                   SID2600    PROCEDIMIENTO                         *
//* OBJETIVO       :  GENERA UNA VERSION FINAL DEL SISAPR              *
//*                   DISCRIMINANDO LOS FONDOS OPERADOS EN DECALOG     *
//*                         S   I   S   A   S   I                      *
//*                                                                    *
//* REALIZO        :  EVERIS .                                         *
//**********************************************************************
//**********************************************************************
//* OBJETIVO : REALIZA COPIA DE SEGURIDAD DEL ARCHIVO SISASI           *
//*            SIN FILTRAR FONDOS DECALOG                              *
//**********************************************************************
//PHC80P03 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=SIVA.SIN.FIX.SISASI,
//             DISP=SHR
//SORTOUT  DD DSN=SIVA.SIN.FIX.SISASICS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,200),RLSE),
//            DCB=(LRECL=248,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC03T50),DISP=SHR
//*SYSIN    DD DSN=ZIVA.ZMEA.CONTROL(ZHC03T50),DISP=SHR
//**********************************************************************
//**********************************************************************
//* OBJETIVO : ELIMINA EL ARCHIVO SISAPR EXISTENTE                     *
//**********************************************************************
//PHC80P02 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSOUT   DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHC02T50),DISP=SHR
//*SYSIN    DD  DSN=ZIVA.ZMEA.CONTROL(ZHC02T50),DISP=SHR
//**********************************************************************
//**********************************************************************
//* OBJETIVO : GENERA ARCHIVO SISAPR FILTRADO POR LOS FONDOS DECALOG   *
//**********************************************************************
//PHC80P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMTSISAP DD DSN=SIVA.SIN.FIX.SISASICS,DISP=SHR
//ZMTSISA1 DD DSN=SIVA.SIN.FIX.SISASI,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,200),RLSE),
//            DCB=(LRECL=248,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//ZMTSISA2 DD DSN=SIVA.SIN.FIX.SISASI.NOTRSISA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,200),RLSE),
//            DCB=(LRECL=248,BLKSIZE=0,RECFM=FB),
//            UNIT=3390
//ZMTREPOR DD DSN=SIVA.SIN.FIX.SISASI.REPODECA,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=136,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(5,10),RLSE)
//*
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD SYSOUT=X
//SYSUDUMP DD SYSOUT=X
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHC01T50),DISP=SHR
//*SYSTSIN  DD  DSN=ZIVA.ZMEA.CONTROL(ZHC01T50),DISP=SHR
