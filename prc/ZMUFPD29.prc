//ZMUFPD29 PROC
//*
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  BANCA PATRIMONIAL SUITABILITY                    *
//*                                                                    *
//* PROCESO        :  ZMUFPD29                                         *
//*                                                                    *
//* OBJETIVO       :  PROCESO EVENTUAL RENOMBRA LOS FICHEROS           *
//*                   TMP POR FIX.                                     *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  NINGUNO                                          *
//*                                                                    *
//* REALIZACION    :  DYD ALFREDO CORTES               10/MAY/2012     *
//*                                                                    *
//* OBSERVACION    :  NINGUNA                                          *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*--------------------------------------------------------------------*
//* MARCA        AUTOR    FECHA            DESCRIPCION                 *
//*-----------  --------  -------  ------------------------------------*
//**********************************************************************
//**********************************************************************
//* PASO    : ZMUF2901                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2901 EXEC PGM=IDCAMS
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.UF0280.F1.SORT,DISP=SHR
//SYSIN    DD  DUMMY
//**********************************************************************
//* PASO    : ZMUF2902                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2902 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.UN022A.F1.SORT,DISP=SHR
//SYSIN    DD  DUMMY
//**********************************************************************
//* PASO    : ZMUF2903                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2903 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.TAB700.F1.SORT,DISP=SHR
//SYSIN    DD  DUMMY
//**********************************************************************
//* PASO    : ZMUF2904                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2904 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.MATCH1.FUS2822.SORT,DISP=SHR
//SYSIN    DD  DUMMY
//*
//**********************************************************************
//* PASO    : ZMUF2905                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2905 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.MATCH2.F2822700.SRT,DISP=SHR
//SYSIN    DD  DUMMY
//**********************************************************************
//* PASO    : ZMUF2906                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2906 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.C05.SUITABIL.BCAPATRM.SORT,DISP=SHR
//SYSIN    DD  DUMMY
//*
//**********************************************************************
//* PASO    : ZMUF2907                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2907 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.ZM4DUA19.CONFIAMT.SORT,DISP=SHR
//SYSIN    DD  DUMMY
//**********************************************************************
//* PASO    : ZMUF2908                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2908 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.ZM4DUA12.CARGA809.SORT,DISP=SHR
//SYSIN    DD  DUMMY
//*
//**********************************************************************
//* PASO    : ZMUF2909                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2909 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.ZM4DUA12.CARGA809.DUPLIS,DISP=SHR
//SYSIN    DD  DUMMY
//**********************************************************************
//* PASO    : ZMUF2910                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2910 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.ZM4DUA12.CARGA809.SINDUP,DISP=SHR
//SYSIN    DD  DUMMY
//*
//**********************************************************************
//* PASO    : ZMUF2911                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2911 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.ZM4DUA18.MKTESIVA.SORT,DISP=SHR
//SYSIN    DD  DUMMY
//**********************************************************************
//* PASO    : ZMUF2912                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2912 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.REFO692.PATR.SORT,DISP=SHR
//SYSIN    DD  DUMMY
//*
//**********************************************************************
//* PASO    : ZMUF2913                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2913 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.ZM4DUA13.DESCA692.SORT,DISP=SHR
//SYSIN    DD  DUMMY
//**********************************************************************
//* PASO    : ZMUF2914                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2914 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.ZM4DUB01.SORTEADO,DISP=SHR
//SYSIN    DD  DUMMY
//*
//**********************************************************************
//* PASO    : ZMUF2915                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2915 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.ZM4DUB01.DESCA807.SRT,DISP=SHR
//SYSIN    DD  DUMMY
//**********************************************************************
//* PASO    : ZMUF2916                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2916 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.ZM4DUA09.DESCA692.SORT,DISP=SHR
//SYSIN    DD  DUMMY
//*
//**********************************************************************
//* PASO    : ZMUF2917                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2917 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.UNLOAD.IUDT033.SORT,DISP=SHR
//SYSIN    DD  DUMMY
//**********************************************************************
//* PASO    : ZMUF2918                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2918 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.ZM4DUB02.CARGA802.CTESRT,DISP=SHR
//SYSIN    DD  DUMMY
//*
//**********************************************************************
//* PASO    : ZMUF2919                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2919 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.ZM4DUA04.CARGA802.MODSRT,DISP=SHR
//SYSIN    DD  DUMMY
//*
//**********************************************************************
//* PASO    : ZMUF2920                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2920 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.ZMUF44P4.DESCA803.PORKEY,DISP=SHR
//SYSIN    DD  DUMMY
//**********************************************************************
//* PASO    : ZMUF2921                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2921 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.ZM4DUA04.CARGA803.PORKEY,DISP=SHR
//SYSIN    DD  DUMMY
//*
//**********************************************************************
//* PASO    : ZMUF2922                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2922 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.ZM4DUA04.CARGA803,DISP=SHR
//SYSIN    DD  DUMMY
//**********************************************************************
//* PASO    : ZMUF2923                                                 *
//* PROGRAMA: IDCAMS                                                   *
//* FUNCION : RENOMBRA FICHEROS DE SUITABILITY DE TMP A FIX            *
//**********************************************************************
//ZMUF2923 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSUT1   DD  DSN=MXCP.ZM.TMP.ZM4DUA04.CARGA803.SORT,DISP=SHR
//SYSIN    DD  DUMMY
//*
