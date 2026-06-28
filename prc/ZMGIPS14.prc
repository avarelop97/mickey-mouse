//ZMGIPS14 PROC EMP=,FECH2=                                             00010004
//*                                                                     00020004
//**********************************************************************00030004
//*                     C A S A   D E  B O L S A                       *00040004
//*                     ========================                       *00050004
//*                    <<  PROCESO PROMOTORES  >>                      *00060004
//*                                                                    *00070004
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00080004
//*                                                                    *00090004
//*   OBJETIVO  :  SUSTITUIR AL VLD365 DEL AS/400 SOLO SEMANAL         *00100004
//*                EL ULTIMO DIA HABIL DE LA SEMANA                    *00110004
//*                                                                    *00120004
//*   REALIZACION : HECTOR PAZ CONCHA (ASATECK)                        *00130004
//*                                                                    *00140004
//**********************************************************************00150004
//*                      LOG DE MODIFICACIONES                         *00160004
//**********************************************************************00170004
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *00180004
//*--------------------------------------------------------------------*00190004
//* ACV  | 21-JUL-03|IDCEX30|        |ADECUACION A ESTANDARES DE P.U.  *00200004
//**********************************************************************00210004
//*ACV*SIVA*PENDIENTE*HPC***********************************************00220004
//**********************************************************************00230004
//* PROGRAMA: ZM3DG001                                                  00240004
//* OBJETIVO: RECIBE LOS PARAMETROS ENVIADOS DE CSP                     00250004
//*           Y LOS GRABA EN ARCHIVO                                    00260004
//**********************************************************************00270004
//PGI14P10 EXEC PGM=ZM3DG001,                                           00280004
//         PARM=('&EMP',' ',' ',' ',)                                   00290004
//PI601765 DD DUMMY                                                     00300004
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00310004
//SYSPRINT DD SYSOUT=*                                                  00320004
//SYSOUT   DD SYSOUT=*                                                  00330004
//SYSDBOUT DD SYSOUT=*                                                  00340004
//SYSABOUT DD DUMMY                                                     00350004
//SYSUDUMP DD DUMMY                                                     00360004
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGIPS14,                      00370004
//            DISP=(NEW,CATLG,DELETE),                                  00380004
//            SPACE=(CYL,(2,1),RLSE),                                   00390004
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00400004
//            UNIT=3390                                                 00410004
//*                                                                     00420004
//*---------------------------------------------------------------------00430004
//* PROGRAMA: ZM4DJ201                                                  00440004
//* OBJETIVO: REPORTE DE MOVTOS AUTOMATICOS DE SOC. DE INV.             00450004
//* PASO REINICIABLE POR RESTART Y RERUN DE CONTROL-M,R                 00460004
//*---------------------------------------------------------------------00470004
//**********************************************************************00480004
//* JLJH SEP/2021 NO SE BORRA CDAM HGO 24493 SI SE USA POR VALORES1     00490004
//**********************************************************************00500004
//PGI14P09 EXEC PGM=IKJEFT01,COND=(4,LT)                                00510004
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00520004
//SYSPRINT DD SYSOUT=*                                                  00530004
//SYSOUT   DD SYSOUT=*                                                  00540004
//SYSDBOUT DD SYSOUT=*                                                  00550004
//SYSABOUT DD SYSOUT=*                                                  00560004
//SYSUDUMP DD DUMMY                                                     00570004
//ZMJ201R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00580004
//ZMJ201R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00590004
//ZMJ201P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGIPS14,DISP=SHR              00600004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGI14T09),DISP=SHR                   00610004
//*                                                                     00620004
//*---------------------------------------------------------------------00630004
//* PROGRAMA: ZM4DJ004                                                  00640004
//* OBJETIVO: AJUSTAR EL PRECIO DE LAS EMISORAS QUE MANEJAN FESTIVOS DE 00650004
//*           MEXICO Y DE OTROS PAISES CUANDO ES FESTIVO EN EL OTRO     00660004
//*           PAIS Y ES HABIL EN MEXICO                                 00670004
//* PASO REINICIABLE POR RESTART Y RERUN DE CONTROL-M,R *** SOC. INVERS.00680004
//*---------------------------------------------------------------------00690004
//PGI14P9A EXEC PGM=IKJEFT01,COND=(4,LT)                                00700004
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00710004
//SYSPRINT DD SYSOUT=*                                                  00720004
//SYSOUT   DD SYSOUT=*                                                  00730004
//SYSDBOUT DD SYSOUT=*                                                  00740004
//SYSABOUT DD SYSOUT=*                                                  00750004
//SYSUDUMP DD DUMMY                                                     00760004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGI14T10),DISP=SHR                   00770004
//*                                                                     00780004
//*---------------------------------------------------------------------00790004
//* PROGRAMA: ZM4DJ245                                                  00800004
//* OBJETIVO: TRANSFIERE MOVIMIENTOS DE OPERAVA                         00810004
//*           EXTRAE DE OPERAVA LOS REGISTROS DONDE CLAVE DE OPERACIöN  00820004
//*           SEA 301 Y 401 PARA QUE SEAN PROCESADAS DURANTE LA INTERFAZ00830004
//*           DE INICIO DE DIA DEL AS/400  15/FEB/2000  SOFTTEK(JJH)    00840004
//*---------------------------------------------------------------------00850004
//PGI14P08 EXEC PGM=IKJEFT01,COND=(4,LT)                                00860004
//PI601765 DD DUMMY                                                     00870004
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00880004
//SYSPRINT DD SYSOUT=*                                                  00890004
//PSOCIN   DD DSN=MXCP.ZM.FIX.SIN.E&EMP..OPESACP,                       00900004
//            DISP=(NEW,CATLG,DELETE),                                  00910004
//            SPACE=(CYL,(10,5),RLSE),                                  00920004
//            DCB=(RECFM=FB,LRECL=94,BLKSIZE=0,DSORG=PS),               00930004
//            UNIT=3390                                                 00940004
//**********************************************************************00950004
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493                           00960004
//**********************************************************************00970004
//*ZMB239R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00980004
//*ZMB239R1 DD DSN=MXCP.ZM.FIX.ZMGIPS14.REPORTE1,                       00990004
//*            DISP=(NEW,CATLG,DELETE),                                 01000004
//*            SPACE=(CYL,(10,5),RLSE),                                 01010004
//*            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS),             01020004
//*            UNIT=3390                                                01030004
//*                                                                     01030005
//ZMB239R1 DD DUMMY                                                     01031004
//*                                                                     01031005
//**********************************************************************01040004
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493                           01050004
//**********************************************************************01060004
//SYSOUT   DD SYSOUT=*                                                  01070004
//SYSDBOUT DD SYSOUT=*                                                  01080004
//SYSABOUT DD DUMMY                                                     01090004
//SYSUDUMP DD DUMMY                                                     01100004
//ZMJ245P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGIPS14,DISP=SHR              01110004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGI14T08),DISP=SHR                   01120004
//*                                                                     01130004
//*---------------------------------------------------------------------01140004
//* PROGRAMA: CTMCND                                                    01150004
//* OBJETIVO: ACTIVA CONDICION EN CONTROL-M "PTEPED01_IN" PARA QUE SE   01160004
//*           EJECUTE EL PROCESO ESTADISTICO YA QUE PUEDE CORRER EN PA- 01170004
//*           RALELO CON ESTE A PARTIR DE ESTE PASO                     01180004
//* PASO REINICIABLE POR RESTART                                        01190004
//*---------------------------------------------------------------------01200004
//PGI14P07 EXEC PGM=CTMCND,PARM='ADD COND    PTEPED01_IN &FECHA',       01210004
//         COND=(4,LT)                                                  01220004
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   01230004
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   01240004
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 01250004
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   01260004
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   01270004
//PRTDBG   DD SYSOUT=*                                                  01280004
//SYSPRINT DD DUMMY                                                     01290004
//SYSUDUMP DD DUMMY                                                     01300004
//DAPRINT  DD SYSOUT=*                                                  01310004
//DACNDIN  DD DDNAME=SYSIN                                              01320004
//*                                                                     01330004
//*---------------------------------------------------------------------01340004
//* PROGRAMA: ZM4SGP03                                                  01350004
//* OBJETIVO: REPORTE A PROMOCION DE LA POSICION DEL DIA                01360004
//*           SUSTITUYE AL VLD365 DEL AS/400 (SOLO EL SEMANAL)          01370004
//* PASO REINICIABLE POR RESTART Y RERUN DE CONTROL-M,R                 01380004
//*       EL PASO DE CASA DE BOLSA.                                     01390004
//*---------------------------------------------------------------------01400004
//PGI14P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                01410004
//PI601765 DD DUMMY                                                     01420004
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    01430004
//SYSPRINT DD SYSOUT=*                                                  01440004
//SYSOUT   DD DSN=MXCP.ZM.FIX.ZMGIPS14.ARCH3,                           01450004
//            DISP=(NEW,CATLG,DELETE),                                  01460004
//            SPACE=(CYL,(50,25),RLSE),                                 01470004
//            DCB=(LRECL=133,RECFM=FBA,BLKSIZE=0,DSORG=PS),             01480004
//            UNIT=3390                                                 01490004
//SYSDBOUT DD SYSOUT=*                                                  01500004
//SYSABOUT DD SYSOUT=*                                                  01510004
//SYSUDUMP DD DUMMY                                                     01520004
//ZMGP03R1 DD DSN=MXCP.ZM.FIX.OTR.E&EMP..ZMGIPS14.ARCH2,                01530004
//            DISP=(NEW,CATLG,DELETE),                                  01540004
//            SPACE=(CYL,(50,25),RLSE),                                 01550004
//            DCB=(LRECL=152,RECFM=FBA,BLKSIZE=0,DSORG=PS),             01560004
//            UNIT=3390                                                 01570004
//ZMGP03P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGIPS14,DISP=SHR              01580004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGI14T06),DISP=SHR                   01590004
//*                                                                     01600004
//*---------------------------------------------------------------------01610004
//* PROGRAMA: ICEGENER                                                  01620004
//* OBJETIVO: MANDAR A SPOOL PROMOCION DE LA POSICION DEL DIA           01630004
//* PASO REINICIBLE POR RESTART.                                        01640004
//*---------------------------------------------------------------------01650004
//**********************************************************************01660004
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493                           01670004
//**********************************************************************01680004
//*PGI14P05 EXEC PGM=ICEGENER,COND=(4,LT)                               01690004
//*SYSUT1   DD DSN=MXCP.ZM.FIX.OTR.E&EMP..ZMGIPS14.ARCH2,DISP=SHR       01700004
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    01710004
//*SYSPRINT DD SYSOUT=*                                                 01720004
//*SYSOUT   DD SYSOUT=*                                                 01730004
//*SYSDBOUT DD SYSOUT=*                                                 01740004
//*SYSIN    DD DUMMY                                                    01750004
//*                                                                     01760004
//**********************************************************************01770004
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493                           01780004
//**********************************************************************01790004
//*---------------------------------------------------------------------01800004
//* PROGRAMA: ZM4SGP21                                                  01810004
//* OBJETIVO: GENERAR REPORTE SEMANAL DE POSICION Y SALDO (PROMOCION)   01820004
//* PASO PARA CASA DE BOLSA  VERSION OPTIMIZADA                         01830004
//*---------------------------------------------------------------------01840004
//PGI14P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                01850004
//PI601765 DD DUMMY                                                     01860004
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    01870004
//SYSPRINT DD SYSOUT=*                                                  01880004
//SYSOUT   DD DSN=MXCP.ZM.TMP.ZMGP03A1,                                 01890004
//            DISP=(NEW,CATLG,DELETE),                                  01900004
//            SPACE=(CYL,(10,5),RLSE),                                  01910004
//            DCB=(LRECL=133,RECFM=FBA,BLKSIZE=0,DSORG=PS),             01920004
//            UNIT=3390                                                 01930004
//SYSDBOUT DD SYSOUT=*                                                  01940004
//SYSABOUT DD SYSOUT=*                                                  01950004
//SYSUDUMP DD DUMMY                                                     01960004
//ZMGP03A1 DD DSN=MXCP.ZM.TMP.OTR.E&EMP..ZMGP03A1,                      01970004
//            DISP=(NEW,CATLG,DELETE),                                  01980004
//            SPACE=(CYL,(10,5),RLSE),                                  01990004
//            DCB=(DSORG=PS,LRECL=262,RECFM=FB,BLKSIZE=0),              02000004
//            UNIT=3390                                                 02010004
//ZMGP03A2 DD DSN=MXCP.ZM.TMP.OTR.E&EMP..ZMGP03A2,                      02020004
//            DISP=(NEW,CATLG,DELETE),                                  02030004
//            SPACE=(CYL,(10,5),RLSE),                                  02040004
//            DCB=(DSORG=PS,LRECL=174,RECFM=FB,BLKSIZE=0),              02050004
//            UNIT=3390                                                 02060004
//ZMGP03A3 DD DSN=MXCP.ZM.TMP.OTR.E&EMP..ZMGP03A3,                      02070004
//            DISP=(NEW,CATLG,DELETE),                                  02080004
//            SPACE=(CYL,(10,5),RLSE),                                  02090004
//            DCB=(DSORG=PS,LRECL=156,RECFM=FB,BLKSIZE=0),              02100004
//            UNIT=3390                                                 02110004
//ZMGP03A4 DD DSN=MXCP.ZM.TMP.OTR.E&EMP..ZMGP03A4,                      02120004
//            DISP=(NEW,CATLG,DELETE),                                  02130004
//            SPACE=(CYL,(10,5),RLSE),                                  02140004
//            DCB=(DSORG=PS,LRECL=87,RECFM=FB,BLKSIZE=0),               02150004
//            UNIT=3390                                                 02160004
//ZMGP03A5 DD DSN=MXCP.ZM.TMP.OTR.E&EMP..ZMGP03A5,                      02170004
//            DISP=(NEW,CATLG,DELETE),                                  02180004
//            SPACE=(CYL,(10,5),RLSE),                                  02190004
//            DCB=(DSORG=PS,LRECL=99,RECFM=FB,BLKSIZE=0),               02200004
//            UNIT=3390                                                 02210004
//SORTWK1  DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         02220004
//SORTWK2  DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         02230004
//SORTWK3  DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         02240004
//SORTWK4  DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         02250004
//SORTWK5  DD UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         02260004
//ZMGP03R1 DD DSN=MXCP.ZM.FIX.ZMGP03B1,                                 02270004
//            DISP=(NEW,CATLG,DELETE),                                  02280004
//            SPACE=(CYL,(10,5),RLSE),                                  02290004
//            DCB=(DSORG=PS,LRECL=147,RECFM=FB,BLKSIZE=0),              02300004
//            UNIT=3390                                                 02310004
//ZMGP03P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGIPS14,DISP=SHR              02320004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGI14T04),DISP=SHR                   02330004
//*                                                                     02340004
//*---------------------------------------------------------------------02350004
//* PROGRAMA: ZM4DGP01                                                  02360004
//* OBJETIVO: REPORTE A PROMOCION DE LAS LIQUIDACIONES                  02370004
//*           SUSTITUYE AL VLD505 DEL AS/400 (DIARIO)                   02380004
//*           LO GENERA A ARCHIVO SECUENCIAL ...180299  RAT             02390004
//* PASO REINICIABLE POR RESTART Y RERUN DE CONTROL-M,R *** PROMOTORES  02400004
//* PASO PARA CASA DE BOLSA                                             02410004
//*---------------------------------------------------------------------02420004
//PGI14P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                02430004
//PI601765 DD DUMMY                                                     02440004
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    02450004
//SYSPRINT DD SYSOUT=*                                                  02460004
//SYSOUT   DD DSN=MXCP.ZM.FIX.REPOFCB.SPOOL,                            02470004
//            DISP=(NEW,CATLG,DELETE),                                  02480004
//            SPACE=(CYL,(10,5),RLSE),                                  02490004
//            DCB=(LRECL=133,RECFM=FBA,BLKSIZE=0,DSORG=PS),             02500004
//            UNIT=3390                                                 02510004
//SYSDBOUT DD SYSOUT=*                                                  02520004
//SYSABOUT DD SYSOUT=*                                                  02530004
//SYSUDUMP DD DUMMY                                                     02540004
//ZMGP01R1 DD DSN=MXCP.ZM.FIX.OTR.E&EMP..ZMGIPS14.REPOFCB,              02550004
//            DISP=(NEW,CATLG,DELETE),                                  02560004
//            SPACE=(CYL,(10,5),RLSE),                                  02570004
//            DCB=(LRECL=133,RECFM=FBA,BLKSIZE=0,DSORG=PS),             02580004
//            UNIT=3390                                                 02590004
//*ZMGP01R2 DD DSN=GFPP.CB.FIX.LIQM.CBOLSA.F%%ODATE (NOMBRE PU) (CB-PU) 02600004
//ZMGP01R2 DD DSN=SIVA.OTR.FIX.E&EMP..LIQM.CBOLSA.F&FECH2,              02610004
//            DISP=(NEW,CATLG,DELETE),                                  02620004
//            SPACE=(CYL,(10,5),RLSE),                                  02630004
//            DCB=(LRECL=133,RECFM=FBA,BLKSIZE=0,DSORG=PS),             02640004
//            UNIT=3390                                                 02650004
//ZMGP01P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMGIPS14,DISP=SHR              02660004
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGI14T03),DISP=SHR                   02670004
//*                                                                     02680004
//*---------------------------------------------------------------------02690004
//* PROGRAMA: ICEGENER                                                  02700004
//* OBJETIVO: MANDA AL SPOOL PROMOCION DE LAS LIQUIDACIONES             02710004
//* PASO REINICIABLE                                                    02720004
//*---------------------------------------------------------------------02730004
//**********************************************************************02740004
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493                           02750004
//**********************************************************************02760004
//*PGI14P02 EXEC PGM=ICEGENER,COND=(4,LT)                               02770004
//*SYSPRINT DD SYSOUT=*                                                 02780004
//*SYSOUT   DD SYSOUT=*                                                 02790004
//*SYSIN    DD DUMMY                                                    02800004
//*SYSUT1   DD DSN=MXCP.ZM.FIX.OTR.E&EMP..ZMGIPS14.REPOFCB,DISP=SHR     02810004
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    02820004
//*                                                                     02830004
//**********************************************************************02840004
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493                           02850004
//**********************************************************************02860004
//*---------------------------------------------------------------------02870004
//* PROGRAMA: ICEGENER                                                  02880004
//* OBJETIVO: MANDA AL SPOOL SITUACION DEL EFECTIVO POR PROMOTOR        02890004
//* PASO REINICIABLE                                                    02900004
//*---------------------------------------------------------------------02910004
//**********************************************************************02920004
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493                           02930004
//**********************************************************************02940004
//*PGI14P01 EXEC PGM=ICEGENER,COND=(4,LT)                               02950004
//*SYSPRINT DD SYSOUT=*                                                 02960004
//*SYSOUT   DD SYSOUT=*                                                 02970004
//*SYSIN    DD DUMMY                                                    02980004
//**SYSUT1   DD DSN=GFPP.CB.FIX.LIQM.CBOLSA.F%%ODATE (NOMBRE PU) (CB-PU)02990004
//*SYSUT1   DD DSN=SIVA.OTR.FIX.E&EMP..LIQM.CBOLSA.F&FECH2,DISP=SHR     03000004
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD'),                   03010004
//*            DCB=(LRECL=134,RECFM=FBA,BLKSIZE=0)                      03020004
//**                                                                    03030004
//**********************************************************************03040004
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493                           03050004
//**********************************************************************03060004
