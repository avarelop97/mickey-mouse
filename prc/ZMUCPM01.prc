//ZMUCPM01 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBUCNM01                                         *
//*                   EXTRACCCION DE CLIENTES  ELEGIBLES / NO ELEGIBLES*
//*                                                                    *
//* REALIZO        :  CDA INFORMATICA.                                 *
//*                                                                    *
//* FECHA          :  OCTUBRE 2011                                     *
//*                                                                    *
//**********************************************************************
//* PASO       : PUC01P03                                              *
//* PROGRAMA   : ICEMAN                                                *
//* DESCRIPCION: ORDENAR EL ARCHIVO DE PERSONAS POR EL NUMERO DE CUENTA*
//**********************************************************************
//PUC01P03 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.CON.AMCP,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CON.AMCP.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=512,BLKSIZE=0),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMC04T14),DISP=SHR
//*
//**********************************************************************
//* PASO       : PUC01P02                                              *
//* PROGRAMA   : ZM4MU072                                              *
//* DESCRIPCION: EXTRACCCION DE CLIENTES  ELEGIBLES / NO ELEGIBLES     *
//**********************************************************************
//PUC01P02 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZM4MU0A1 DD DSN=MXCP.ZM.FIX.CLIENTES.ELEGNE,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUC04T12),DISP=SHR
//*
//**********************************************************************
//* PASO       : PUC01P01                                              *
//* PROGRAMA   : ZM3MU022                                              *
//* DESCRIPCION: COMPLEMENTO CON EL PRIMER ARCHIVO DE INFORMACION DE   *
//*              CUENTAS ELEGIBLES / NO ELEGIBLES DE MUV A PARTIR LA   *
//*              INTERFAZ DIARIA DE PERSONAS                           *
//**********************************************************************
//PUC01P01 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZM3MU0A1 DD DSN=MXCP.ZM.FIX.CLIENTES.ELEGNE,DISP=SHR
//ZM3MU0A2 DD DSN=MXCP.ZM.FIX.CON.AMCP.SORT,DISP=SHR
//*
//ZM3MU0A3 DD DSN=MXCP.ZM.FIX.CLIENTE.COMP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=097,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMC04T13),DISP=SHR
//*
