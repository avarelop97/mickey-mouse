//ZXLLPC13 PROC                                                         00001000
//*                                                                     00002000
//**********************************************************************00029600
//*                                                                    *00029700
//* SISTEMA        :  M U V                                            *00029800
//*                                                                    *00029900
//* PROCESO        :  SIVAXCOF                                         *00030000
//*                   CONCILIACION COVAF                               *00030100
//*                                                                    *00030100
//*                                                                    *00030200
//* CORRE                                                              *00030900
//* ANTES DE       :  SOLICITUD DE USUARIO                             *00031000
//*                                                                    *00031300
//* DESPUES DE     :                                                   *00031400
//*                                                                    *00031500
//* REALIZO        :  AZERTIA (IEF)                                    *00031600
//* FECHA          :  MAR-2009                                         *00031700
//*                                                                    *00031800
//**********************************************************************00032400
//*                                                                     00310000
//PLC13P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZXLLPC13,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************02560000
//*                         -- CTMCND --                               *02570000
//* OBJETIVO: ACTIVA CONDICION EN CONTROL-M "BCLLPC13_IN" PARA QUE SE  *02580000
//*           EJECUTE CONCIL COVAF.                                    *02590000
//*                                                                    *02600000
//* PASO REINICIABLE POR RESTART                                       *02610000
//**********************************************************************02620000
//PLC12P01 EXEC  PGM=CTMCND,
//         PARM='ADD COND BCLLPC13_BCM_SIVA_OK WDATE',COND=(4,LT)
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                 02630000
//PRTDBG   DD   SYSOUT=Z                                                02640000
//SYSPRINT DD   DUMMY                                                   02650000
//SYSUDUMP DD   DUMMY                                                   02660000
//DAPRINT  DD   SYSOUT=Z                                                02670000
//DACNDIN  DD   DDNAME=SYSIN                                            02680000
//*                                                                     02690000
