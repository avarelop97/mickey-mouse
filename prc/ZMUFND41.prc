//ZMUFND41 PROC
//**********************************************************************
//**                                                                   *
//* SISTEMA        :  SIVA.                                            *
//*                                                                    *
//* PROCESO        :  ZMUFND41                                         *
//*                                                                    *
//* OBJETIVO       :  GENERA TENENCIA PARTIENDO DEL ARCHIVO CONCILIA   *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  N/A                                              *
//*                                                                    *
//* DESPUES DE     :  N/A                                              *
//*                                                                    *
//* REALIZACION    :  SOFTTEK (MABO1)                 03/MAY/2010      *
//*                                                                    *
//* OBSERVACION    :  NINGUNA                                          *
//*                                                                    *
//**********************************************************************
//* PASO    : ZLF41T15                                                 *
//* PROGRAMA: ZM4DL066                                                 *
//* OBJETIVO: EXTRAE TENENCIA                                          *
//**********************************************************************
//ZLF41T15 EXEC PGM=IKJEFT01
//ZM4D66T1 DD DSN=SIVA.SIE.FIX.VIBB80D.CONCILIA,
//            DISP=SHR
//ZM4D66T2 DD DSN=SIVA.SIE.FIX.ZM4D66D.CONCILIA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=606,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(100,20),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF41T15),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF41T10                                                 *
//* PROGRAMA: SORT                                                     *
//* OBJETIVO: ELIMINA DINERO FRESCO                                    *
//**********************************************************************
//ZLF41T10 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=SIVA.SIE.FIX.ZM4D66D.CONCILIA,
//            DISP=SHR
//SORTOUT  DD DSN=SIVA.SIE.FIX.ZM4D66D.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=606,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF41T10),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF41T05                                                 *
//* PROGRAMA: ZM4DL065                                                 *
//* OBJETIVO: EXTRAE TENENCIA                                          *
//**********************************************************************
//ZLF41T05 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4D65T1 DD DSN=SIVA.SIE.FIX.ZM4D66D.SORT,
//            DISP=SHR
//ZM4D65T2 DD DSN=SIVA.SIE.FIX.RIB065D.TEN1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=57,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(30,15),RLSE)
//ZM4D65T3 DD DSN=SIVA.SIE.FIX.RIB065D.TEN2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=65,RECFM=FB,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(30,15),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF41T05),DISP=SHR
//*
