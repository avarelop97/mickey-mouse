//ZMPFID03 PROC
//*====================================================================*
//*    NOMBRE            :BCJFID03                                     *
//*    APLICATIVO        :ZM@                                          *
//*    PERIODICIDAD      :DIARIO                                       *
//*    AUTOR             :FABRICA DE SOFTWARE DGCM.                    *
//*    FECHA DE CREACION :04 DE MAYO DE 2016.                          *
//*====================================================================*
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*     MARCA      AUTOR    FECHA     DESCRIPCION                      *
//*   ---------   -------  --------   -------------------------------  *
//*    @DGCM01    XM26266  02JUN16    SE AGREGA ARCHIVO DE SALIDA01    *
//*--------------------------------------------------------------------*
//*====================================================================*
//* PASO     : ZMID0301                                                *
//* PROGRAMA : ZM4CFID9                                                *
//* OBJETIVO : ACTUALIZA CAMPO CTAABPIGO DE ZMDT609.                   *
//*====================================================================*
//ZMID0301 EXEC PGM=IKJEFT01
//*
//*@DGCM01-I
//SALIDA01 DD DSN=MXCP.ZM.FIX.BCJFID03.SALCTAS,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*@DGCM01-F
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMID0301),DISP=SHR
//*
