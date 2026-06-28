//ZMLIND08 PROC                                                         00010004
//*--------------------------------------------------------------------*00020004
//*                                                                    *00030004
//*                   C A S A   D E  B O L S A                         *00030004
//*                                                                    *00030004
//* SISTEMA           :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)        *00120004
//*                                                                    *00130004
//* PROCESO           :  ZMLIND08                                      *00140004
//*                                                                    *00160004
//* OBJETIVO          :  GENERA ARCHIVO CON EL NUMERO DE PROMOTOR      *00170004
//*                      Y EL USUARIO                                  *00180004
//*                                                                    *00190004
//* PERIODICIDAD      :  DIARIO.                                       *00240004
//*                                                                    *00240004
//* ELABORADO POR     :  ALEJANDRO GARCIA MORALES.                     *00240004
//*                                                                    *
//* FECHA DE CREACION :  27/05/2025                                    *00240004
//*--------------------------------------------------------------------*00300004
//*                      LOG DE MODIFICACIONES                         *
//*--------------------------------------------------------------------*
//*                                                                    *
//*   MARCA   FECHA   AUTOR   DESCRIPCION                              *
//*  ------- ------- ------- ----------------------------------------- *
//*  AGM-INI  310725 MI31262 SE AÑADE EL PASO PZMD0802 PARA ADICIONAR  *
//*  AGM-FIN                 UNA CONDICION GLOBAL PARA DISTRIBUIDO     *
//*--------------------------------------------------------------------*
//* PASO    : PZMD0801                                                 *00022600
//* PROGRAMA: ADUUMAIN                                                 *00022700
//* OBJETIVO: TOMA LA INFORMACION DEL ARCHIVO MXCP.ZM.FIX.F&FECHA..    *00022700
//*           PROMOT.MUV Y GENERA UN NUEVO ARCHIVO CON EL NUMERO DE    *00022700
//*           PROMOTOR Y USUARIO.                                      *00022700
//*--------------------------------------------------------------------*
//PZMD0801 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.F&FECHA..PROMOT.MUV,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.NDPROMOT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,20),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=15,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMD08T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : PZMD0802                                                 *00022600
//* PROGRAMA: IOACND                                                   *00022700
//* OBJETIVO: ADICIONA LA CONDICION GLOBAL PARA DISTRIBUIDO.           *00022700
//*--------------------------------------------------------------------*
//PZMD0802 EXEC PGM=IOACND,COND=(4,LT),
//*        PARM='ADD COND MX2CRX_CBUIND0800'                           *
//         PARM='ADD COND CBXCRX_MSIPTP0333 WDATE'
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
//*--------------------------------------------------------------------*00007848
//*                             FIN ZMLIND08                           *00007849
//*--------------------------------------------------------------------*00007850
