//ZMUFPDE0 PROC
//**********************************************************************
//*** ANTES ZMUFPD15****************************************************
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBUFCDE0                                         *
//*                   ENLACE CONTABLE INTERFAZ                         *
//*                                                                    *
//* OBJETIVO       :  BORRAR E INICIALIZAR INTERFAZ CONTABLE           *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  PROCESO CONTABLE MULTIEMPRESA EN ALTAMIRA        *
//*                                                                    *
//* DESPUES DE     :  TRANSFERIR ARCHIVO DE ENLACE CONTABLE C.B.       *
//*                :  CBUFCDE8  -  ZMUFPDE8                            *
//*                :  CBUFCDE9  -  ZMUFPDE9                            *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JUNIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == ICEGENER ==                            *00221002
//* OBJETIVO    :  RESPALDO DE ARCHIVOS DE ENLACE CONTABLE , SI Y SOLO *00222002
//*                SI SE EJECUTA LA TRANSFERENCIA A ALTAMIRA DE MODO OK*
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PUFE0P02 EXEC PGM=ICEGENER
//PI601765 DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSUT1   DD DSN=SIVA.IFA.FIX.GLMV303.ENCON.DETAIL,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.GDGMIL.ENCON(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(40,20),RLSE),
//            UNIT=3390,
//            DCB=(BKUP.MODEL,RECFM=FB,LRECL=0218,BLKSIZE=0,DSORG=PS)
//**********************************************************************
//*                          == ICEGENER ==                            *00221002
//* OBJETIVO    :  INICIALIZACION ARCHIVOS ENTRADA DE ENLACE CONTABLE  *00222002
//*                SI SE EJECUTA LA TRANSFERENCIA A ALTAMIRA DE MODO OK*
//*                                                                    *
//* PASO REINICIABLE SOLO SI PASO ANTERIOR TERMINA CORRECTAMENTE       *
//**********************************************************************
//PUFE0P01 EXEC PGM=ICEGENER,COND=(0,LT,PUFE0P02)
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=NULLFILE,
//            DCB=(RECFM=FB,LRECL=218,BLKSIZE=0)
//SYSUT2   DD DSN=SIVA.IFA.FIX.GLMV303.ENCON.DETAIL,DISP=SHR
