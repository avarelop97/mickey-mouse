//ZMUEPRPB PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPRPB                                            *
//*                                                                    *
//*   OBJETIVO  :  RESPALDA ARCHIVOS DE ESTADOS DE CUENTA EN GDG'S     *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  CBUENM31                                      *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//**********************************************************************
//*
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//* FS-1.0.0-03  XMBB118 13JUL12  SE AGREGRAN LOS PASOS PUERCB11 AL    *
//*                               AL PUERCB02                          *
//**********************************************************************
//*
//*FS-1.0.0-03-INI
//**********************************************************************
//*  RESPALDA GDGD    'MXCP.ZM.GDGD.ECT.ECBP.EDCUENTA.SRT(0)'          *
//*  EN EL GDGR       'MXCP.ZM.GDGR.ECT.ECBP.EDCUENTA(+1)              *
//**********************************************************************
//PUERCB11 EXEC PGM=ICEGENER
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDCUENTA.SRT(0),DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGR.ECT.ECBP.EDCUENTA(+1),
//            DISP=(NEW,CATLG,DELETE),
//            LABEL=(1,SL,,,EXPDT=99000),UNIT=FJVTPH,
//            DCB=(BKUP.MODEL,BLKSIZE=0,DSORG=PS,LRECL=540,RECFM=FB)
//*
//**********************************************************************
//*  RESPALDA GDGD    'MXCP.ZM.GDGD.ECT.ECBP.EDVALCA.SRT(0)'           *
//*  EN EL GDGR       'MXCP.ZM.GDGR.ECT.ECBP.EDVALCA(+1)'              *
//**********************************************************************
//PUERCB10 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDVALCA.SRT(0),DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGR.ECT.ECBP.EDVALCA(+1),
//            DISP=(NEW,CATLG,DELETE),
//            LABEL=(1,SL,,,EXPDT=99000),UNIT=FJVTPH,
//            DCB=(BKUP.MODEL,BLKSIZE=0,DSORG=PS,LRECL=085,RECFM=FB)
//*
//**********************************************************************
//*  RESPALDA GDGD    'MXCP.ZM.GDGD.ECT.ECBP.EDDEPRE.SRT(0)'           *
//*  EN EL GDGR       'MXCP.ZM.GDGR.ECT.ECBP.EDDEPRE(+1)'              *
//**********************************************************************
//PUERCB09 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDDEPRE.SRT(0),DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGR.ECT.ECBP.EDDEPRE(+1),
//            DISP=(NEW,CATLG,DELETE),
//            LABEL=(1,SL,,,EXPDT=99000),UNIT=FJVTPH,
//            DCB=(BKUP.MODEL,BLKSIZE=0,DSORG=PS,LRECL=076,RECFM=FB)
//*
//**********************************************************************
//*  RESPALDA GDGD    'MXCP.ZM.GDGD.ECT.ECBP.EDIMPUE.SRT(0)'           *
//*  EN EL GDGR       'MXCP.ZM.GDGR.ECT.ECBP.EDIMPUE(+1)'              *
//**********************************************************************
//PUERCB08 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDIMPUE.SRT(0),DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGR.ECT.ECBP.EDIMPUE(+1),
//            DISP=(NEW,CATLG,DELETE),
//            LABEL=(1,SL,,,EXPDT=99000),UNIT=FJVTPH,
//            DCB=(BKUP.MODEL,BLKSIZE=0,DSORG=PS,LRECL=085,RECFM=FB)
//*
//**********************************************************************
//*  RESPALDA GDGD    'MXCP.ZM.GDGD.ECT.ECBP.EDMOVED.SRT(0)'           *
//*  EN EL GDGR       'MXCP.ZM.GDGR.ECT.ECBP.EDMOVED(+1)'              *
//**********************************************************************
//PUERCB07 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDMOVED.SRT(0),DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGR.ECT.ECBP.EDMOVED(+1),
//            DISP=(NEW,CATLG,DELETE),
//            LABEL=(1,SL,,,EXPDT=99000),UNIT=FJVTPH,
//            DCB=(BKUP.MODEL,BLKSIZE=0,DSORG=PS,LRECL=109,RECFM=FB)
//*
//**********************************************************************
//*  RESPALDA GDGD    'MXCP.ZM.GDGD.ECT.ECBP.EDSECIN.SRT(0)'           *
//*  EN EL GDGR       'MXCP.ZM.GDGR.ECT.ECBP.EDSECIN(+1)'              *
//**********************************************************************
//PUERCB06 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDSECIN.SRT(0),DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGR.ECT.ECBP.EDSECIN(+1),
//            DISP=(NEW,CATLG,DELETE),
//            LABEL=(1,SL,,,EXPDT=99000),UNIT=FJVTPH,
//            DCB=(BKUP.MODEL,BLKSIZE=0,DSORG=PS,LRECL=145,RECFM=FB)
//*
//**********************************************************************
//*  RESPALDA GDGD    'MXCP.ZM.GDGD.ECT.ECBP.EDOPERT1.SRT(0)'          *
//*  EN EL GDGR       'MXCP.ZM.GDGR.ECT.ECBP.EDOPERT1(+1)'             *
//**********************************************************************
//PUERCB05 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDOPERT1.SRT(0),DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGR.ECT.ECBP.EDOPERT1(+1),
//            DISP=(NEW,CATLG,DELETE),
//            LABEL=(1,SL,,,EXPDT=99000),UNIT=FJVTPH,
//            DCB=(BKUP.MODEL,BLKSIZE=0,DSORG=PS,LRECL=068,RECFM=FB)
//*
//**********************************************************************
//*  RESPALDA GDGD    'MXCP.ZM.GDGD.ECT.ECBP.EDPARAM.SRT(0)'           *
//*  EN EL GDGR       'MXCP.ZM.GDGR.ECT.ECBP.EDPARAM(+1)'              *
//**********************************************************************
//PUERCB04 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDPARAM.SRT(0),DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGR.ECT.ECBP.EDPARAM(+1),
//            DISP=(NEW,CATLG,DELETE),
//            LABEL=(1,SL,,,EXPDT=99000),UNIT=FJVTPH,
//            DCB=(BKUP.MODEL,BLKSIZE=0,DSORG=PS,LRECL=083,RECFM=FB)
//*
//**********************************************************************
//*  RESPALDA GDGD    'MXCP.ZM.GDGD.ECT.EBCO.EDOSCTA(0)'               *
//*  EN EL GDGR       'MXCP.ZM.GDGR.ECT.EBCO.EDOSCTA(+1)'              *
//**********************************************************************
//PUERCB03 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.GDGD.ECT.EBCO.EDOSCTA(0),DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGR.ECT.EBCO.EDOSCTA(+1),
//            DISP=(NEW,CATLG,DELETE),
//            LABEL=(1,SL,,,EXPDT=99000),UNIT=FJVTPH,
//            DCB=(BKUP.MODEL,BLKSIZE=0,DSORG=PS,LRECL=258,RECFM=FBA)
//*
//**********************************************************************
//*  RESPALDO MENSUAL 'MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.MEN'               *
//*  EN EL GDGR       'MXCP.ZM.GDGR.ECT.ECBP.EDOSCTA(+1)'              *
//**********************************************************************
//PUERCB02 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.MEN,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGR.ECT.ECBP.EDOSCTA(+1),
//            DISP=(NEW,CATLG,DELETE),
//            LABEL=(1,SL,,,EXPDT=99000),UNIT=FJVTPH,
//            DCB=(BKUP.MODEL,BLKSIZE=0,DSORG=PS,LRECL=258,RECFM=FBA)
//*
//*FS-1.0.0-03-FIN
//**********************************************************************
//*  RESPALDA EL ARCHIVO 'DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.DIGTA'      *
//*  EN EL GDGD  'MXCP.ZM.GDGD.ECT.ECBP.EDOSCTA.DIGTA(+1)'             *
//**********************************************************************
//PUERCB01 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.DIGTA,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDOSCTA.DIGTA(+1),
//            DISP=(NEW,CATLG,DELETE),
//            LABEL=(1,SL,EXPDT=99000),UNIT=FJVTP,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=250,RECFM=FB,BLKSIZE=0)
//*
//**********************************************************************
//*        TERMINA PROCESO ZMUEPRPB SIVA MULTIEMPRESA                  *
//**********************************************************************
