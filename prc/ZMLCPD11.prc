//ZMLCPD11 PROC                                                         00001000
//*                                                                     00002000
//**********************************************************************00029600
//*                                                                    *00029700
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00029800
//*                                                                    *00029900
//* PROCESO        :  SIVAXCTD                                         *00030000
//*                   CIERRE DE CUSTODIA.                              *00030100
//*                                                                    *00030200
//* OBJETIVO       :  DAR DE ALTA CONDICION PARA EJECUTAR CIERRE DE    *00030300
//*                   CUSTODIA POR CONTROL-M                           *00030300
//*                                                                    *00030500
//* CORRE                                                              *00030900
//* ANTES DE       :  CIERRE DE MERCADO DE DINERO.                     *00031000
//*                                                                    *00031300
//*                                                                    *00031500
//* REALIZO        :  PJS   GESFOR                                     *00031600
//* FECHA          :  OCTUBRE    2007.                                 *00031700
//*                                                                    *00031800
//**********************************************************************00032400
//*                                                                     00310000
//PLC11P02 EXEC PGM=ZM3DG001,PARM=('&EMP','   ','   ','   ',)
//PI601765  DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.CTD.E&EMP..ZMLCPD11,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************02560000
//*                         -- CTMCND --                               *02570000
//* OBJETIVO: ACTIVA CONDICION EN CONTROL-M "SIVAXCTD_IN" PARA QUE SE  *02580000
//*           EJECUTE EL DEFINITIVO DE MERCADO DE DINERO CBLCCD02      *02590000
//*                                                                    *02600000
//* PASO REINICIABLE POR RESTART                                       *02610000
//**********************************************************************02620000
//PLC11P01 EXEC  PGM=CTMCND,
//        PARM='ADD COND SIVAXCTD_&EMP_SIVA_OK WDATE',COND=(4,LT)
//STEPLIB  DD   DISP=SHR,DSN=SYS3.MVPA.V1500.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                 02630000
//PRTDBG   DD   SYSOUT=*                                                02640000
//SYSPRINT DD   DUMMY                                                   02650000
//SYSUDUMP DD   DUMMY                                                   02660000
//DAPRINT  DD   SYSOUT=*                                                02670000
//DACNDIN  DD   DDNAME=SYSIN                                            02680000
//*                                                                     02690000
