//ZMUEPE33 PROC EMP=,SUC=,INT1=,INT2=
//**********************************************************************
//*                   M U V   P A T R I M O N I A L                    *
//*                   =============================                    *
//*                                                                    *
//*             <<  ESTADOS DE CUENTA MUV PATRIMONIAL  >>              *
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES (M.U.V.)                 *
//*                                                                    *
//* PROCESO        :  SIVAXB07 (SUBMITIDOR)                            *
//*                   ZMUEPE33 (PROCEDIMIENTO)                         *
//*                                                                    *
//* OBJETIVO       :  DISPARO DEL REPROCESO DE ESTADOS DE CUENTA DE    *
//*                   CBUENM70 GENERA EDOS CTA MUV MEDC FORMATEADOS    *
//*                   POR PARTE DEL USUARIO                            *
//*                                                                    *
//* DESPUES DE     :  A PETICION DEL USUARIO                           *
//*                                                                    *
//* PERIODICIDAD   :  MENSUAL                                          *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*      |          |       |        |                                 *
//**********************************************************************
//*
//**********************************************************************
//*                        == ZM3DG001 ==                              *
//*                                                                    *
//* OBJETIVO : RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA     *
//*            EN ARCHIVO                                              *
//**********************************************************************
//PUE33P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.ZMUEPE01,
//            DISP=(NEW,DELETE,DELETE),
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
//*                        == CTMCND   ==                              *
//*                                                                    *
//*OBJETIVO : ACTIVA LA CONDICION EN CONTROLM PARA QUE CORRA CBUENM70  *
//*********************************************************************
//PUE33P01 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND    SIVAXB07_IN     &INT2'
//*
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
//*********************************************************************
//** PEND         FIN DEL PROCEDIMIENTO ZMUEPE33                       *
//*********************************************************************
