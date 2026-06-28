//ZMSFPD16 PROC                                                         00010000
//**********************************************************************00020000
//*                                                                    *00030000
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *00040000
//*                                                                    *00050000
//* PROCESO        :  CBSFCD16                                         *00060000
//*                   TENENCIA ESTADISTICA                             *00070000
//*                                                                    *00080000
//* OBJETIVO       :  GENERA ARCHIVO DE TENENCIA PROMEDIO              *00090000
//*                                                                    *00100000
//* CORRE                                                              *00110000
//* ANTES DE       :                                                   *00120000
//*                                                                    *00130000
//* DESPUES DE     :  CBSFCD11  -  ZMSFPD11                            *00140000
//*                                                                    *00150000
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *00160000
//* FECHA          :  JUNIO 2004                                       *00170000
//*                                                                    *00180000
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *00190000
//*                                                                    *00200000
//**********************************************************************00210000
//*                                                                    *00220000
//**********************************************************************00230000
//*                          ==  IDCAMS  ==                            *00240000
//* OBJETIVO    : BORRAR ARCHIVOS DE TRABAJO                           *00250000
//*                                                                    *00260000
//*  PASO REINICIALIZABLE POR RESTART                                  *00270000
//**********************************************************************00280000
//PSF16P02 EXEC PGM=IDCAMS                                              00290000
//SYSPRINT DD SYSOUT=*                                                  00300000
//SYSOUT   DD SYSOUT=*                                                  00310000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF16T02),DISP=SHR                   00320000
//**********************************************************************00330000
//*                          == ZM4DGP19 ==                            *00340000
//*  OBJETIVO: GENERAR ARCHIVO Y REPORTE DE TENENCIA PROMEDIO(LONGORIA)*00350000
//*            DE CLIENTES POR PROMOTOR, CENTRO DE COSTOS Y SUCURSAL   *00360000
//*                                                                    *00370000
//*  PASO REINICIALIZABLE POR RESTART                                  *00380000
//**********************************************************************00390000
//PSF16P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00400000
//PI601765 DD DUMMY                                                     00410000
//ZMGP19R1 DD SYSOUT=*                                                  00420000
//ZMGP19A1 DD DSN=SIVA.SIE.FIX.TENENCIA,                                00430000
//            DISP=(NEW,CATLG,DELETE),                                  00440000
//            DCB=(RECFM=FB,LRECL=149,BLKSIZE=0,DSORG=PS),              00450000
//            SPACE=(CYL,(40,20),RLSE),                                 00460000
//            UNIT=3390                                                 00470000
//SYSTSPRT DD SYSOUT=*                                                  00480000
//SYSPRINT DD SYSOUT=*                                                  00490000
//SYSOUT   DD SYSOUT=*                                                  00500000
//SYSDBOUT DD SYSOUT=*                                                  00510000
//SYSABOUT DD DUMMY                                                     00520000
//SYSUDUMP DD DUMMY                                                     00530000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZSF16T01),DISP=SHR                  00540000
