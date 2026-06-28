//ZMLLPP24  PROC                                                        00001003
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<< MERCADO DE DINERO >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMLLPP24                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERA MATRIZ DE LA DEMANA ESPECIFICA (OPCION 935-E)*
//*                                                                    *
//*   CORRE ANTES DE  :  CBLLPZ24                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------
//* MODIFICA       :  OSCAR URBANO F. (AZERTIA).
//* FECHA          :  NOVIEMBRE 2008. CONVERSION DE SUBMITIDORES
//*-------------------------------------------------------------------*
//********************************************************************* 00010100
//*    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA EN ARCHIVO   00010200
//********************************************************************* 00010300
//PLL24P02 EXEC PGM=ZM3DG001,                                           00011000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00012000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE24,                     00019200
//            DISP=(NEW,CATLG,DELETE),                                  00019300
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00019400
//            UNIT=3390,                                                00019500
//            SPACE=(CYL,(2,1),RLSE)                                    00019600
//SYSTSPRT DD SYSOUT=*                                                  00014000
//SYSPRINT DD SYSOUT=*                                                  00015000
//SYSOUT   DD SYSOUT=*                                                  00016000
//SYSDBOUT DD SYSOUT=*                                                  00017000
//SYSABOUT DD DUMMY                                                     00018000
//SYSUDUMP DD DUMMY                                                     00019000
//*                                                                     00019100
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PLL24P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXMTE_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=Z
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=Z
//DACNDIN  DD   DDNAME=SYSIN
//*
