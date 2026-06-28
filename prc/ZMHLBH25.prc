//ZMHLBH25 PROC
//*====================================================================
//*   PRELIMINAR - COMPLEMENTO DIVIDENDO (H25) - BANCA
//*====================================================================
//*
//********************************************************************
//* EJECUCION DE PRELIMINAR DEL COMPLEMENTO DE DIVIDENDO (H25)
//* ZM4EHH25 VALORES
//********************************************************************
//ZMPB2510 EXEC PGM=IKJEFT01
//ZMH981A1 DD DSN=MXCP.ZM.TMP.VAL.EBCM.SCTD.ZMHLPH25,DISP=SHR
//*
//ZMH981A2 DD DSN=&&ARCH,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//ZMH981A3 DD DSN=MXCP.ZM.TMP.EBCM.ZMHLPH25.ZM6RG075,
//            DISP=(NEW,DELETE,DELETE),
//            DCB=(LRECL=569,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMH981A4 DD DSN=MXCP.ZM.TMP.EBCM.ZMHLPH25.ZM6RH978,
//            DISP=(NEW,DELETE,DELETE),
//            DCB=(LRECL=143,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMH981A8 DD DSN=MXCP.ZM.TMP.EBCM.ZMHLPH25.VARCOMP,
//            DISP=(NEW,DELETE,DELETE),
//            DCB=(LRECL=044,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMH981A9 DD DSN=MXCP.ZM.TMP.EBCM.ZMHLPH25.DIVEFE,
//            DISP=(NEW,DELETE,DELETE),
//            DCB=(LRECL=440,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//ZMH981S1 DD DSN=MXCP.ZM.FIX.EBCM.ZMHLPH25.REPP01,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMH981S2 DD DSN=MXCP.ZM.FIX.EBCM.ZMHLPH25.REPP02,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=140,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPB2510),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : ICEGENER --  ENVIA A CTL-D                              *
//*            REPORTE PRELIMINAR - COMPLEMENTO DIVIDENDO (H25)        *
//**********************************************************************
//ZMPH2505 EXEC PGM=ICEGENER,COND=(0,NE)
//SYSUT1   DD DSN=MXCP.ZM.FIX.EBCM.ZMHLPH25.REPP01,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
