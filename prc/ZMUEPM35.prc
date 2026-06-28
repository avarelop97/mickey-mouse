//ZMUEPM35 PROC EMP=,SUC=,INT1=,INT2=
//*
//**********************************************************************
//*                   M U V   P A T R I M O N I A L                    *
//*                   =============================                    *
//*                                                                    *
//*             <<  ESTADOS DE CUENTA MUV PATRIMONIAL  >>              *
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES (M.U.V.)                 *
//*                                                                    *
//* PROCESO        :  SIVAXM35 (SUBMITIDOR)                            *
//*                   ZMUEPM35 (PROCEDIMIENTO)                         *
//*                                                                    *
//*                   NO SE USA                                        *
//**********************************************************************
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//**********************************************************************
//*                        == ZM3DG001 ==                              *
//*                                                                    *
//* OBJETIVO : RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA     *
//*            EN ARCHIVO                                              *
//**********************************************************************
//PUE94P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZMUEPM35,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(6,3),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*********************************************************************
//**              FIN DEL PROCEDIMIENTO ZMUEPM35                       *
//*********************************************************************
