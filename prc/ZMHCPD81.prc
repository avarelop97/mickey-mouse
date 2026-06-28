//ZMHCPD81 PROC                                                         00010000
//**********************************************************************
//* SISTEMA        :                                                   *
//* PROCESO        :  ZMJCPDD1   (DISPARADOR)                          *
//*                   CBHCCD81   PROCEDIMIENTO                         *
//* OBJETIVO       :  GENERA LA CONDICION PARA EL CIERRE DE SIVA       *
//*                   ASI COMO EL INICIO DEL BATCH DE DECALOG          *
//*                                                                    *
//* REALIZO        :  EVERIS                                           *
//**********************************************************************
//**********************************************************************
//* OBJETIVO : GENERA ARCHIVO EN BLANCO PARA EL INICIO DEL BATCH DE    *
//*            DECALOG                                                 *
//**********************************************************************
//**********************************************************************00055100
//* OBJETIVO : BORRAR ARCHIVOS DE LA VALUACION DEL PROCESO.            *00055400
//**********************************************************************00055500
//PHC81P02 EXEC PGM=IDCAMS                                              00055600
//SYSPRINT DD SYSOUT=*                                                  00055800
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC81T01),DISP=SHR                   00056000
//**********************************************************************
//* OBJETIVO : GENERA ARCHIVO EN BLANCO PARA EL INICIO DEL BATCH DE    *
//*            DECALOG                                                 *
//**********************************************************************
//PHC81P01 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DUMMY,LRECL=300,BLKSIZE=0,RECFM=FB
//SYSUT2   DD DSN=MXCP.ZM.FIX.SIN.CONDECA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(6,3),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
