//ZMLCPD01 PROC                                                         00010005
//**********************************************************************00020005
//*                                                                    *00030005
//* SISTEMA        :  S I V A   M U L T I E M P R E S A                *00040005
//*                                                                    *00050005
//* PROCESO        :  ZMLCPD01                                         *00060005
//*                   CIERRE DE MERCADO DE DINERO DIARIO               *00070005
//*                                                                    *00080005
//* OBJETIVO       :  CERRAR OPERACIONES DE MERCADO DE DINERO          *00090005
//*                                                                    *00100005
//* CORRE DESPUES  :  SU OPERACION DEL DIA                             *00110005
//*                                                                    *00120005
//* REALIZO        :  J. JAIME FLORES ESTRADA     - GETRONICS -        *00130005
//* FECHA          :  AGOSTO  2003                                     *00140005
//*                                                                    *00150005
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA DIARIO.            *00160005
//*                   ANTES O DESPUES DE VALORES NUNCA SIMULTANEO.     *00170005
//*                                                                    *00180005
//* OBJETIVO       :  ACTUALIZA EL RENGLON DE CARGA DE MATRICES DE     *00190005
//*                   INVENTARIO Y DEMANDA DE MERCADO DE DINERO.       *00200005
//*                                                                    *00210005
//**********************************************************************00210006
//*                      LOG DE MODIFICACIONES                         *00210008
//**********************************************************************00210009
//*MODIF      | FECHA  |USUARIO| PASO  |DESCRIPCION                 *   00210010
//*--------------------------------------------------------------------*00210011
//*OUF.(INETUM) 220713  XM02312 PLC01P00 RESPALDO DE MOVIMIENTOS 524   *00210012
//*                                      DEPOSITO DE VALORES DE OPERDIN*00210013
//*                                      EN ZMDTLOG, SE GUADA FECHA DE *00210014
//*                                      ADQUISICION.                  *00210015
//**********************************************************************00220005
//*                                                                     00230005
//PLC01P05 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2',)      00240005
//PI601765  DD DUMMY                                                    00250005
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD01,               00260005
//            DISP=(NEW,CATLG,DELETE),                                  00270005
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00280005
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE),                       00290005
//            BUFNO=30                                                  00300005
//*                                                                     00310005
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00320005
//SYSPRINT DD SYSOUT=*                                                  00330005
//SYSOUT   DD SYSOUT=*                                                  00340005
//SYSDBOUT DD SYSOUT=*                                                  00350005
//SYSABOUT DD DUMMY                                                     00360005
//SYSUDUMP DD DUMMY                                                     00370005
//*                                                                     00380005
//**********************************************************************00390005
//PLC01P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00400005
//ZMLE11A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD01,DISP=SHR      00410005
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00420005
//SYSPRINT DD  SYSOUT=*                                                 00430005
//SYSOUT   DD  SYSOUT=*                                                 00440005
//SYSDBOUT DD  SYSOUT=*                                                 00450005
//SYSABOUT DD  DUMMY                                                    00460005
//SYSUDUMP DD  DUMMY                                                    00470005
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC01T04),DISP=SHR                  00480005
//*                                                                     00490005
//**********************************************************************00500005
//*                                                                     00510005
//* OBJETIVO : CARGA LA MATRIZ DE INVENTARIO                            00520005
//*                                                                     00530005
//**********************************************************************00540005
//*                                                                     00550005
//PLC01P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00560005
//ZMLD30P1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD01,DISP=SHR      00570005
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00580005
//SYSPRINT DD  SYSOUT=*                                                 00590005
//SYSOUT   DD  SYSOUT=*                                                 00600005
//SYSDBOUT DD  SYSOUT=*                                                 00610005
//SYSABOUT DD  DUMMY                                                    00620005
//SYSUDUMP DD  DUMMY                                                    00630005
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC01T03),DISP=SHR                  00640005
//*                                                                     00650005
//**********************************************************************00660005
//*                                                                     00670005
//* OBJETIVO : ACTUALIZAR EL RENGLON DE CARGA DE MATRICES DE            00680005
//*            INVENTARIO Y DEMANDA DE MERCADO DE DINERO.               00690005
//*                                                                     00700005
//**********************************************************************00710005
//*                                                                     00720005
//PLC01P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00730005
//ZMLE11A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD01,DISP=SHR      00740005
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00750005
//SYSPRINT DD  SYSOUT=*                                                 00760005
//SYSOUT   DD  SYSOUT=*                                                 00770005
//SYSDBOUT DD  SYSOUT=*                                                 00780005
//SYSABOUT DD  DUMMY                                                    00790005
//SYSUDUMP DD  DUMMY                                                    00800005
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLC01T02),DISP=SHR                  00810005
//*                                                                     00820005
//**********************************************************************00830005
//*                           -- ZM4DSF69 --                           *00840005
//* OBJETIVO    :  REVISA QUE EXISTAN PRECIOS PARA EMISORAS DE MDD     *00850005
//*                EN PRECMER                                          *00860005
//*                ESTE PASO SE INCLUYO POR SOLICITUD DE DOLORES CASTRO*00870005
//*                FOLIO 2736 22/02/94                                 *00880005
//*                                                                    *00890005
//* PASO REINICIABLE POR RESTART                                       *00900005
//**********************************************************************00910005
//PLC01P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00920005
//ZMSF69A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLCPD01,DISP=SHR      00930005
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00940005
//SYSPRINT DD SYSOUT=*                                                  00950005
//SYSOUT   DD SYSOUT=*                                                  00960005
//**********************************************************************00970005
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493                           00980005
//**********************************************************************00990005
//*ZMSF69R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    01000005
//*ZMSF69R1 DD DSN=MXCP.ZM.FIX.ZMLCPD01.REPORTE1,                       01010005
//*            DISP=(NEW,CATLG,DELETE),                                 01020005
//*            SPACE=(CYL,(10,5),RLSE),                                 01030005
//*            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS),             01040005
//*            UNIT=3390                                                01050005
//ZMSF69R1 DD  DUMMY                                                    01051005
//**********************************************************************01060005
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493                           01070005
//**********************************************************************01080005
//SYSDBOUT DD SYSOUT=*                                                  01090005
//SYSABOUT DD DUMMY                                                     01100005
//SYSUDUMP DD DUMMY                                                     01110005
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC01T01),DISP=SHR                   01120005
//*                                                                     01120006
//**********************************************************************01120007
//*                           -- PLC01P00 --                           *01120008
//* PROGRAMA    :  ZM4DJ031                                            *01120009
//* OBJETIVO    :  RESPALDO DE MOVIMIENTOS 524 DEPOSITO DE VALORES     *01120010
//*                DE OPERDIN HACIA ZMDTLOG MENSUAL                    *01120011
//*                                                                    *01120020
//**********************************************************************01120030
//PLC01P00 EXEC PGM=IKJEFT01,COND=(4,LT)                                01120040
//*                                                                     01120050
//SYSTSPRT DD SYSOUT=*                                                  01120060
//SYSPRINT DD SYSOUT=*                                                  01120070
//SYSOUT   DD SYSOUT=*                                                  01120080
//SYSDBOUT DD SYSOUT=*                                                  01120090
//SYSABOUT DD DUMMY                                                     01120100
//SYSUDUMP DD DUMMY                                                     01120200
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC01T0A),DISP=SHR                   01120300
//**********************************************************************01130005
//*                   FIN DE PROCEDIMIENTO ZMLCPD01                    *01140005
//**********************************************************************01150005
