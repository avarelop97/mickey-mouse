//ZMSFPDET PROC                                                         00311012
//*--------------------------------------------------------------------*00312004
//*         DESACTIVACION DE LA APLICACION ZM EN ARQUITECTURA          *00313004
//*                                                                    *00325004
//*                                                                    *00325004
//*--------------------------------------------------------------------*00312004
//*            DESACTIVACION DE LA TRANSACCION AJE2                    *00313004
//*--------------------------------------------------------------------*00312004
//ZMPECI60 EXEC PGM=CN3CEXCI,COND=(16,LT),                              00329118
//   PARM='DBDCIP1 -CN1CEXCI-DISABLE -AJE2    -                    '    00329119
//*
//SYSIN    DD  DUMMY                                                    00329130
//SYSOUT   DD  SYSOUT=*                                                 00329120
//SYSPRINT DD  SYSOUT=*                                                 00329140
//SYSDUMP  DD  SYSOUT=*                                                 00329150
//*
//*--------------------------------------------------------------------*00312004
//*            DESACTIVACION DE LA TRANSACCION SW11                    *00313004
//*--------------------------------------------------------------------*00312004
//ZMPECI55 EXEC PGM=CN3CEXCI,COND=(16,LT),                              00329118
//   PARM='DBDCIP1 -CN1CEXCI-DISABLE -SW11    -                    '    00329119
//SYSIN    DD  DUMMY                                                    00329130
//SYSOUT   DD  SYSOUT=*                                                 00329120
//SYSPRINT DD  SYSOUT=*                                                 00329140
//SYSDUMP  DD  SYSOUT=*                                                 00329150
//*
//*--------------------------------------------------------------------*00312004
//*            DESACTIVACION DE LA TRANSACCION YMAJ                    *00313004
//*--------------------------------------------------------------------*00312004
//ZMPECI50 EXEC PGM=CN3CEXCI,COND=(16,LT),                              00329118
//   PARM='DBDCIP1 -CN1CEXCI-DISABLE -YMAJ    -                    '    00329119
//SYSIN    DD  DUMMY                                                    00329130
//SYSOUT   DD  SYSOUT=*                                                 00329120
//SYSPRINT DD  SYSOUT=*                                                 00329140
//SYSDUMP  DD  SYSOUT=*                                                 00329150
//*
//*--------------------------------------------------------------------*00312004
//*            DESACTIVACION DE LA TRANSACCION YMCS                    *00313004
//*--------------------------------------------------------------------*00312004
//ZMPECI45 EXEC PGM=CN3CEXCI,COND=(16,LT),                              00329118
//   PARM='DBDCIP1 -CN1CEXCI-DISABLE -YMCS    -                    '    00329119
//SYSIN    DD  DUMMY                                                    00329130
//SYSOUT   DD  SYSOUT=*                                                 00329120
//SYSPRINT DD  SYSOUT=*                                                 00329140
//SYSDUMP  DD  SYSOUT=*                                                 00329150
//*
//*--------------------------------------------------------------------*00312004
//*            DESACTIVACION DE LA TRANSACCION YMDC                    *00313004
//*--------------------------------------------------------------------*00312004
//ZMPECI40 EXEC PGM=CN3CEXCI,COND=(16,LT),                              00329118
//   PARM='DBDCIP1 -CN1CEXCI-DISABLE -YMDC    -                    '    00329119
//SYSIN    DD  DUMMY                                                    00329130
//SYSOUT   DD  SYSOUT=*                                                 00329120
//SYSPRINT DD  SYSOUT=*                                                 00329140
//SYSDUMP  DD  SYSOUT=*                                                 00329150
//*
//*--------------------------------------------------------------------*00312004
//*            DESACTIVACION DE LA TRANSACCION YMES                    *00313004
//*--------------------------------------------------------------------*00312004
//ZMPECI35 EXEC PGM=CN3CEXCI,COND=(16,LT),                              00329118
//   PARM='DBDCIP1 -CN1CEXCI-DISABLE -YMES    -                    '    00329119
//SYSIN    DD  DUMMY                                                    00329130
//SYSOUT   DD  SYSOUT=*                                                 00329120
//SYSPRINT DD  SYSOUT=*                                                 00329140
//SYSDUMP  DD  SYSOUT=*                                                 00329150
//*
//*--------------------------------------------------------------------*00312004
//*            DESACTIVACION DE LA TRANSACCION YME1                    *00313004
//*--------------------------------------------------------------------*00312004
//ZMPECI30 EXEC PGM=CN3CEXCI,COND=(16,LT),                              00329118
//   PARM='DBDCIP1 -CN1CEXCI-DISABLE -YME1    -                    '    00329119
//SYSIN    DD  DUMMY                                                    00329130
//SYSOUT   DD  SYSOUT=*                                                 00329120
//SYSPRINT DD  SYSOUT=*                                                 00329140
//SYSDUMP  DD  SYSOUT=*                                                 00329150
//*
//*--------------------------------------------------------------------*00312004
//*            DESACTIVACION DE LA TRANSACCION YME2                    *00313004
//*--------------------------------------------------------------------*00312004
//ZMPECI25 EXEC PGM=CN3CEXCI,COND=(16,LT),                              00329118
//   PARM='DBDCIP1 -CN1CEXCI-DISABLE -YME2    -                    '    00329119
//SYSIN    DD  DUMMY                                                    00329130
//SYSOUT   DD  SYSOUT=*                                                 00329120
//SYSPRINT DD  SYSOUT=*                                                 00329140
//SYSDUMP  DD  SYSOUT=*                                                 00329150
//*
//*--------------------------------------------------------------------*00312004
//*            DESACTIVACION DE LA TRANSACCION YMIE                    *00313004
//*--------------------------------------------------------------------*00312004
//ZMPECI20 EXEC PGM=CN3CEXCI,COND=(16,LT),                              00329118
//   PARM='DBDCIP1 -CN1CEXCI-DISABLE -YMIE    -                    '    00329119
//SYSIN    DD  DUMMY                                                    00329130
//SYSOUT   DD  SYSOUT=*                                                 00329120
//SYSPRINT DD  SYSOUT=*                                                 00329140
//SYSDUMP  DD  SYSOUT=*                                                 00329150
//*
//*--------------------------------------------------------------------*00312004
//*            DESACTIVACION DE LA TRANSACCION YMZM                    *00313004
//*--------------------------------------------------------------------*00312004
//ZMPECI15 EXEC PGM=CN3CEXCI,COND=(16,LT),                              00329118
//   PARM='DBDCIP1 -CN1CEXCI-DISABLE -YMZM    -                    '    00329119
//SYSIN    DD  DUMMY                                                    00329130
//SYSOUT   DD  SYSOUT=*                                                 00329120
//SYSPRINT DD  SYSOUT=*                                                 00329140
//SYSDUMP  DD  SYSOUT=*                                                 00329150
//*
//*--------------------------------------------------------------------*00312004
//*            DESACTIVACION DE LA TRANSACCION YMZY                    *00313004
//*--------------------------------------------------------------------*00312004
//ZMPECI10 EXEC PGM=CN3CEXCI,COND=(16,LT),                              00329118
//   PARM='DBDCIP1 -CN1CEXCI-DISABLE -YMZY    -                    '    00329119
//SYSIN    DD  DUMMY                                                    00329130
//SYSOUT   DD  SYSOUT=*                                                 00329120
//SYSPRINT DD  SYSOUT=*                                                 00329140
//SYSDUMP  DD  SYSOUT=*                                                 00329150
//*
//*--------------------------------------------------------------------*00312004
//*            DESACTIVACION DE LA TRANSACCION Z***                    *00313004
//*--------------------------------------------------------------------*00312004
//ZMPECI05 EXEC PGM=CN3CEXCI,COND=(16,LT),                              00329118
//   PARM='DBDCIP1 -CN1CEXCI-LINKPRGM-ZM1CEXCI-DISABLE             '    00329119
//SYSIN    DD  DUMMY                                                    00329130
//SYSOUT   DD  SYSOUT=*                                                 00329120
//SYSPRINT DD  SYSOUT=*                                                 00329140
//SYSDUMP  DD  SYSOUT=*                                                 00329150
//*
//*FIN JCL
