//CAD0700   PROC                                                        00010004
//**********************************************************************00020004
//*                                                                    *00030004
//*     BBB  BBB  VV VV    PPPP RRRR OOOO BBB  U  U RRRR SSSS AAAA     *00040004
//*     B BB B BB VV VV    P PP R RR O  O B BB U  U R RR S    A  A     *00050004
//*     BBBB BBBB VV VV @@ PPPP RRRR O  O BBBB U  U RRRR SSSS AAAA     *00060004
//*     B BB B BB  VVV     P    RR   O  O B BB U  U RR      S A  A     *00070004
//*     BBB  BBB    V      P    R RR OOOO BBB  UUUU R RR SSSS A  A     *00080004
//*                                                                    *00090004
//**********************************************************************00100004
//*                                                                    *00110004
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00120004
//*                                                                    *00130004
//* PROCESO        :  PCICAD07 3RA. ULTIMA PARTE.                      *00140004
//*                   CIERRE DE DIA DEL MODULO DE CAPITALES            *00150004
//*                                                                    *00160004
//* OBJETIVO       :  CERRAR LA OPERACION DEL DIA DE CAPITALES ENVIADO *00170004
//*                   POR CONTROL-M                                    *00180004
//*                                                                    *00190004
//* CORRE                                                              *00200004
//* ANTES DE       :  PCIVAD01 (CIERRE DE VALORES)                     *00210004
//*                                                                    *00220004
//* DESPUES DE     :  PCICAD06(2DA. PARTE CIERRE DE CAPITALES).        *00230004
//*                                                                    *00240004
//* REALIZO        :  JOEL GONZALEZ MARTINEZ                           *00250004
//* FECHA          :  FEBRERO    1992                                  *00260004
//*                                                                    *00270004
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *00280004
//*                                                                    *00290004
//**********************************************************************00300004
//*                                                                    *00310004
//*--------------------------------------------------------------------*00320004
//*                       * IDCAMS  *                                  *00330004
//* OBJETIVO: DELETE ARCHIVO SIVA.MDD.PROPIA1                          *00340004
//*--------------------------------------------------------------------*00350004
//CAD0719  EXEC PGM=IDCAMS,REGION=4M                                    00360004
//SYSIN  DD DSN=SIVA.CARDS(CAD0719),DISP=SHR                            00370004
//*YSTSIN  DD DSN=SIVA.CARDS(CAD0719),DISP=SHR                          00380004
//SYSPRINT DD SYSOUT=*                                                  00390004
//SYSOUT   DD SYSOUT=*                                                  00400004
//*--------------------------------------------------------------------*00410004
//*VOBN64D GENERAR ARCHIVO DE OPERACIONES DE LA CUENTA 5035944         *00420004
//*--------------------------------------------------------------------*00430004
//CAD0718  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00440004
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=1320                                 00450004
//SYSPRINT DD SYSOUT=*                                                  00460004
//SYSOUT   DD SYSOUT=*                                                  00470004
//PRINT    DD SYSOUT=*                                                  00480004
//SYSDBOUT DD SYSOUT=*                                                  00490004
//SYSABOUT DD DUMMY                                                     00500004
//SYSUDUMP DD DUMMY                                                     00510004
//VOBN64A1 DD DSN=SIVA.MDD.FIX.PROPIA1,                                 00520004
//           DISP=(NEW,CATLG,CATLG),                                    00530004
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=115,BLKSIZE=0),              00540004
//           UNIT=SYSDA,                                                00550004
//           SPACE=(TRK,(5,5))                                          00560004
//SYSABOUT DD  DUMMY                                                    00570004
//SYSUDUMP DD  DUMMY                                                    00580004
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0718),DISP=SHR                          00590004
//*--------------------------------------------------------------------*00600004
//*VOBN64D GENERAR ARCHIVO DE OPERACIONES DE LA CUENTA 5164017         *00610004
//*--------------------------------------------------------------------*00620004
//CAD0717  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00630004
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=2420                                00640004
//SYSPRINT DD  SYSOUT=*                                                 00650004
//SYSOUT   DD  SYSOUT=*                                                 00660004
//SYSDBOUT DD  SYSOUT=*                                                 00670004
//VOBN64A1 DD DSN=SIVA.MDD.FIX.PROPIA1,                                 00680004
//           DISP=MOD                                                   00690004
//SYSABOUT DD  DUMMY                                                    00700004
//SYSUDUMP DD  DUMMY                                                    00710004
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0717),DISP=SHR                          00720004
//*--------------------------------------------------------------------*00730004
//*VOBN64D GENERAR ARCHIVO DE OPERACIONES DE LA CUENTA 5207410         *00740004
//*--------------------------------------------------------------------*00750004
//CAD0716  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00760004
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=2420                                00770004
//SYSPRINT DD  SYSOUT=*                                                 00780004
//SYSOUT   DD  SYSOUT=*                                                 00790004
//SYSDBOUT DD  SYSOUT=*                                                 00800004
//VOBN64A1 DD DSN=SIVA.MDD.FIX.PROPIA1,                                 00810004
//           DISP=MOD                                                   00820004
//SYSABOUT DD  DUMMY                                                    00830004
//SYSUDUMP DD  DUMMY                                                    00840004
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0716),DISP=SHR                          00850004
//*-------------------------------------------------------------------- 00860004
//*VOBT48D EMITIR REPTE DE VTAS CON CPAS DE 2 DIAS HABILES ANTES        00870004
//*-------------------------------------------------------------------- 00880004
//* CAD0715  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)        00890004
//* SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=1320                               00900004
//* VOBT48R1 DD SYSOUT=(O,,TV93)                                        00910004
//* VOBT48R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//* SYSPRINT DD SYSOUT=*                                                00920004
//* SYSOUT   DD SYSOUT=*                                                00930004
//* PRINT    DD SYSOUT=*                                                00940004
//* SYSDBOUT DD SYSOUT=*                                                00950004
//* SYSABOUT DD DUMMY                                                   00960004
//* SYSUDUMP DD DUMMY                                                   00970004
//* SYSTSIN  DD DSN=SIVA.CARDS(CAD0715),DISP=SHR                        00980004
//*-------------------------------------------------------------------- 00990004
//*VOBT47D GENERAR ARCHS CON OPERACION DEL DIA                          01000004
//*-------------------------------------------------------------------- 01010004
//CAD0714  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          01020004
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=133                                  01030004
//VOBT47A1 DD DSN=SIVA.MDC.FIX.VOBT47A1,                                01040004
//           DISP=(NEW,CATLG,DELETE),                                   01050004
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=152,BLKSIZE=0),              01060004
//           UNIT=SYSDA,                                                01070004
//           SPACE=(TRK,(5,5))                                          01080004
//VOBT47A2 DD DSN=SIVA.MDC.FIX.VOBT47A2,                                01090004
//           DISP=(NEW,CATLG,DELETE),                                   01100004
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=152,BLKSIZE=0),              01110004
//           UNIT=SYSDA,                                                01120004
//           SPACE=(TRK,(5,5))                                          01130004
//VOBT47R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01140004
//SYSPRINT DD SYSOUT=*                                                  01140004
//SYSOUT   DD SYSOUT=*                                                  01150004
//SYSDBOUT DD SYSOUT=*                                                  01160004
//SYSABOUT DD DUMMY                                                     01170004
//SYSUDUMP DD DUMMY                                                     01180004
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0714),DISP=SHR                          01190004
//*-------------------------------------------------------------------- 01200004
//*VOBT45D EMITIR REPORTE DE VENTAS SIN POSICION A INICIO DE DIA        01210004
//*-------------------------------------------------------------------- 01220004
//CAD0713  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          01230004
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=133                                  01240004
//*VOBT45R1 DD SYSOUT=(O,,TV92)                                         01250004
//VOBT45R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*                                                  01260004
//SYSOUT   DD SYSOUT=*                                                  01270004
//SYSDBOUT DD SYSOUT=*                                                  01280004
//SYSABOUT DD DUMMY                                                     01290004
//SYSUDUMP DD DUMMY                                                     01300004
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0713),DISP=SHR                          01310004
//*-------------------------------------------------------------------- 01320004
//*        EMITIR REPORTE DE CANCELACION DE ORDENES X PROMOTOR          01330004
//*-------------------------------------------------------------------- 01340004
//*CAD0712  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)         01350004
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                   01360004
//*SYSPRINT DD SYSOUT=*                                                 01370004
//*VIBJ58R1 DD SYSOUT=(V,,TP44)                                         01380004
//*SYSOUT   DD SYSOUT=*                                                 01390004
//*SYSDBOUT DD SYSOUT=*                                                 01400004
//*SYSABOUT DD DUMMY                                                    01410004
//*SYSUDUMP DD DUMMY                                                    01420004
//*SYSTSIN  DD DSN=SIVA.CARDS(CAD0712),DISP=SHR                         01430004
//*-------------------------------------------------------------------- 01440004
//*        INICIALIZA EL CAMPO DE ASIGNADO HOY CTITASH DE ORDENES       01450004
//*-------------------------------------------------------------------- 01460004
//CAD0711  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          01470004
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    01480004
//SYSPRINT DD SYSOUT=*                                                  01490004
//SYSOUT   DD SYSOUT=*                                                  01500004
//SYSDBOUT DD SYSOUT=*                                                  01510004
//SYSABOUT DD DUMMY                                                     01520004
//SYSUDUMP DD DUMMY                                                     01530004
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0711),DISP=SHR                          01540004
//*-------------------------------------------------------------------- 01550004
//*        GENERACION DE CARTERA DE PROMOTORES                          01560004
//*-------------------------------------------------------------------- 01570004
//CAD0710  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          01580004
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    01590004
//SYSPRINT DD SYSOUT=*                                                  01600004
//SYSOUT   DD SYSOUT=*                                                  01610004
//SYSDBOUT DD SYSOUT=*                                                  01620004
//VOB526A1 DD DISP=(,PASS),UNIT=SYSDA,                                  01630004
//         DCB=(RECFM=FB,LRECL=61,BLKSIZE=0),                           01640004
//         SPACE=(TRK,(100,10),RLSE)                                    01650004
//SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(2))                                01660004
//SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(2))                                01670004
//SORTWK03 DD UNIT=SYSDA,SPACE=(CYL,(2))                                01680004
//SYSABOUT DD DUMMY                                                     01690004
//SYSUDUMP DD DUMMY                                                     01700004
//SYSABOUT DD DUMMY                                                     01710004
//SYSUDUMP DD DUMMY                                                     01720004
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0710),DISP=SHR                          01730004
//*-------------------------------------------------------------------  01740004
//*    CREA EL ARCHIVO DE ERRORES EN LA TRANSMISION (IDCAMS)            01750004
//*-------------------------------------------------------------------  01760004
//*CAD0703  EXEC  PGM=IDCAMS,COND=(4,LT)                                01770004
//*SYSPRINT DD SYSOUT=*                                                 01780004
//*SYSIN    DD DSN=SIVA.CARDS(CAD0703),DISP=SHR                         01790004
//*-------------------------------------------------------------------- 01800004
//*                           -- IDCAMS  --                             01810004
//*  OBJETIVO :                                                         01820004
//*            INICIALIZA LOS ARCHIVOS VSAM CON LOW VALUES PRA SU UTI-  01830004
//*            LIZACION POSTERIOR.                                      01840004
//*  PASO NO REINICIABLE POR RESTART                                    01850004
//*  EN CASO DE CANCELAR EJECUTAR POR SEPARADO DELETE DEFINE DE ARCHI   01860004
//*  VOS DEL PASO CAD0703 DE ESTE PROCEDIMIENTO Y DESPUES ESTE PASO     01870004
//*-------------------------------------------------------------------- 01880004
//*CAD0702  EXEC PGM=IDCAMS,REGION=4M,COND=(4,LT)                       01890004
//*INPUT1      DD  DSN=SIVA.MDC.FIX.ERROHEC.INICIAL,DISP=SHR            01900004
//*OUTPUT1     DD  DSN=SIVA.MDC.FIX.ERROHEC.NUEVOS.KC,DISP=SHR          01910004
//*INPUT2      DD  DSN=SIVA.MDC.FIX.ERROIMP.INICIAL,DISP=SHR            01920004
//*OUTPUT2     DD  DSN=SIVA.MDC.FIX.ERROIMP.NUEVOS.KC,DISP=SHR          01930004
//*SYSIN       DD  DSN=SIVA.CARDS(CAD0702),DISP=SHR                     01940004
//*SYSPRINT    DD  SYSOUT=*                                             01950004
//*-------------------------------------------------------------------- 01960004
//*        MARCA EL FIN DE LA ASIGNACION DEFINITIVA                     01970004
//*-------------------------------------------------------------------- 01980004
//CAD0701  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          01990004
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    02000004
//SYSPRINT DD SYSOUT=*                                                  02010004
//SYSOUT   DD SYSOUT=*                                                  02020004
//SYSDBOUT DD SYSOUT=*                                                  02030004
//SYSABOUT DD DUMMY                                                     02040004
//SYSUDUMP DD DUMMY                                                     02050004
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0701),DISP=SHR                          02060004
//*                                                                     02070004
//*-------------------------------------------------------------------- 02080004
//*        INICIALIZA PARAMETROS  PARA PUENTE SQL                       02090004
//*-------------------------------------------------------------------- 02100004
//CAD0701A EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          02110004
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    02120004
//SYSPRINT DD SYSOUT=*                                                  02130004
//SYSOUT   DD SYSOUT=*                                                  02140004
//SYSDBOUT DD SYSOUT=*                                                  02150004
//SYSABOUT DD DUMMY                                                     02160004
//SYSUDUMP DD DUMMY                                                     02170004
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0701A),DISP=SHR                         02180004
//*-------------------------------------------------------------------- 02080004
//*VOBV14O ENVIA CARTERA OPERADOR A DESPACHADOR BP                      02090004
//*-------------------------------------------------------------------- 02100004
//CAD0701B EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          02110004
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    02120004
//SYSPRINT DD SYSOUT=*                                                  02130004
//SYSOUT   DD SYSOUT=*                                                  02140004
//SYSDBOUT DD SYSOUT=*                                                  02150004
//SYSABOUT DD DUMMY                                                     02160004
//SYSUDUMP DD DUMMY                                                     02170004
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0701B),DISP=SHR                         02180004
//*                                                                     02190004
