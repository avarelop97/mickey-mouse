//ZMJLPE03 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                        >>>>  TESORERIA   <<<<                      *
//*                                                                    *
//* DISPARADOR     :  SIVAXECQ                                         *
//* PROCESO        :  ZMJLPE03                                         *
//*                   PRODUCCION TESORERIA EMISION CHEQUES CICLICO 01  *
//*                                                                    *
//* OBJETIVO       :  IMPRESION DE CHEQUES DE TESORERIA                *
//*                   (OPCION 566)                                     *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  NINGUNO                                          *
//*                                                                    *
//* PERIODICIDAD   :  CORRE A PETICION DEL USUSARIO.                   *
//*                                                                    *
//**********************************************************************
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN *00030000
//*  PJL03P07     ARCHIVO SECUENCIAL.                                  *00040000
//**********************************************************************00060000
//PJL03P04 EXEC PGM=ZM3DG001,                                           00160000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00170000
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00210000
//SYSPRINT DD SYSOUT=*                                                  00230000
//SYSOUT   DD SYSOUT=*                                                  00240000
//SYSDBOUT DD SYSOUT=*                                                  00250000
//SYSABOUT DD DUMMY                                                     00260000
//SYSUDUMP DD DUMMY                                                     00270000
//*                                                                     00280000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE03,               00290003
//           DISP=(NEW,CATLG,DELETE),                                   00300005
//           DCB=(DSORG=PS,RECFM=FB,LRECL=096,BLKSIZE=0),               00310000
//           UNIT=3390,SPACE=(CYL,(2,1),RLSE)                           00320000
//*                                                                     00280000
//**********************************************************************
//*                                                                    *
//*  PASO:  2     PROGRAMA QUE GENERA LA IMPRESION DE CHEQUES          *
//*  PJL03P06     PASO REINICIABLE POR RESTART Y/O CRTL-M.             *
//*                                                          ZM4EJ751  *
//**********************************************************************
//PJL03P03 EXEC PGM=IKJEFT01,COND=(4,LT),
//         DPRTY=(15)
//PI601765 DD DUMMY
//*
//ZMJ751A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE03,DISP=SHR
//*
//ZMJ751R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMJ751C1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMJ751T1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..JLPE03.ARCHTEMP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=428,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD DUMMY
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL03T01),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  3     GRABAR LOS PARAMETROS RECIBIDOS EN LINEA EN LA PARAM *00030000
//*  PJL03P03     'T54' PARA PERMITIR CONTROLAR CONTENCION (-911) EN EL*00040000
//*                PROC Y RESUBMITIR LA IMP. DE CHEQUES DE TESORERIA.  *00020000
//*                                                       ZM4DG001     *00020000
//**********************************************************************00060000
//PJL03P02 EXEC PGM=IKJEFT01,
//         COND=(20,NE,PJL03P03)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE03,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL03T02),DISP=SHR
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PJL03P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXECQ_IN_SEP_OK WDATE',
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
//*                F I N    Z M J L P E 0 3                            *
//**********************************************************************
