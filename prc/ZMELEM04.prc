//ZMELEM04 PROC
//*
//**********************************************************************
//* APLICACION  : ZM                                                   *
//* PROCESO     : ZMELEM04                                             *
//* OBJETIVO    : INTERFAZ DE FOLIOS UG REGISTRADOS EN MUV             *
//* REALIZO     : ALEJANDRO GARCIA MORALES                             *
//* FECHA       : 24/FEBRERO/2023                                      *
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//*    MARCA      AUTOR   FECHA                DESCRIPCION             *
//* -----------  ------- ------- ------------------------------------- *
//*                                                                    *
//**********************************************************************00007879
//* UTILERIA : ADUUMAIN                                                *00007880
//* OBJETIVO : DESCARGARA LA TABLA ZM834                              * 00007881
//*                                                                    *
//**********************************************************************00007882
//ZMELET01 EXEC PGM=ADUUMAIN,                                           00007883
//         PARM='MXP1,PUE10130,NEW,,MSGLEVEL(1)'                        00007884
//*                                                                     00007885
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00007886
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00007887
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00007888
//*                                                                     00007889
//SYSREC   DD DSN=MXCP.ZM.FIX.DEP.ZMELEM04.ZM834,                       00007890
//            SPACE=(CYL,(10,20),RLSE),                                 00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007893
//*                                                                     00007894
//SYSPRINT DD SYSOUT=*                                                  00007895
//SYSTSPRT DD SYSOUT=*                                                  00007896
//SYSOUT   DD SYSOUT=*                                                  00007897
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMELET01),DISP=SHR                   00007898
//*                                                                     00007899
//**********************************************************************00018300
//* PROGRAMA    : IEJEFT01/ZM4DS151                                    *00018400
//* OBJETIVO    : INTERFAZ DE REGISTROS A DEPURAR                      *00018500
//*                                                                    *00018600
//**********************************************************************00018700
//ZMELET02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00018800
//*                                                                     00019000
//ZMS095E1 DD DSN=MXCP.ZM.FIX.DEP.ZMELEM04.ZM834,DISP=SHR               00007906
//*                                                                     00007905
//ZMS095S1 DD DSN=MXCP.ZM.FIX.F&FECHA..UGJEBCNU.CONTR,                  00020500
//         DISP=(NEW,CATLG,DELETE),                                     00020600
//         DCB=(DSORG=PS,RECFM=FB,LRECL=32,BLKSIZE=0),                  00020700
//         SPACE=(CYL,(001,001),RLSE),UNIT=3390                         00020800
//*                                                                     00019000
//SYSTSPRT DD SYSOUT=*                                                  00019100
//SYSPRINT DD SYSOUT=*                                                  00019200
//SYSOUT   DD SYSOUT=*                                                  00019300
//SYSDBOUT DD SYSOUT=*                                                  00019400
//SYSABOUT DD SYSOUT=*                                                  00019500
//SYSUDUMP DD DUMMY                                                     00019600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMELET02),DISP=SHR                   00019700
//*                                                                     00019800
//**********************************************************************
//*                                                                     00007899
