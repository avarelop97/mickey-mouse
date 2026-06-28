//ZMCFDCF3 PROC
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* MEXD-LSGM01  XMZ0423  17FEB17 SE RECUPERAN ARCHIVOS DE BCO TRADER. *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    : ZMCFD305                                               *
//*   OBJETIVO: VALIDACION DE EVENTO CNT PARA REENVIO DE CONSTANCIA    *
//*             DESDE  LA TRANSMISION.                                 *
//*--------------------------------------------------------------------*
//ZMCFD305 EXEC PGM=IKJEFT1A                                            00780700
//SYSPRINT DD SYSOUT=*                                                  00781000
//SYSOUT   DD SYSOUT=*                                                  00781100
//SYSDBOUT DD SYSOUT=*                                                  00781200
//SYSABOUT DD SYSOUT=*                                                  00781300
//SYSTSPRT DD SYSOUT=*                                                  00780900
//SYSUDUMP DD DUMMY                                                     00781400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMCFD305),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMCFD304                                              *
//* OBJETIVO   : VALIDAR SI EL CODIGO DE RETORNO ES 3 PARA ELIMINAR    *
//*                 CONDICION                                          *
//*--------------------------------------------------------------------*
// IF (ZMCFD305.RC = 3) THEN
//ZMCFD304 EXEC PGM=CTMCND,
//          PARM='DELETE COND MXPCRP_BCTEND25_CO &DIA.&MES',
//          COND=(4,LT)
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
// ENDIF
//*
