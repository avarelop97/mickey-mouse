//ZMHCPD23 PROC                                                         00000100
//*                                                                     00000200
//**********************************************************************00000300
//*                                                                    *00000400
//* SISTEMA        :  SISTEMA DE MERCADO DE CAPITALES.                 *00000500
//*                                                                    *00000600
//* PROCESO        :  ZMHCPD23 - GENERA INFORMACION DE LA CASA DE BOLSA*00000701
//*                                                                    *00000900
//* OBJETIVO       :  GENERA INFORMACION DE LA CASA DE BOLSA.          *00001001
//*                   DE MERCADO DE CAPITALES.                         *00001101
//*                                                                    *00001200
//* CORRE                                                              *00001300
//* ANTES DE       :  NINGUNO                                          *00001400
//*                                                                    *00001500
//* DESPUES DE     :  A SOLICITUD DEL USUARIO.                         *00001601
//*                                                                    *00001900
//* REALIZO        :  ERNESTO MANUEL CUAUTLE MARTINEZ.                 *00002001
//*                                                                    *00002100
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA.   *00002200
//**********************************************************************00002306
//*                                                                    *00002406
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00002506
//*  PHC23P02     GRABA EN UN ARCHIVO SECUENCIAL.                      *00002608
//**********************************************************************00002706
//*                     ===   INICIO DE     ===                        *00003006
//*                     ===   CAPITALES     ===                        *00003106
//**********************************************************************00003206
//PHC23P02 EXEC PGM=ZM3DG001,                                           00003306
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00003406
//ZMG001A1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHCPD23,                   00003506
//            DISP=(NEW,CATLG,DELETE),                                  00003606
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00003706
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00003806
//SYSOUT   DD SYSOUT=*                                                  00003906
//SYSDBOUT DD SYSOUT=*                                                  00004006
//SYSABOUT DD DUMMY                                                     00004106
//SYSUDUMP DD DUMMY                                                     00004206
//*                                                                     00004306
//**********************************************************************00005000
//* OBJETIVO : GENERA INFORMACION DE CASA DE BOLSA.                    *00007404
//**********************************************************************00007700
//PHC23P01 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)                  00007806
//*                                                                     00007900
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR                    00008002
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                  00008102
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS                            00008202
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                     00008302
//*                                                                     00008400
//DMPRINT   DD SYSOUT=*                                                 00008500
//SYSPRINT  DD SYSOUT=*                                                 00008600
//NDMCMDS   DD SYSOUT=*                                                 00008700
//SYSUDUMP  DD DUMMY                                                    00008800
//SYSIN     DD *                                                        00008900
  SIGNON USERID=(NDMUSER)                                        -      00009000
         ESF=YES                                                        00009100
   SUBMIT PROC=NBHTND19                                          -      00009202
       &DSN2='\\SBBV04\PUBLIC\PASO\TRANSFER.TXT'                 -      00009303
       &DSN1=&INT1                                                      00009407
  SIGNOFF                                                               00009500
//**********************************************************************00009600
//*                 F I N   Z M H C P D 2 3                            *00009705
//**********************************************************************00009800
