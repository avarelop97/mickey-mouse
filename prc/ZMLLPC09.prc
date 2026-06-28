//ZMLLPC09 PROC                                                         00001000
//*                                                                     00002000
//**********************************************************************00029600
//*                                                                    *00029700
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00029800
//*                                                                    *00029900
//* PROCESO        :  SIVAXCCL                                         *00030000
//*                   REPORTE DE CORTE DE CUPON EN LINEA               *00030100
//*                   OPCION 083.                                      *00030100
//*                                                                    *00030200
//* CORRE                                                              *00030900
//* ANTES DE       :  SOLICITUD DE USUARIO                             *00031000
//*                                                                    *00031300
//* DESPUES DE     :                                                   *00031400
//*                                                                    *00031500
//* REALIZO        :  AZERTIA                                          *00031600
//* FECHA          :  MARZO 2007                                       *00031700
//*                                                                    *00031800
//**********************************************************************00032400
//*                                                                     00310000
//PLC09P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765  DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC09,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************02560000
//*                         -- CTMCND --                               *02570000
//* OBJETIVO: ACTIVA CONDICION EN CONTROL-M "CBLLPC10_IN" PARA QUE SE  *02580000
//*           EJECUTE REPORTE DE MOVIMIENTOS POR LIQUIDACION DE CXC    *02590000
//*                                                                    *02600000
//* PASO REINICIABLE POR RESTART                                       *02610000
//**********************************************************************02620000
//PLC05P01 EXEC  PGM=CTMCND,
//         PARM='ADD COND CBLLPC10_&EMP_SIVA_OK WDATE',COND=(4,LT)
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
