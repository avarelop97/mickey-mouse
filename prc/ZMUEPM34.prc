//ZMUEPM34 PROC
//*
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* FS-1.0.0-03  XMBB127 12JUL12  SE CAMBIA NOMBRE DE PASO:            *
//*                               ZMU34001 EXEC PGM=IOACND,            *
//*                               POR NOMBRE DE PASO :                 *
//*                               ZMPM3402 EXEC PGM=IOACND,            *
//*                               Y SE ANADE PASO :                    *
//*                               ZMPM3401 EXEC PGM=IOACND,COND=(4,LT),*
//*                               LOG DE MODIFICACIONES + COMENTARIOS  *
//*              XM07413  240912  SE CORRIGE CONDICION ARRANQUE MEDC   *
//*              CONDICION ANTERIOR:  MXPCB_CBUENM3401_CO              *
//*              CONDICION NUEVA   : MXPBCP_MJENCA0500_CO              *
//*              SE QUITA PASO DE LA CONDICION CBUENM06_OK             *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPM3401                                              *
//* UTILERIA   : IOACND                                                *
//* OBJETIVO   : ADICIONA CONDICION PARA QUE SEA TOMADA POR PU         *
//*FS-1.0.0-03-INI. ESTE PASO FUE ADICIONADO A PETICION 068-ZM-ODT3    *
//*--------------------------------------------------------------------*
//ZMPM3401 EXEC PGM=IOACND,
//         PARM='ADD COND MXPBCP_MJENCA0500_CO &DIA.&MES'
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD  DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
//*FS-1.0.0-03-FIN. ESTE PASO FUE ADICIONADO A PETICION 068-ZM-ODT3    *
//*--------------------------------------------------------------------*
//*            TERMINA ZMUEPM34                                        *
//*--------------------------------------------------------------------*
