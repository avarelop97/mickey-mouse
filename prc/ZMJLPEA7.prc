//ZMJLPEA7 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  BANCA PATROMONIAL  >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA MOVIMIENTOS   BANCA PATRIMONIAL             *
//*                                                                    *
//*   PROCEDIMI.:  ZMJLPEA6                                            *
//*                                                                    *
//*   OBJETIVO  :  PROCESA MOVIMIENTOS  DE SOCIEDADES DE INVERSION     *
//*                (OPCION ZA1) AGREGANDO LA CONDICION PARA QUE        *
//*                ARRANQUE EL PROCESO CBJLNEA5                        *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*   FECHA  :  SEPTIEMBRE 2007.                                       *
//*                                                                    *
//*   AUTOR  :  BBVA BANCOMER                                          *
//*                                                                    *
//*   MODIFICACIOES                                                    *
//*                                                                    *
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PJLA7P01 EXEC  PGM=CTMCND,PARM='ADD COND CBJLNEA5_IN_OK WDATE',
//         COND=(4,LT)
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
//**********************************************************************
//*        TERMINA PROCESO ZMJLPEA7 SIVA MULTIEMPRESA                  *
//**********************************************************************
