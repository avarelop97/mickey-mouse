//ZXLLPC11 PROC
//**********************************************************************
//* SISTEMA  : ZM(CASA DE BOLSA, MERCADO DE DINERO)                    *
//* PROCESO  : ZXLLPC11                                                *
//* OBJETIVO : PAGOS PENDIENTES DE AMORTIZACION, OPCION 881            *
//*                                                                    *
//* REALIZO  : CAPGEMINI ARGENTINA                                     *
//*                                                                    *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*            *         *       *                                     *
//**********************************************************************
//*     PASO: PLC11P02                                                 *
//* OBJETIVO: RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN     *
//*           ARCHIVO                                                  *
//**********************************************************************
//PLC11P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//SYSTSPRT DD SYSOUT=X
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.MDD.ECBP.SZPR.ZXLLPC11,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*     PASO: PLC11P01                                                 *
//* OBJETIVO: ACTIVA CONDICION EN CONTROL-M "CBLLPC11_IN" PARA QUE SE  *
//*           EJECUTE LIQUIDACION DE PAGOS PENDIENTES      OPC 881     *
//**********************************************************************
//PLC11P01 EXEC PGM=CTMCND,PARM='ADD COND CBLLPC11_CBP_SIVA_OK WDATE',
//            COND=(4,LT)
//*
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
