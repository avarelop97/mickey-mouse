//ZMCDPC28 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE VALORES >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIMI.:  ZMHLPE14                                            *
//*                                                                    *
//*   OBJETIVO  :  REPORTE DE POSICION POR EMISORA                     *
//*                (OPCION 298)                                        *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*   FECHA     :  DICIEMBRE  18, 2002                                 *
//*                                                                    *
//*   AUTOR     :  (HPI) GUADALUPE OROZCO OROZCO                       *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//* PROGRAMA: ZM4EHB36                                                 *
//* FUNCION:  REPORTE DE POSICION POR EMISORA                          *
//**********************************************************************
//PJH14P04 EXEC PGM=IKJEFT01
//ZMHB36A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE14,
//            DISP=SHR
//ZMHB36R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL14T04),DISP=SHR
//**********************************************************************
//* PROGRAMA: ZM4EH010                                                 *
//* FUNCION:  REPORTE DE POSICION POR EMISORA CON COTITULARES          *
//**********************************************************************
//PJH14P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH010A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE14,
//            DISP=SHR
//ZMH010R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL14T03),DISP=SHR
//**********************************************************************
//*        AVISO EN CASO DE ERROR A LA CONSOLA
//**********************************************************************
//PJH14P02 EXEC PGM=MAILOPER,COND=(4,GE,PJH14P03),
//         PARM=('/ATENCION.AVISAR A DESARROLLO QUE PROCESO ',
//             'SIVAXPEM(ZMHLPE14)TERMINO MAL.CONTESTAR SI',
//             'PARA TERMINAR')
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PJH14P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXPEM_IN_SEP_OK WDATE',
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
