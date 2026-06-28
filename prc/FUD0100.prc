//FUD0100 PROC                                                          00001000
//*                                                                     00002000
//**********************************************************************00029600
//*                                                                    *00029700
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00029800
//*                                                                    *00029900
//* PROCESO        :  PIDFUD01                                         *00030000
//*                   FUTUROS DE TASAS E INDICES.                      *00030100
//*                                                                    *00030200
//* OBJETIVO       :  - ACTUALIZAR DIAS AL VENCIMIENTO Y BORRADO DE    *00030500
//*                     OPERACIONES CON 45 DIAS DE VENCIDAS.           *00030500
//*                   - LIQUIDACION DE TASAS.                          *00030300
//*                   - LIQUIDACION DE INDICE.                         *00030300
//*                   - TRANSFERIR OPERACIONES DE OPERCORI A OPERA     *00030300
//*                   - UTILIDAD.                                      *00030300
//* CORRE                                                              *00030900
//* ANTES DE       :  NINGUNO                                          *00031000
//*                                                                    *00031300
//* DESPUES DE     :  PIDIDD08                                         *00031400
//*                                                                    *00031500
//* FECHA          :  MAYO 1996.                                       *00031700
//*                                                               OSCT *00031800
//**********************************************************************00032400
//*                                                                     00310000
//**********************************************************************
//*              PASO PARA BORRAR LOS ARCHIVOS ANTERIORES              *
//**********************************************************************
//FUD0107 EXEC PGM=IDCAMS,REGION=4M
//SYSIN    DD  DSN=SIVA.CARDS(FUD0107),DISP=SHR
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//**********************************************************************00032400
//* OBJETIVO       :         LIQUIDACION DE TASAS                      *00030300
//**********************************************************************00080001
//FUD0106 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//FOLCTRL  DD  DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR                         00210002
//CIB157R1 DD  DSN=SIVA.MDD.WKF.FUTUROS.LIQTASAS,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=1330),
//           UNIT=SYSDA,
//           SPACE=(TRK,(5,5))
//*
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0214),DISP=SHR                         00210002
//**********************************************************************00440005
//*                        * IEBGENER *                                 00450005
//*                                                                     00450005
//* OBJETIVO : MANDAR A SPOOL REPORTE LIQUIDACION DE TASAS              00460005
//*                           CIB157R1                                  00480005
//**********************************************************************00490005
//*                                                                     00500005
//FUD0105  EXEC PGM=ICEGENER,REGION=4M,TIME=100,COND=(4,LT)             00510005
//SYSUT1   DD  DSN=SIVA.MDD.WKF.FUTUROS.LIQTASAS,DISP=SHR               00171001
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSPRINT DD  SYSOUT=X                                                 00570005
//SYSOUT   DD  SYSOUT=X                                                 00580005
//SYSDBOUT DD  SYSOUT=X                                                 00590005
//SYSIN    DD  DUMMY                                                    00600005
//*                                                                     00630005
//**********************************************************************00032400
//* OBJETIVO       :         LIQUIDACION DE INDICES                    *00030300
//**********************************************************************00080001
//FUD0104 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//FOLCTRL  DD  DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR                         00210002
//CIB158R1 DD  DSN=SIVA.MDD.WKF.FUTUROS.LIQINDI,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=1330),
//           UNIT=SYSDA,
//           SPACE=(TRK,(5,5))
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0102),DISP=SHR                         00210002
//**********************************************************************00440005
//*                        * IEBGENER *                                 00450005
//*                                                                     00450005
//* OBJETIVO : MANDAR A SPOOL REPORTE LIQUIDACION DE INDICES            00460005
//*                           CIB158R1                                  00480005
//**********************************************************************00490005
//*                                                                     00500005
//FUD0103  EXEC PGM=ICEGENER,REGION=4M,TIME=100,COND=(4,LT)             00510005
//SYSUT1   DD  DSN=SIVA.MDD.WKF.FUTUROS.LIQINDI,DISP=SHR                00171001
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSPRINT DD  SYSOUT=X                                                 00570005
//SYSOUT   DD  SYSOUT=X                                                 00580005
//SYSDBOUT DD  SYSOUT=X                                                 00590005
//SYSIN    DD  DUMMY                                                    00600005
//*                                                                     00630005
//**********************************************************************00032400
//* OBJETIVO       :         LIQUIDACION DE INDICES                    *00030300
//**********************************************************************00080001
//FUD0102  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),         00100001
//             TIME=100                                                 00110001
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0102A),DISP=SHR                        00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :                UTILIDAD                           *00030300
//**********************************************************************00080001
//FUD0101 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//FOLCTRL  DD  DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR                         00210002
//CIB121R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0101),DISP=SHR                         00210002
//**********************************************************************
