//ZMHCPD29 PROC                                                         00000101
//*                                                                     00000200
//**********************************************************************00000300
//*                                                                    *00000400
//* SISTEMA        :  SISTEMA DE MERCADO DE CAPITALES.                 *00000500
//*                                                                    *00000600
//* PROCESO        :  ZMHCPD29 - GENERA INFORMACION DE LA CASA DE BOLSA*00000701
//*                                                                    *00000900
//* OBJETIVO       :  GENERA INFORMACION DE LA CASA DE BOLSA.          *00001000
//*                   DE MERCADO DE CAPITALES.                         *00001100
//*                                                                    *00001200
//* CORRE                                                              *00001300
//* ANTES DE       :  NINGUNO                                          *00001400
//*                                                                    *00001500
//* DESPUES DE     :  A SOLICITUD DEL USUARIO.                         *00001600
//*                                                                    *00001900
//* REALIZO        :  ERNESTO MANUEL CUAUTLE MARTINEZ.                 *00002000
//*                                                                    *00002100
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA.   *00002200
//**********************************************************************00002300
//*                                                                    *00002400
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00002500
//*  PHC29P02     GRABA EN UN ARCHIVO SECUENCIAL.                      *00002603
//**********************************************************************00002700
//*                     ===   INICIO DE     ===                        *00003000
//*                     ===   CAPITALES     ===                        *00003100
//**********************************************************************00003200
//PHC29P02 EXEC PGM=ZM3DG001,                                           00003302
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00003400
//ZMG001A1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHCPD29,                   00003501
//            DISP=(NEW,CATLG,DELETE),                                  00003600
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00003700
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)                          00003800
//SYSOUT   DD SYSOUT=*                                                  00003900
//SYSDBOUT DD SYSOUT=*                                                  00004000
//SYSABOUT DD DUMMY                                                     00004100
//SYSUDUMP DD DUMMY                                                     00004200
//*                                                                     00004300
//**********************************************************************00005000
//* OBJETIVO : GENERA INFORMACION DE CASA DE BOLSA.                    *00007400
//**********************************************************************00007700
//PHC29P01 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)                  00007802
//*                                                                     00007900
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR                    00008000
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP                  00008100
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS                            00008200
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG                     00008300
//*                                                                     00008400
//DMPRINT   DD SYSOUT=*                                                 00008500
//SYSPRINT  DD SYSOUT=*                                                 00008600
//NDMCMDS   DD SYSOUT=*                                                 00008700
//SYSUDUMP  DD DUMMY                                                    00008800
//SYSIN     DD *                                                        00008900
  SIGNON USERID=(NDMUSER)                                        -      00009000
         ESF=YES                                                        00009100
   SUBMIT PROC=NBHTND19                                          -      00009200
       &DSN2=&INT2                                               -      00009302
       &DSN1=&INT1                                                      00009400
  SIGNOFF                                                               00009500
//**********************************************************************00009600
//*                 F I N   Z M H C P D 2 9                            *00009702
//**********************************************************************00009800
