//ZMGIPD11 PROC
//*--------------------------------------------------------------------*00010000
//*               C A S A     D E     B O L S A                        *00020000
//*               -----------------------------                        *00020000
//*               CARGA DE CUPONES DE CEDES  BG                        *00020000
//*                                                                    *01040000
//*  PASO:  1     CARGA DE CUPONES CEDES (BANCA PATRIMONIAL)           *00030000
//*               DESDE BG   HACIA  MUV                                *00040000
//*                                                                    *01090000
//*  ELABORO: ABEL CASTILLO VALENCIA (GRUPO GESFOR)                    *01090000
//*  FECHA  : SEPTIEMBRE DE 2004                                       *01090000
//*--------------------------------------------------------------------*00060000
//BGCUPON  EXEC PGM=IKJEFT01                                            01130000
//PI601765 DD DUMMY                                                     01140000
//CUPONEBG DD DSN=MXCP.ZM.FIX.TES.PZOBGCUP.F&FECHA,DISP=SHR             01220000
//*                                                                     00890000
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGF11T01),DISP=SHR
//*--------------------------------------------------------------------*00010000
