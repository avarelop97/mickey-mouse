//ZMUFND05 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  SIVA.                                            *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFND05                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  SUBIR LOS PRECIOS DEL DIA DE SOCINV              *00090002
//* CORRE                                                              *00110002
//* ANTES DE       :  N/A                                              *00120002
//*                                                                    *00130002
//* DESPUES DE     :  N/A                                              *00140002
//*                                                                    *00150002
//* REALIZACION    :  SOFTTEK (JJBA)                  03/MAY/2010      *00160002
//*                                                                    *00170002
//* OBSERVACION    :  NINGUNA                                          *00180002
//*                                                                    *00190002
//**********************************************************************
//* PASO    : ZLF05T15                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* OBJETIVO: BORRA ARCHIVOS SECUENCIALES DE DISCO                     *
//**********************************************************************
//ZLF05T15 EXEC PGM=IDCAMS
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF05T15),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZLF05T10                                                 *
//* PROGRAMA: ZM4DL120                                                 *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4DL120                          *
//**********************************************************************
//ZLF05T10 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//SINPREF  DD DSN=SIVA.SIN.WKF.SINPREF,DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE),
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0)
//ZML120R1 DD SYSOUT=*
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF05T10),DISP=SHR
//*
