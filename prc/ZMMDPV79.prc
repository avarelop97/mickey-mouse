//ZMMDPV79 PROC                                                         00010002
//*-------------------------------------------------------------------- 00020002
//* IMPORTANTE EN LA CORRIDA DE ESTE PROCESO EVENTUAL UTILIZADO CUANDO  00030002
//* ALGUIEN OPERA EN BPIGO CONTRATOS YA MIGRADOS A MUV(CASI POSTERIOR   00040002
//* A LOS DIA DE MIGRACION  ( SOLO AFECTA MOVIMIENTOS NO CARTERAS )     00050002
//*                                                                     00060002
//* CONTIENE LOS SIGUIENTES PASOS:                                      00070002
//*   - BORRA TABLAS ESPEJO, LIBERAR PREVIAMENTE PGM ZM4VMW50, P/CAMBIAR00080002
//*     FECHA EN MDDCST, DE LO CONTRARIO SE BORRARIA PRODUCCION OJOJOJO 00090002
//*   - LA SEGUNDA FASE ES LA GENERACION DE MOVIMIENTOS EN ZMDTMG1, Y LA00100002
//*   - LA TERCERA ES LA COPIA DE ZMDTMG1 A OPERA.                      00110002
//*                                                                     00120002
//* FIN OSCT, 28 DE MAYO DEL 2007                                       00130002
//*-------------------------------------------------------------------- 00140002
//*                                                                     00150002
//*-------------------------------------------------------------------- 00160002
//* VALIDAR QUE EL PROGRAMA YA SE HAYA MODIFICADO, SINO SE BORRA MDDCST 00170002
//*                                         OOOO JJJJJ OOOOOO           00180002
//* CORRE PGM: ZM4VMW50 BORRA TABLAS DE MIGRACION                       00190002
//*-------------------------------------------------------------------- 00200002
//PMD79P06 EXEC PGM=IKJEFT01                                            00210002
//SYSTSPRT DD SYSOUT=*                                                  00220002
//SYSPRINT DD SYSOUT=*                                                  00230002
//SYSOUT   DD SYSOUT=*                                                  00240002
//SYSDBOUT DD SYSOUT=*                                                  00250002
//SYSABOUT DD DUMMY                                                     00260002
//SYSUDUMP DD DUMMY                                                     00270002
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA0T01),DISP=SHR                   00280002
//*-------------------------------------------------------------------- 00290002
//*                 ***  LO MANDA EJECUTAR EL BCMDCVA3  ***             00300002
//* SORT DEL ARCHIVO MOVHIS POR EL CAMPO CUENTA BPIGO                   00310002
//*-------------------------------------------------------------------- 00320002
//PMD79P05 EXEC PGM=ICEMAN,COND=(4,LT)                                  00330002
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.MOVHIS,DISP=SHR                    00390002
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG1.MOVHIS.SORT,                         00400002
//            DISP=(NEW,CATLG,DELETE),                                  00410002
//            SPACE=(CYL,(10,05),RLSE),                                 00420002
//            DCB=(DSORG=PS,LRECL=550,RECFM=FB,BLKSIZE=0),              00430002
//            UNIT=3390                                                 00440002
//SYSOUT   DD SYSOUT=*                                                  00450002
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDA3T04),DISP=SHR                   00460002
//*-------------------------------------------------------------------- 00470002
//* CORRE PGM:ZM4VMW09 (MOVHIS) PARA ENCONTRAR ICONCEPT (ESC Y CTA) MUV 00480002
//*-------------------------------------------------------------------- 00490002
//PMD79P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00500002
//ZMMW09A1 DD DSN=MXCP.ZM.WKF.MIG1.MOVHIS.SORT,DISP=SHR                 00510002
//ZMMW09A2 DD DSN=MXCP.ZM.FIX.MIG1.MOVHIS.CESC550,                      00520002
//            DISP=(NEW,CATLG,DELETE),                                  00530002
//            SPACE=(CYL,(10,05),RLSE),                                 00540002
//            DCB=(RECFM=FB,LRECL=550,BLKSIZE=0,DSORG=PS),              00550002
//            UNIT=3390                                                 00560002
//ZMMW09A3 DD DSN=MXCP.ZM.FIX.MIG1.MOVHIS.ESC0100,                      00570002
//            DISP=(NEW,CATLG,DELETE),                                  00580002
//            SPACE=(CYL,(10,05),RLSE),                                 00590002
//            DCB=(RECFM=FB,LRECL=100,BLKSIZE=0,DSORG=PS),              00600002
//            UNIT=3390                                                 00610002
//SYSTSPRT DD SYSOUT=*                                                  00620002
//SYSPRINT DD SYSOUT=*                                                  00630002
//SYSOUT   DD SYSOUT=*                                                  00640002
//SYSDBOUT DD SYSOUT=*                                                  00650002
//SYSABOUT DD DUMMY                                                     00660002
//SYSUDUMP DD DUMMY                                                     00670002
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA3T03),DISP=SHR                   00680002
//*-------------------------------------------------------------------- 00690002
//* CORRE PGM:ZM4VMW28 (MOVHIS) LLENA CAMPOS PARA EL ZM4VMW27           00700002
//*-------------------------------------------------------------------- 00710002
//PMD79P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00720002
//ZMMW28A1 DD DSN=MXCP.ZM.FIX.MIG1.MOVHIS.CESC550,DISP=SHR              00730002
//ZMMW28A2 DD DSN=MXCP.ZM.FIX.MIG1.MOVHIS.L500PG28,                     00740002
//            DISP=(NEW,CATLG,DELETE),                                  00750002
//            SPACE=(CYL,(10,05),RLSE),                                 00760002
//            DCB=(RECFM=FB,LRECL=500,BLKSIZE=0,DSORG=PS),              00770002
//            UNIT=3390                                                 00780002
//ZMMW28A3 DD DSN=MXCP.ZM.FIX.MIG1.MOVHIS.L500ER28,                     00790002
//            DISP=(NEW,CATLG,DELETE),                                  00800002
//            SPACE=(CYL,(10,05),RLSE),                                 00810002
//            DCB=(RECFM=FB,LRECL=500,BLKSIZE=0,DSORG=PS),              00820002
//            UNIT=3390                                                 00830002
//ZMMW28A4 DD DSN=MXCP.ZM.FIX.MIG1.MOVHIS.L150ER28,                     00840002
//            DISP=(NEW,CATLG,DELETE),                                  00850002
//            SPACE=(CYL,(10,05),RLSE),                                 00860002
//            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS),              00870002
//            UNIT=3390                                                 00880002
//SYSTSPRT DD SYSOUT=*                                                  00890002
//SYSPRINT DD SYSOUT=*                                                  00900002
//SYSOUT   DD SYSOUT=*                                                  00910002
//SYSDBOUT DD SYSOUT=*                                                  00920002
//SYSABOUT DD DUMMY                                                     00930002
//SYSUDUMP DD DUMMY                                                     00940002
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA3T02),DISP=SHR                   00950002
//*-------------------------------------------------------------------- 00960002
//* CORRE PGM:ZM4VMW27 (MOVHIS) CARGA OPERA                             00970002
//*-------------------------------------------------------------------- 00980002
//PMD79P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00990002
//ZMMW27A1 DD DSN=MXCP.ZM.FIX.MIG1.MOVHIS.L500PG28,DISP=SHR             01000002
//ZMMW27A2 DD DSN=MXCP.ZM.FIX.MIG1.MOVHIS.L500PG27,                     01010002
//            DISP=(NEW,CATLG,DELETE),                                  01020002
//            SPACE=(CYL,(10,05),RLSE),                                 01030002
//            DCB=(RECFM=FB,LRECL=500,BLKSIZE=0,DSORG=PS),              01040002
//            UNIT=3390                                                 01050002
//ZMMW27A3 DD DSN=MXCP.ZM.FIX.MIG1.MOVHIS.L150ER27,                     01060002
//            DISP=(NEW,CATLG,DELETE),                                  01070002
//            SPACE=(CYL,(10,05),RLSE),                                 01080002
//            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS),              01090002
//            UNIT=3390                                                 01100002
//SYSTSPRT DD SYSOUT=*                                                  01110002
//SYSPRINT DD SYSOUT=*                                                  01120002
//SYSOUT   DD SYSOUT=*                                                  01130002
//SYSDBOUT DD SYSOUT=*                                                  01140002
//SYSABOUT DD DUMMY                                                     01150002
//SYSUDUMP DD DUMMY                                                     01160002
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA3T01),DISP=SHR                   01170002
//*---------------------------------------------------------------------01180002
//*                          PGM   ZM4VMW70                             01190002
//*  PROGRAMA QUE PASA L.A INFORMACION DE LA TABLA ZMDTMG1 A OPERA      01200002
//*---------------------------------------------------------------------01210002
//PMD79P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                01220002
//SYSTSPRT DD SYSOUT=*                                                  01230002
//SYSPRINT DD SYSOUT=*                                                  01240002
//SYSOUT   DD SYSOUT=*                                                  01250002
//SYSDBOUT DD SYSOUT=*                                                  01260002
//SYSABOUT DD DUMMY                                                     01270002
//SYSUDUMP DD DUMMY                                                     01280002
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD70T01),DISP=SHR                   01290002
//*---------------------------------------------------------------------01300002
