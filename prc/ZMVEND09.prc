//ZMVEND09 PROC                                                         00010002
//**********************************************************************00190001
//*                                                                    *00200001
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *00210001
//* PROCESO        :  CBJFCD18/CBVEND09                                *00220001
//*                                                                    *00230001
//* OBJETIVO       :  REPORTE DE TESORERIA FINDIA                      *00240001
//*                                                                    *00250001
//* CORRE                                                              *00260001
//* ANTES DE       :  EVENTUAL                                         *00270001
//*                                                                    *00280001
//* DESPUES DE     :  EVENTUAL                                         *00290001
//*                                                                    *00300001
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *00310001
//* FECHA          :  MAYO 2006                                        *00320001
//*                                                                    *00330001
//* OBSERVACION    :  ESTE PROCESO CORRE EVENTUAL UNICA VEZ            *00340001
//*                                                                    *00350001
//**********************************************************************00360001
//*                                                                    *00370001
//********************************************************************* 00380002
//* PROGRAMA: ZM3DG001                                                  00390002
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO                  00400002
//*           PARA SIGUIENTES PASOS                                     00410002
//********************************************************************* 00420002
//PJF18P06 EXEC PGM=ZM3DG001,                                           00430002
//             PARM=('&EMP','&SUC','&INT1','&INT2',)                    00440002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00450002
//SYSPRINT DD SYSOUT=*                                                  00460002
//SYSOUT   DD SYSOUT=*                                                  00470002
//SYSDBOUT DD SYSOUT=*                                                  00480002
//SYSABOUT DD DUMMY                                                     00490002
//SYSUDUMP DD DUMMY                                                     00500002
//*                                                                     00510002
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD18,                      00520002
//            DISP=(NEW,CATLG,DELETE),                                  00530002
//            SPACE=(CYL,(2,1),RLSE),                                   00540002
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00550002
//            UNIT=3390                                                 00560002
//********************************************************************* 00570002
//* PROGRAMA: ZM4DJ745                                                  00580002
//* OBJETIVO: CONCENTRADO DE BANCOS (BATCH)                             00590002
//********************************************************************* 00600002
//PJF18P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00610002
//ZMJ745A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD18,DISP=SHR              00620002
//*                                                                     00630002
//ZMJ745R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00640002
//*                                                                     00650002
//ZMJ745R2 DD DUMMY                                                     00660002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00670002
//SYSPRINT DD SYSOUT=*                                                  00680002
//SYSOUT   DD SYSOUT=*                                                  00690002
//SYSDBOUT DD SYSOUT=*                                                  00700002
//SYSABOUT DD SYSOUT=*                                                  00710002
//SYSUDUMP DD DUMMY                                                     00720002
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF18T06),DISP=SHR                   00730002
//*                                                                     00740002
