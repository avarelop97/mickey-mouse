//ZMUFPD65 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  BANCA PATRIMONIAL SINCRONIZACION DE UG'S         *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD65                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  CARGA DE TABLA CUENTA                            *00090002
//*                                                                    *00090002
//* CORRE          :  A PETICION D D&D                                 *00110002
//*                                                                    *00130002
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//**********************************************************************
//* PROGRAMA: AMUUMAIN
//* OBJETIVO: CARGA LA TABLA CUENTA
//**********************************************************************
//ZMUF65P1 EXEC PGM=AMUUMAIN,COND=(4,LT),                               00781000
//         PARM='MXP1,ZMUF65P1,NEW,,MSGLEVEL(1)'                        00781100
//*                                                                     00781200
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00781300
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT                       00780900
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00781400
//*
//SYSREC1  DD DSN=MXCP.ZM.FIX.UNLOAD.CUENTA.UGS.BACKUP1,
//            DISP=SHR
//SYSUT1   DD DSN=MXCP.ZM.TMP.ZM3DUA13.C802.SYSUT01,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(050,025),RLSE),
//            UNIT=3390,
//            DCB=(BLKSIZE=0)
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZM3DUA13.C802.SYSERR,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(050,025),RLSE),
//            UNIT=3390,
//            DCB=(BLKSIZE=0)
//SYSERR   DD DSN=MXCP.ZM.TMP.ZM3DUA13.C802.SORTOUT,
//            DISP=(NEW,CATLG,CATLG),
//            SPACE=(CYL,(050,025),RLSE),
//            UNIT=3390,
//            DCB=(BLKSIZE=0)
//*
//ABNLIGNR DD DUMMY
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T70),DISP=SHR
//*                                                                    *00780300
//**********************************************************************
