//ZMHEPD05 PROC                                                         00010000
//**********************************************************************00030000
//*                     C A S A   D E  B O L S A                       *00040000
//*                     ========================                       *00050000
//*                    << MERCADO DE CAPITALES >>                      *00060000
//*                                                                    *00070000
//*   APLICACION       :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)        *00080000
//*                                                                    *00090000
//*   PROCEDIM.        :  ZMHEPD05                                     *00100000
//*                                                                    *00110000
//*   OBJETIVO         :  GENERAR ARCHIVO CON EL FORMATO TIPO IN       *00120000
//*                       RECIBIDO DE LA BMV.                          *00130000
//*                                                                    *00140000
//*   CORRE DESPUES DE :  PROCESO CICLICO EN HORARIO LIMITADO          *00150000
//*                       A PETICION DEL USUARIO                       *00160000
//*                                                                    *00170000
//*   PERIODICIDAD     :  SE EJECUTA EN INTERVALOS DE CINCO MINUTOS    *00180000
//*                                                                    *00190000
//*   ELABORADO POR    :  H. ABRAHAM JUAREZ PI#ON.                     *00200000
//*                                                                    *00210000
//*   FECHA            :  AGOSTO DEL 2003.                             *00220000
//*                                                                    *00230000
//*   MODIFICO         :  ERNESTO MANUEL CUAUTLE MARTINEZ              *00232000
//*   FECHA            :  2004/11/16                                   *00232100
//*   OBJETIVO         :  CAMBIO DE NOMBRE, DEL ARCHIVO TIPOIN.        *00233000
//*                                                                    *00239100
//**********************************************************************00240000
//*                                                                    *00250000
//*  PASO:  3     ENCENDER EVENTO CTLPROC (FTR) PARA INDICAR FIN DE    *00260000
//*  PHE05P03     TRANSMISION DEL FORMATO TIPO IN.                     *00270000
//*                                                   PROG: ZM4DHW32   *00280000
//**********************************************************************00290000
//PHE05P03 EXEC PGM=IKJEFT01                                            00300001
//*                                                                     00310000
//SYSTSPRT DD SYSOUT=*                                                  00320000
//SYSPRINT DD SYSOUT=*                                                  00330000
//SYSOUT   DD SYSOUT=*                                                  00340000
//SYSDBOUT DD SYSOUT=*                                                  00350000
//SYSABOUT DD DUMMY                                                     00360000
//SYSUDUMP DD DUMMY                                                     00370000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE05T03),DISP=SHR                   00380000
//*                                                                     00381000
//**********************************************************************00390000
//*                                                                    *00400000
//*  PASO:  2     RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN      *00410000
//*  PHE05P02     ARCHIVO SECUENCIAL.                                  *00420000
//*                                                   PROG: ZM3DG001   *00430000
//**********************************************************************00440000
//PHE05P02 EXEC PGM=ZM3DG001,PARM=('&EMP','    ','     ','     ',),     00450000
//            COND=(4,LT)                                               00460000
//*                                                                     00470000
//PI601765 DD DUMMY                                                     00480000
//*                                                                     00490000
//ZMG001A1 DD DSN=SIVA.MDC.WKF.E&EMP..PARAM.ZMHEPD04,                   00500000
//            DISP=(NEW,CATLG,DELETE),                                  00510000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00520000
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00530000
//SYSTSPRT DD SYSOUT=*                                                  00540000
//SYSPRINT DD SYSOUT=*                                                  00550000
//SYSOUT   DD SYSOUT=*                                                  00560000
//SYSDBOUT DD SYSOUT=*                                                  00570000
//SYSABOUT DD DUMMY                                                     00580000
//SYSUDUMP DD DUMMY                                                     00590000
//*                                                                     00600000
//**********************************************************************00610000
//*  PASO:  1     GENERA ARCHIVO CON EL FORMATO TIPO IN RECIBIDO       *00620000
//*               DE B.M.V.                                            *00630000
//*  PHE05P01                                                          *00640000
//*                                                         ZM4DHW38   *00650000
//**********************************************************************00660000
//PHE05P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00670000
//*                                                                     00680000
//ZMHW38A1 DD DSN=SIVA.MDC.WKF.E&EMP..PARAM.ZMHEPD04,DISP=SHR           00690000
//*                                                                     00700000
//ZMHW38A2 DD DSN=SIVA.MDC.FIX.E&EMP..TIPOIN.ZM4DHW27.D&FECHA,          00710000
//            DISP=(NEW,CATLG,CATLG),                                   00720000
//            DCB=(LRECL=204,RECFM=FB,BLKSIZE=0,DSORG=PS),              00730000
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)                          00740000
//*                                                                     00760000
//SYSTSPRT DD SYSOUT=*                                                  00770000
//SYSPRINT DD SYSOUT=*                                                  00780000
//SYSOUT   DD SYSOUT=*                                                  00790000
//SYSDBOUT DD SYSOUT=*                                                  00800000
//SYSABOUT DD DUMMY                                                     00810000
//SYSUDUMP DD DUMMY                                                     00820000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE05T01),DISP=SHR                   00830000
