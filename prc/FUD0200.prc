//FUD0200 PROC                                                          00001000
//*                                                                     00002000
//**********************************************************************00029600
//*                                                                    *00029700
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00029800
//*                                                                    *00029900
//* PROCESO        :  PCIFUD02                                         *00030000
//*                   FUTUROS DE TASAS E INDICES.                      *00030100
//*                                                                    *00030200
//* OBJETIVO       :  IMPRIMIR REPORTES DE FUTUROS                     *00030300
//*                                                                    *00030500
//* CORRE                                                              *00030900
//* ANTES DE       :  FIN DE DIA.                                      *00031000
//*                                                                    *00031300
//* DESPUES DE     :  PCIFUD03                                         *00031400
//*                                                                    *00031500
//* FECHA          :  MAYO 1996.                                       *00031700
//*                                                               OSCT *00031800
//**********************************************************************00032400
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE OPERACION DIARIA                *00030300
//**********************************************************************00080001
//FUD0216 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//CIB117R1 DD  SYSOUT=(V,,TK30)                                         00171001
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0216),DISP=SHR                         00210002
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :         VENCIMIENTO DE TASAS                      *00030300
//**********************************************************************00080001
//FUD0105 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//FOLCTRL  DD  DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR                         00210002
//CIB116R1 DD  SYSOUT=(V,,TK25)                                         00171001
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0105),DISP=SHR                         00210002
//**********************************************************************00032400
//* OBJETIVO       :         VENCIMIENTO DE INDICES                    *00030300
//**********************************************************************00080001
//FUD0215 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//FOLCTRL  DD  DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR                         00210002
//CIB130R1 DD  SYSOUT=(V,,TK26)                                         00171001
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0215),DISP=SHR                         00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE PONDERADO TASAS                 *00030300
//**********************************************************************00080001
//FUD0213 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//CIB118R1 DD  SYSOUT=(V,,TK31)                                         00171001
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0213),DISP=SHR                         00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE PONDERADO INDICES               *00030300
//**********************************************************************00080001
//FUD0212 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//CIB127R1 DD  SYSOUT=(V,,TK32)                                         00171001
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0212),DISP=SHR                         00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE POSICION GLOBAL TASAS           *00030300
//**********************************************************************00080001
//FUD0211 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//CIB122R1 DD  SYSOUT=(V,,TK33)                                         00171001
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0211),DISP=SHR                         00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE POSICION GLOBAL INDICES         *00030300
//**********************************************************************00080001
//FUD0210 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//CIB129R1 DD  SYSOUT=(V,,TK34)                                         00171001
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0210),DISP=SHR                         00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE VALUACION TASAS                 *00030300
//**********************************************************************00080001
//FUD0209 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//CIB119R1 DD  SYSOUT=(V,,TK35)                                         00171001
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0209),DISP=SHR                         00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE VALUACION INDICES               *00030300
//**********************************************************************00080001
//*FUD0208 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4096K,COND=(4,LT),      00100001
//*             TIME=100                                                00110001
//*SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=2420                               00150001
//*SYSPRINT DD  SYSOUT=*                                                00160001
//*SYSOUT   DD  SYSOUT=*                                                00170001
//*CIB126R1 DD  SYSOUT=(V,,TK36)                                        00171001
//*SYSDBOUT DD  SYSOUT=*                                                00180001
//*SYSABOUT DD  SYSOUT=*                                                00190001
//*SYSUDUMP DD  DUMMY                                                   00200001
//*SYSTSIN  DD  DSN=SIVA.CARDS(FUD0208),DISP=SHR                        00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE NOVACION TASAS                  *00030300
//**********************************************************************00080001
//FUD0207 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//CIB139R1 DD  SYSOUT=(V,,TK37)                                         00171001
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0207),DISP=SHR                         00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE NOVACION INDICE                 *00030300
//**********************************************************************00080001
//FUD0206 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//CIB138R1 DD  SYSOUT=(V,,TK38)                                         00171001
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0206),DISP=SHR                         00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE MTTO. GARANTIA TASAS            *00030300
//**********************************************************************00080001
//FUD0205 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//CIB123R1 DD  SYSOUT=(V,,TK39)                                         00171001
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0205),DISP=SHR                         00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE MTTO. GARANTIA INDICES          *00030300
//**********************************************************************00080001
//FUD0204 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//CIB120R1 DD  SYSOUT=(V,,TK40)                                         00171001
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0204),DISP=SHR                         00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE DIVERSIFICACION POR             *00030300
//*                   INTERMEDIARIO                                    *00030300
//**********************************************************************00080001
//FUD0203 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//CIB147R1 DD  SYSOUT=(V,,TK41)                                         00171001
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0203),DISP=SHR                         00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE DIVERSIFICACION POR PLAZO       *00030300
//*                                                                    *00030300
//* NOTA           :  SE COMENTO ESTE PASO A SOLICITUD DE G.PEREZ      *00030300
//*                :  14-MAYO-96.                                      *00030300
//**********************************************************************00080001
//*FUD0202 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4096K,COND=(4,LT),      00100001
//*             TIME=100                                                00110001
//*SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=2420                               00150001
//*SYSPRINT DD  SYSOUT=*                                                00160001
//*SYSOUT   DD  SYSOUT=*                                                00170001
//*CIB148R1 DD  SYSOUT=(V,,TK42)                                        00171001
//*SYSDBOUT DD  SYSOUT=*                                                00180001
//*SYSABOUT DD  SYSOUT=*                                                00190001
//*SYSUDUMP DD  DUMMY                                                   00200001
//*SYSTSIN  DD  DSN=SIVA.CARDS(FUD0202),DISP=SHR                        00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE CONTRATOS MARCO                 *00030300
//**********************************************************************00080001
//FUD0201 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//CIB132R1 DD  SYSOUT=(V,,TK43)                                         00171001
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0201),DISP=SHR                         00210002
//**********************************************************************
