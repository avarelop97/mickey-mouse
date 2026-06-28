//ZMTEPD04 PROC EMP=,SUC=,INT1=,FECHA=
//*
//**********************************************************************
//* SISTEMA        :  MODULO UNICO DE VALORES  (M.U.V.)                *
//*                                                                    *
//* JCL DISPARADOR :  BCTEND04                                         *
//*                                                                    *
//* OBJETIVO       :  .GENERAR LOS GDG'S DE EDOSCTAS DE BPIGO          *
//*                   .CARGA A LA BASE DATOS LOS EDOSCTA DE BPIGO PARA *
//*                    SU CONSULTA EN EL MUV(EN T.F., INTERNET Y 3270) *
//*                   .(NOTA:SE ARRANCA DESDE AS400 VIA RUNJOB-SIKLICO)*
//* FRECUENCIA     :  DIARIA (ENTRE 04:00 AM Y 07:00 AM)               *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  CONDICION BCTEND04_IN_OK                         *
//*                                                                    *
//* REALIZO        :  JORGE A. PEREZ CONTRERAS                         *
//*                                                                    *
//* FECHA          :  FEBRERO 2011.                                    *
//*                                                                    *
//**********************************************************************
//*                         * ZM3DG001 *                               *
//* OBJETIVO: RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO  *
//*           DE 96 POSICIONES                                         *
//**********************************************************************
//*                     REINICIABLE POR RESTART'S                      *
//**********************************************************************
//PTE00P07 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&FECHA',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.WKF.ECT.EBCM.ZMTEPD00,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                         * ICEGENER *                               *
//* OBJETIVO: GENERAR RESPALDO DE LA TRASMISION DEL ARCHIVO:           *
//*           "CENEFA" CLIENTES PRIVADOS BPIGO                         *
//* REINICIABLE POR RESTART'S                                          *
//**********************************************************************
//PTE00P06 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECT.EBPRIVAD.CNFA,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.ECT.EBPRIVAD.CNFA(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(BKUP.MODEL,LRECL=133,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                         * ICEGENER *                               *
//* OBJETIVO: GENERAR RESPALDO DE LA TRASMISION DEL ARCHIVO:           *
//*           "CENEFA" CLIENTES PATRIMONIALES BPIGO                    *
//* REINICIABLE POR RESTART'S                                          *
//**********************************************************************
//PTE00P05 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECT.EBPATRIM.CNFA,DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.GDGD.ECT.EBPATRIM.CNFA(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(BKUP.MODEL,LRECL=133,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                         * ICEGENER *                               *
//* OBJETIVO: GENERAR RESPALDO DE LA TRASMISION DEL ARCHIVO:           *
//*           "CIFCNTL" PARTE 1 DE BPIGO BPIGO                         *
//* REINICIABLE POR RESTART'S                                          *
//**********************************************************************
//*PTE00P04 EXEC PGM=ICEGENER,COND=(4,LT)
//*SYSUT1   DD DSN=MXCP.ZM.FIX.ECT.EBPIGO.CIFCNT1,DISP=SHR
//*SYSUT2   DD DSN=MXCP.ZM.GDGD.ECT.EBPIGO.CIFCNT1(+1),
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(BKUP.MODEL,LRECL=82,RECFM=FB,BLKSIZE=0),
//*            UNIT=3390
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSIN    DD DUMMY
//*
//**********************************************************************
//*                         * ICEGENER *                               *
//* OBJETIVO: GENERAR RESPALDO DE LA TRASMISION DEL ARCHIVO:           *
//*           "CIFCNTL" PARTE 2 BPIGO                                  *
//* REINICIABLE POR RESTART'S                                          *
//**********************************************************************
//*PTE00P03 EXEC PGM=ICEGENER,COND=(4,LT)
//*SYSUT1   DD DSN=MXCP.ZM.FIX.ECT.EBPIGO.CIFCNT2,DISP=SHR
//*SYSUT2   DD DSN=MXCP.ZM.GDGD.ECT.EBPIGO.CIFCNT2(+1),
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(10,5),RLSE),
//*            DCB=(BKUP.MODEL,LRECL=130,RECFM=FB,BLKSIZE=0),
//*            UNIT=3390
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSIN    DD DUMMY
//*
//**********************************************************************
//*                         * ZM4MU020 *                               *
//* OBJETIVO: ACTUALIZA LA BASE DATOS HISTORICA DE ESTADOS DE CUENTA   *
//*           (PRODUSVP.ZMDT930,932,933) A PARTIR DE LOS ARCHIVOS      *
//*           TRASMITIDOS DEL BPIGO                                    *
//* REINICIABLE POR RESTART'S                                          *
//**********************************************************************
//PTE00P02 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMU020P1 DD DSN=MXCP.ZM.WKF.ECT.EBCM.ZMTEPD00,DISP=SHR
//*
//*---- ARCHIVOS ENTRADA MUV       E.C. IMPRESOS SIN RECORTAR
//ZMU020M1 DD DUMMY
//ZMU020M2 DD DUMMY
//ZMU020M3 DD DUMMY
//ZMU020M5 DD DUMMY
//*
//*---- ARCHIVOS ENTRADA BPIGO     E.C. CENEFAS
//ZMU020B4 DD DSN=MXCP.ZM.FIX.ECT.EBPATRIM.CNFA,DISP=SHR
//ZMU020B8 DD DSN=MXCP.ZM.FIX.ECT.EBPRIVAD.CNFA,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZTE00T02),DISP=SHR
//*
//**************************  FIN ZMTEPD00  ****************************
