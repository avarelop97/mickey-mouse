//ZMHFND08 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA  : ZM                                                      *
//*                                                                    *
//* PROCESO  : ZMHFND08                                                *
//*                                                                    *
//* OBJETIVO : PROCESO PARA GENERACION DE REPORTE DE PORCENTAJES DE    *
//*            VARIACION DE PRECIOS (ORDENES MERCADO DE CAPITALES)     *
//*                                                                    *
//* PERIODICIDAD: CICLICO                                              *
//*                                                                    *
//* FECHA    : OCTUBRE 18 DEL 2011                                     *
//*                                                                    *
//*--------------------------------------------------------------------*
//**********************************************************************
//*        L O G    D E   M O D I F I C A C I O N E S
//**********************************************************************
//*  MARCA   AUTHOR  FECHA         DESCRIPCION
//*  -----   ------  -----         -----------------------
//**********************************************************************
//*
//**********************************************************************
//* PROGRAMA: IKJEFT01                                                 *
//*           GENERACION DE REPORTE DE PORCENTAJES DE VARIACION DE     *
//*           PRECIOS                                                  *
//**********************************************************************
//PHF08P01 EXEC PGM=IKJEFT01
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.VAL.E&EMP..S&SUC..ZMHFNP08,
//            DISP=SHR
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*ZMH107R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZMH107R1 DD DSN=MXCP.ZM.FIX.ZMHFND08.REPORTE1,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMH107R1 DD DUMMY
//*
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHP08T01),DISP=SHR
//*
//**********************************************************************
//*                     FIN DEL  PROCESO ZMHFND08                      *
//**********************************************************************
