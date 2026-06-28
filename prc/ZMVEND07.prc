//ZMVEND07 PROC                                                         00020003
//**********************************************************************00160001
//*                                                                    *00170001
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *00180001
//* PROCESO        :  CBHIND07/CBVEND07                                *00190001
//*                   REPORTES VALORES                                 *00200001
//*                                                                    *00210001
//* OBJETIVO       :  REPORTE DE EXTRANJEROS RESIDENTES/NO RESIDENTES  *00220001
//*                                                                    *00230001
//* CORRE                                                              *00240001
//* ANTES DE       :  EVENTUAL                                         *00250001
//*                                                                    *00260001
//* DESPUES DE     :  EVENTUAL                                         *00270001
//*                                                                    *00280001
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *00290001
//* FECHA          :  MAYO 2006                                        *00300001
//*                                                                    *00310001
//* OBSERVACION    :  ESTE PROCESO CORRE EVENTUAL UNICA VEZ            *00320001
//*                                                                    *00330001
//**********************************************************************00340001
//*                                                                    *00350001
//**********************************************************************00352002
//*                          == ZM4EHA17 ==                            *00353002
//* OBJETIVO :   REPORTE DE POSICION POR EMISORA.                      *00354002
//*                                                                    *00355002
//* PASO REINICIABLE POR RESTART.                                      *00356002
//**********************************************************************00357002
//PHI07P04 EXEC PGM=IKJEFT01                                            00358002
//ZMHA17R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00360002
//ZMHA17R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00370002
//SYSTSPRT DD SYSOUT=*                                                  00380002
//SYSPRINT DD SYSOUT=*                                                  00390002
//SYSOUT   DD SYSOUT=*                                                  00400002
//SYSDBOUT DD SYSOUT=*                                                  00410002
//SYSABOUT DD SYSOUT=*                                                  00420002
//SYSUDUMP DD DUMMY                                                     00430002
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI07T04),DISP=SHR                   00440002
//**********************************************************************00450002
//*                          == ZM4DHB60 ==                            *00460002
//* OBJETIVO :   REPORTE DE EXTRANJEROS NO RESIDENTES POR CONTRATO     *00470002
//*                                                                    *00480002
//* PASO REINICIABLE POR RESTART.                                      *00490002
//**********************************************************************00500002
//PHI07P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00510002
//ZMHB60R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00520002
//ZMHB60R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00530002
//ZMHB60A1 DD DSN=MXCP.ZM.WKF.OSC.ARCHIVO,                              00540002
//            DISP=(NEW,CATLG,DELETE),                                  00550002
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),               00560002
//            SPACE=(CYL,(10,5),RLSE),                                  00570004
//            UNIT=3390                                                 00580002
//SYSTSPRT DD SYSOUT=*                                                  00590002
//SYSPRINT DD SYSOUT=*                                                  00600002
//SYSOUT   DD SYSOUT=*                                                  00610002
//SYSDBOUT DD DUMMY                                                     00620002
//SYSABOUT DD DUMMY                                                     00630002
//SYSUDUMP DD DUMMY                                                     00640002
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI07T03),DISP=SHR                   00650002
