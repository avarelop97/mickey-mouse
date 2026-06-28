//ZMJLPP37 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  BANCA PATROMONIAL  >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA CARGOS VARIOS BANCA PATRIMONIAL             *
//*                                                                    *
//*   PROCEDIMI.:  ZMJLPP37                                            *
//*                                                                    *
//*   OBJETIVO  :  PREVIO / DEFINITIVO DE CARGOS VARIOS                *
//*                (OPCION Q20)                                        *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*   FECHA  :  AGOSTO, 2005.                                          *
//*                                                                    *
//*   AUTOR  :  GETRONICS                                              *
//*                                                                    *
//*   MODIFICACIOES                                                    *
//*     AGOSTO /2005. SE AGREGAN PASOS PARA OPERACIONES PENDIENTES     *
//*     OCTUBRE/2005. SE AGREGA PASO PARA EL CACULO DEL IVA            *
//*     DICIEMB/2005. SE QUITAN LOS PASOS PARA EL CACULO DEL IVA       *
//*     FEBRERI/2006. SE AGREGA PASO PARA EJECUTAR EL POZO             *
//*                                                                    *
//**********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO
//**********************************************************************
//PJL37P06 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPP37,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*---------------------------------------------------------------------
//* PROGRAMA:
//* OBJETIVO: ADICIONA CONDICION PARA CONTROL-M
//*---------------------------------------------------------------------
//PJL37P0A EXEC  PGM=CTMCND,
//         PARM='ADD COND SIVAXCVA_IN_OK WDATE',COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=*
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=*
//DACNDIN  DD   DDNAME=SYSIN
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJLPP37 SIVA MULTIEMPRESA                  *
//**********************************************************************
