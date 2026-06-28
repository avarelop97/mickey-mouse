//ZMHCPE25  PROC                                                        00010025
//*********************************************************************
//*                                                                   *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)          *
//*                                                                   *
//* PROCESO: ZMHCPE25.                                                *
//*                                                                   *
//* OBJETIVO : GENERAR EL LISTADO DE ORDENES CANCELADAS EN UN         *
//*            SWITCHEO MONET-TANDEM.                                 *
//*                                                                   *
//* REALIZO : CDA INFORMATICA (XMCH061).                              *
//*                                                                   *
//* FECHA : 25 MAYO 2012.                                             *
//*                                                                   *
//*********************************************************************
//******************************************************************
//*----------------------------------------------------------------*
//*           L O G   D E   M O D I F I C A C I O N E S            *
//*----------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA            DESCRIPCION            *
//* ----------- -------- ------- --------------------------------- *
//* XXXXXXXXXXX XXXXXXXX XXXXXXX XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*            *         *       *                                 *
//*----------------------------------------------------------------*
//**********************************************************************
//* PASO     : PHE25P01                                                *
//* PROGRAMA : IKJEFT01                                                *
//* OBJETIVO : GENERA LISTADO DE ORDENES CANCELADAS                    *
//**********************************************************************
//PHE25P01 EXEC PGM=IKJEFT01                                            00551027
//*                                                                     00553001
//ZMHU43A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPE20,DISP=SHR
//*
//ZMOH43R1 DD DSN=MXCP.ZM.FIX.ARCHIVO.ARHORCAN,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=217,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*                                                                     00553001
//SYSTSPRT DD SYSOUT=*                                                  00590035
//SYSPRINT DD SYSOUT=*                                                  00600035
//SYSOUT   DD SYSOUT=*                                                  00610035
//SYSDBOUT DD SYSOUT=*                                                  00620035
//SYSABOUT DD DUMMY                                                     00630000
//SYSUDUMP DD DUMMY                                                     00640000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE25T01),DISP=SHR                   00651041
//*
