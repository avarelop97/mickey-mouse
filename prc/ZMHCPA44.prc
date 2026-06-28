//ZMHCPA44  PROC                                                        00010001
//**********************************************************************00020000
//*                                                                    *00120000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00130002
//*                                                                    *00140000
//* PROCESO        :  ZMHCPA44                                         *00150001
//*                   CIERRE DE DIA DEL MODULO DE MERCADO DE           *00160002
//*                   CAPITALES PARA BANCA PATRIMONIAL.                *00170002
//*                                                                    *00171002
//* OBJETIVO       :  GENERA REPORTES DE FOLIOS CONSECUTIVOS           *00180000
//*                   SATISFECHOS Y RECHAZADOS.                        *00190000
//*                                                                    *00200000
//**********************************************************************00481000
//*                      LOG DE MODIFICACIONES                         *00482000
//**********************************************************************00483000
//**********************************************************************00487000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00489000
//*  PHC44P07     GRABA EN UN ARCHIVO SECUENCIAL.                      *00489109
//**********************************************************************00489300
//PHC44P07 EXEC PGM=ZM3DG001,                                           00489709
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00489800
//PI601765  DD DUMMY                                                    00489902
//*                                                                     00490000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPA44,               00491002
//            DISP=(NEW,CATLG,DELETE),                                  00492000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00493000
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00494000
//*                                                                     00496000
//SYSTSPRT DD SYSOUT=*                                                  00497000
//SYSPRINT DD SYSOUT=*                                                  00498000
//SYSOUT   DD SYSOUT=*                                                  00499000
//SYSDBOUT DD SYSOUT=*                                                  00499100
//SYSABOUT DD DUMMY                                                     00499200
//SYSUDUMP DD DUMMY                                                     00499300
//*                                                                     00499400
//**********************************************************************02322306
//* OBJETIVO : ARCHIVO DE ORDENES COMPRA/VENTA SIN ORDENAR             *02322406
//*          -- ZM4DHU96 --                                            *02323006
//**********************************************************************02324006
//PHC44P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                02325006
//PI601765  DD DUMMY                                                    02326006
//*                                                                     02327006
//ZMHU94A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPA44,DISP=SHR       02328006
//*                                                                     02329006
//ZMHU94A2 DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPA44.ORDEN.SINORD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          02329306
//SYSTSPRT DD SYSOUT=*                                                  02329406
//SYSPRINT DD SYSOUT=*                                                  02329506
//SYSOUT   DD SYSOUT=*                                                  02329606
//SYSDBOUT DD SYSOUT=*                                                  02329706
//SYSABOUT DD DUMMY                                                     02329806
//SYSUDUMP DD DUMMY                                                     02329906
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC44T30),DISP=SHR                   02330008
//*                                                                     02330106
//**********************************************************************
//* PASO       : PHC44P05                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SE ORDENA EL ARCHIVO DEL ORDENES POR FOLIO DE ORDEN,  *
//*              IORIPAQ, FECHA DE REGISTRO Y CUENTA.                  *
//**********************************************************************
//PHC44P05 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPA44.ORDEN.SINORD,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPA44.ORDEN.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC44T40),DISP=SHR
//*
//**********************************************************************02322306
//* OBJETIVO : REPORTE DE ORDENES COMPRA/VENTA POR FOLIO CONSECUTIVO   *02322406
//*          -- ZM4DHU94 --                                            *02323006
//**********************************************************************02324006
//PHC44P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                02325006
//PI601765  DD DUMMY                                                    02326006
//*                                                                     02327006
//ZMHU94A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPA44,DISP=SHR       02328006
//*                                                                     02329006
//ENTRADA  DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPA44.ORDEN.SORT,DISP=SHR       02328006
//*                                                                     02329006
//ZMHU94A2 DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPA44.ORDEN.SOL2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//ZMHU94A3 DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPA44.ORDEN.TXT2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//ZMHU94R1 DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPA44.ARCHV.RHZ1,               02329206
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          02329306
//SYSTSPRT DD SYSOUT=*                                                  02329406
//SYSPRINT DD SYSOUT=*                                                  02329506
//SYSOUT   DD SYSOUT=*                                                  02329606
//SYSDBOUT DD SYSOUT=*                                                  02329706
//SYSABOUT DD DUMMY                                                     02329806
//SYSUDUMP DD DUMMY                                                     02329906
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC44T20),DISP=SHR                   02330008
//*                                                                     02330106
//**********************************************************************02322306
//* OBJETIVO : REPORTE DE ORDENES COMPRA/VENTA POR FOLIO CONSECUTIVO   *02322406
//*          -- ZM4DHU95 --                                            *02323006
//**********************************************************************02324006
//PHC44P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                02325006
//PI601765  DD DUMMY                                                    02326006
//*                                                                     02327006
//ZMHU95A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMHCPA44,DISP=SHR       02328006
//*                                                                     02329006
//ENTRADA  DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPA44.ORDEN.SORT,DISP=SHR       02328006
//*                                                                     02329006
//ZMHU95A2 DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPA44.ORDEN.SOL,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//ZMHU95A3 DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPA44.ORDEN.TXT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//ZMHU95R1 DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPA44.ARCHV.RHZ2,               02329206
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//SORTWK01 DD UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          02329306
//SYSTSPRT DD SYSOUT=*                                                  02329406
//SYSPRINT DD SYSOUT=*                                                  02329506
//SYSOUT   DD SYSOUT=*                                                  02329606
//SYSDBOUT DD SYSOUT=*                                                  02329706
//SYSABOUT DD DUMMY                                                     02329806
//SYSUDUMP DD DUMMY                                                     02329906
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC44T10),DISP=SHR                   02330008
//*                                                                     02330106
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO PHC44P03     *
//* REPORTE  : REPORTE ORDENES FOLIOS SATISFECHOS/RECHAZADOS           *
//**********************************************************************
//PHC44P02 EXEC PGM=ICEGENER,COND=(0,NE,PHC44P03)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPA44.ARCHV.RHZ1,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* ICEGENER : ENVIA A CTL-D  REPORTE GENERADO EN EL PASO PHC44P03     *
//* REPORTE  : REPORTE ORDENES FOLIOS SATISFECHOS/RECHAZADOS           *
//**********************************************************************
//PHC44P01 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.E&EMP..ZMHCPA44.ARCHV.RHZ2,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
