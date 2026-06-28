//AZIGDEFI PROC SALU=,SALS=,CICS=,                                      00000100
//        UPDR=,UPOL=,USAT=,UZPR=,UTIJ=,UCDJ=,                          00000200
//        UHER=,UMTY=,UTOR=,UCHI=,UMAZ=,UKRO=,                          00000300
//        USLP=,UGUA=,UZAC=,UJER=,ULEO=,UMOR=,                          00000400
//        UAGS=,UTAM=,UVER=,UJAL=,UMER=,UTOL=,                          00000500
//        UPUE=,UMMP=,USAN=,UZZZ=,UCUL=,UMMU=                           00000600
//**********************************************************************00000700
//*                                                                    *00001700
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00001800
//*                                                                    *00001900
//* PROCESO        :  SIVAXDEF                                         *00002000
//*                   CIERRE DE DIA DEL MODULO DE CAPITALES            *00002100
//*                                                                    *00002200
//* OBJETIVO       :  DAR DE ALTA LA CONDICION PARA QUE SE EJECUTE     *00002300
//*                   POR CONTROL-M EL CIERE DE CAPITALES              *00002400
//*                                                                    *00002500
//* CORRE                                                              *00002600
//* ANTES DE       :  ZMHCPD10 (CIERRE DE CAPITALES)                   *00002700
//*                                                                    *00002800
//* DESPUES DE     :  OPERACION DIARIA EN EL SIVA                      *00002900
//*                                                                    *00003000
//* REALIZO        :  ERNESTO MANUEL CUAUTLE MARTINEZ                  *00003100
//* FECHA          :  FEBRERO    2003.                                 *00003200
//*                                                                    *00003300
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA DIARIA    *00003400
//*                   SIEMPRE ANTES DEL CIERRE DE CAPITALES            *00003500
//*                                                                    *00003600
//**********************************************************************00003700
//*   ACTIVA LA CONDICION EN CONTROLM QUE CERRO EL MODULO CAPITALES    *00003800
//**********************************************************************00003900
//PASO01   EXEC  PGM=CTMCND,PARM='ADD COND     FINCAZ_OK      WDATE'    00004101
//*                                                                     00004200
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                 00005000
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                 00005100
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV               00005200
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                 00006000
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                 00008000
//FALSA1   DD   SYSOUT=(&SALU,&CICS,&UZPR)                              00009000
//FALSA2   DD   SYSOUT=&SALS                                            00010000
//PRTDBG   DD   SYSOUT=*                                                00020000
//SYSPRINT DD   DUMMY                                                   00030000
//SYSUDUMP DD   DUMMY                                                   00040000
//DAPRINT  DD   SYSOUT=*                                                00050000
//DACNDIN  DD   DDNAME=SYSIN                                            00060000
//*                                                                     00080000
//*     DD'S SE¦UELO   INICIO                                           00090000
//PDR472RX DD SYSOUT=(X,&CICS,&UPDR)                                    00100000
//POL472RX DD SYSOUT=(X,&CICS,&UPOL)                                    00110000
//SAT472RX DD SYSOUT=(X,&CICS,&USAT)                                    00120000
//ZPR472RX DD SYSOUT=(X,&CICS,&UZPR)                                    00130000
//TIJ472RX DD SYSOUT=(X,&CICS,&UTIJ)                                    00140000
//CDJ472RX DD SYSOUT=(X,&CICS,&UCDJ)                                    00150000
//HER472RX DD SYSOUT=(X,&CICS,&UHER)                                    00160000
//MTY472RX DD SYSOUT=(X,&CICS,&UMTY)                                    00170000
//TOR472RX DD SYSOUT=(X,&CICS,&UTOR)                                    00180000
//CHI472RX DD SYSOUT=(X,&CICS,&UCHI)                                    00190000
//MAZ472RX DD SYSOUT=(X,&CICS,&UMAZ)                                    00200000
//KRO472RX DD SYSOUT=(X,&CICS,&UKRO)                                    00210000
//SLP472RX DD SYSOUT=(X,&CICS,&USLP)                                    00220000
//GUA472RX DD SYSOUT=(X,&CICS,&UGUA)                                    00230000
//ZAC472RX DD SYSOUT=(X,&CICS,&UZAC)                                    00240000
//JER472RX DD SYSOUT=(X,&CICS,&UJER)                                    00250000
//LEO472RX DD SYSOUT=(X,&CICS,&ULEO)                                    00260000
//MOR472RX DD SYSOUT=(X,&CICS,&UMOR)                                    00270000
//AGS472RX DD SYSOUT=(X,&CICS,&UAGS)                                    00280000
//TAM472RX DD SYSOUT=(X,&CICS,&UTAM)                                    00290000
//VER472RX DD SYSOUT=(X,&CICS,&UVER)                                    00300000
//JAL472RX DD SYSOUT=(X,&CICS,&UJAL)                                    00310000
//MER472RX DD SYSOUT=(X,&CICS,&UMER)                                    00320000
//TOL472RX DD SYSOUT=(X,&CICS,&UTOL)                                    00330000
//PUE472RX DD SYSOUT=(X,&CICS,&UPUE)                                    00340000
//MMP472RX DD SYSOUT=(X,&CICS,&UMMP)                                    00350000
//SAN472RX DD SYSOUT=(X,&CICS,&USAQ)                                    00360000
//ZZZ472RX DD SYSOUT=(X,&CICS,&UZZZ)                                    00370000
//CUL472RX DD SYSOUT=(X,&CICS,&UCUL)                                    00380000
//MMU472RX DD SYSOUT=(X,&CICS,&UMMU)                                    00390000
//*     DD'S SE¦UELO   FINAL                                            00400000
