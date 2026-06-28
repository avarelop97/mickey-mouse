//ZMJTPD54 PROC                                                         00010020
//**********************************************************************00120022
//*                     C A S A   D E   B O L S A                      *00130022
//*                     =========================                      *00140022
//*                                                                    *00150022
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00160022
//*                                                                    *00170022
//*   OBJETIVO  :  GENERA ARCHIVO DE CLIENTE Y LO ENVIA AL SERVIDOR    *00180022
//*                NT.                                                 *00200022
//*                                                                    *00210022
//*   ESTE PROC CORRESPONDE A LA OPCION 5B DE LA TRANSACCION Z110.     *00220022
//*                                                                    *00230022
//**********************************************************************00240022
//********************************************************************* 00280000
//*                                                                   * 00290000
//*  PASO 4: GENERA ARCHIVO CON PARAMETROS DE LA LINEA.               * 00300000
//*                                                                   * 00340000
//********************************************************************* 00350000
//PJL54P04 EXEC PGM=ZM3DG000,                                           00360021
//         PARM=('&EMP','&SUC','&INT1','&INT2','&FEC',)                 00370021
//*                                                                     00380000
//PI601765 DD DUMMY                                                     00380100
//*                                                                     00380200
//ZMG001A1 DD DUMMY                                                     00410020
//*                                                                     00410030
//SYSTSPRT DD SYSOUT=*,                                                 00450000
//            DCB=BLKSIZE=0                                             00460000
//SYSPRINT DD SYSOUT=*                                                  00470000
//SYSOUT   DD SYSOUT=*                                                  00480000
//SYSDBOUT DD SYSOUT=*                                                  00490000
//SYSABOUT DD DUMMY                                                     00500000
//SYSUDUMP DD DUMMY                                                     00510000
//*                                                                     00520000
//********************************************************************* 00880000
//*                                                                   * 00890000
//*  PASO 3: GENERA ARCHIVO CON PRECIOS DE AFORES.                    * 00900000
//*                                                                   * 00910000
//********************************************************************* 00940000
//PJL54P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00950020
//*                                                                     00970000
//S1DQ9000 DD DSN=MXCP.ZM.TMP.ECBP.SZPR.PREC.SFTRHIST,                  00990019
//            DISP=(NEW,CATLG,DELETE),                                  01000000
//            SPACE=(CYL,(2,1),RLSE),                                   01001000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=131,BLKSIZE=0),              01002001
//            UNIT=3390                                                 01003000
//*                                                                     01010000
//SYSTSPRT DD SYSOUT=*,                                                 01020000
//            DCB=BLKSIZE=0                                             01030000
//SYSPRINT DD SYSOUT=*                                                  01040000
//SYSOUT   DD SYSOUT=*                                                  01050000
//SYSDBOUT DD SYSOUT=*                                                  01060000
//SYSABOUT DD DUMMY                                                     01070000
//SYSUDUMP DD DUMMY                                                     01080000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL54T03),DISP=SHR                   01090020
//*                                                                     01100000
//********************************************************************* 01110000
//*                                                                   * 01120000
//*  PASO 2: GENERA SYSIN PARA TRANSFERENCIA DE ARCHIVO HISTORICO.    * 01130000
//*                                                                   * 01140000
//********************************************************************* 01150000
//PJL54P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                01160020
//*                                                                     01180000
//E1DQ9000 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJLPD54,DISP=SHR           01190024
//S1DQ9000 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJTPD54.SYSIN,             01191024
//            DISP=(NEW,CATLG,DELETE),                                  01192000
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),               01193000
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          01194000
//*                                                                     01200000
//SYSTSPRT DD SYSOUT=*,                                                 01210000
//            DCB=BLKSIZE=0                                             01220000
//SYSPRINT DD SYSOUT=*                                                  01230000
//SYSOUT   DD SYSOUT=*                                                  01240000
//SYSDBOUT DD SYSOUT=*                                                  01250000
//SYSABOUT DD DUMMY                                                     01260000
//SYSUDUMP DD DUMMY                                                     01270000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL54T02),DISP=SHR                   01280020
//*                                                                     01290000
//**********************************************************************01300000
//*                                                                    *01310000
//*  PASO 1: REALIZA LA TRANSFERENCIA DEL ARCHIVO HISTORICO.           *01320000
//*                                                                    *01330000
//**********************************************************************01340000
//PJL54P01 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)                  01350023
//*                                                                     01360019
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB                    01370023
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                  01380023
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                     01400023
//DMPRINT   DD SYSOUT=*                                                 01410023
//SYSPRINT  DD SYSOUT=*                                                 01430023
//NDMCMDS   DD SYSOUT=*                                                 01430023
//SYSDUMP   DD SYSOUT=*                                                 01420023
//SYSIN     DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJTPD54.SYSIN,DISP=SHR    01450020
//*                                                                     01460000
//******************************************************************    01460100
//*                                                                     01460200
//*   PASO 0: BORRA ZMDT900.                                            01460300
//*                                                                     01460400
//******************************************************************    01460500
//PJL54P00 EXEC PGM=IKJEFT01,COND=(4,LT)                                01460600
//*                                                                     01460700
//SYSTSPRT DD SYSOUT=*,                                                 01460800
//            DCB=BLKSIZE=0                                             01460900
//SYSPRINT DD SYSOUT=*                                                  01461000
//SYSOUT   DD SYSOUT=*                                                  01461100
//SYSDBOUT DD SYSOUT=*                                                  01461200
//SYSABOUT DD DUMMY                                                     01461300
//SYSUDUMP DD DUMMY                                                     01461400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL54T00),DISP=SHR                   01461500
//*                                                                     01461600
//**********************************************************************01460100
//*                                                                    *01460200
//*   ACTUALIZA CTLPROC                                                *01460300
//*                                                                    *01460400
//**********************************************************************01460500
//PJL54P0A EXEC PGM=IKJEFT01,COND=(4,LT)                                01460600
//*                                                                     01460700
//SYSTSPRT DD SYSOUT=*,                                                 01460800
//            DCB=BLKSIZE=0                                             01460900
//SYSPRINT DD SYSOUT=*                                                  01461000
//SYSOUT   DD SYSOUT=*                                                  01461100
//SYSDBOUT DD SYSOUT=*                                                  01461200
//SYSABOUT DD DUMMY                                                     01461300
//SYSUDUMP DD DUMMY                                                     01461400
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL54T0A),DISP=SHR                   01461500
//*                                                                     01461600
