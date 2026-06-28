//ZMJLPD03 PROC                                                         00010000
//********************************************************************* 00020000
//*                     C A S A   D E   B O L S A                     * 00030000
//*                     =========================                     * 00040000
//*                    << MERCADO DE CAPITALES >>                     * 00050000
//*                                                                   * 00060000
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL  * 00070000
//*                                                                   * 00080000
//*   JCL              :  SIVAXLBP                                    * 00090000
//*                                                                   * 00100000
//*   CADENA           :  OPCION 143 -> JCL SIVAXTPS -> PRC ZMJLPD03  * 00110000
//*                                                                   * 00120000
//*   OBJETIVO         :  GENERAR REPORTE DE  LIQUIDACIONES E INFORMA-* 00130000
//*                       CION RESULTANTE DEL PROCESO DE COMPRA/VEN-  * 00140000
//*                       TAS DEL MERCADO DE CAPITALES.               * 00150000
//*                                                                   * 00160000
//*   CORRE DESPUES DE :  SUBMITIDO DESDE LA OPCION 143 P/USUARIO     * 00170000
//*                                                                   * 00180000
//*   CORRE ANTES   DE :  NINGUNO                                     * 00190000
//*                                                                   * 00200000
//*   PERIODICIDAD     :  A PETICION DEL USUARIO                      * 00210000
//*                                                                   * 00220000
//*   ELABORADO POR    :  H. ABRAHAM JUAREZ PI#ON                     * 00230000
//*                                                                   * 00240000
//*   FECHA            :  OCTUBRE / 2004                              * 00250000
//*                                                                   * 00260000
//********************************************************************* 00270000
//*   MODIFICACION     :  06/MAR/2005                                 * 00280000
//*                                                                   * 00290000
//*   OBJETIVO         :  INSERTAR REPORTERIA PARA LA LIQUIDACION     * 00300000
//*                       24 Y 48 HRS.                                * 00310000
//*                                                                   * 00320000
//*   ELABORADO POR    :  H. ABRAHAM JUAREZ PI#ON                     * 00330000
//*                                                                   * 00340000
//*   FECHA            :  MARZO / 2005                                * 00350000
//*                                                                   * 00360000
//*   FECHA DE MODIFIC : 16/03/2005                                   * 00370000
//*                                                                   * 00380000
//*   REALIZO          : ERNESTO MANUEL CUAUTLE MARTINEZ              * 00390000
//*                                                                   * 00400000
//*   OBJETIVO         : SE ADICIONO EL PASO PJD03P00, QUE ACTIVA     * 00410000
//*                      LA CONDICION DE CONTROL-M.                   * 00420000
//********************************************************************* 00430000
//*   MODIFICACION     :  09/ENE/2007                                 * 00440000
//*                                                                   * 00450000
//*   OBJETIVO         :  INSERTAR REPORTERIA PARA LA LIQUIDACION     * 00460000
//*                       A FECHA DE OPERACION, TOMANDO COMO FECHA    * 00470000
//*                       DE OPERACION LA FECHA DEL DIA.              * 00480000
//*                                                                   * 00490000
//*   ELABORADO POR    :  H. ABRAHAM JUAREZ PI#ON                     * 00500000
//*                                                                   * 00510000
//*   OBJETIVO         :  GENERAR REPORTES A FECHA DE OPERACION(P05). * 00520000
//*                                                                   * 00530000
//*                         REPORTE     PASO                          * 00540000
//*                         --------    --------                      * 00550000
//*                      1) ZM4DHV24    PJD03P1C                      * 00560000
//*                      2) ZM4DHW51    PJD03P1B                      * 00570000
//*                      3) ZM4DHW52    PJD03P1A                      * 00580000
//*                                                                   * 00590000
//********************************************************************* 00600000
//*                                                                   * 00610000
//*  PASO: 23    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  * 00620000
//*              EN ARCHIVO SECUENCIAL                                * 00630000
//*                                                                   * 00640000
//*  SECUENCIA: 1                                           ZM3DG001  * 00650000
//*                                                                   * 00660000
//********************************************************************* 00670000
//*   MODIFICACION     :  FEBRERO / 2007 SE AGREGAN PROGRAMAS         * 00680000
//*                       PARA OPCION DE VENTA A 72 HORAS             * 00690000
//********************************************************************* 00700000
//*   MODIFICACION     :  AGOSTO  / 2021 SE ACTUALIZA LONGITUD        * 00700100
//*                       PARA SALIDA ZM4V15A1 DE 210 A 215.          * 00700200
//********************************************************************* 00700300
//PJD03P23 EXEC PGM=ZM3DG001,                                           00710000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00720000
//*                                                                     00730000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,                       00740000
//            DISP=(NEW,CATLG,DELETE),                                  00750000
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),              00760000
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00770000
//SYSTSPRT DD SYSOUT=*                                                  00780000
//SYSPRINT DD SYSOUT=*                                                  00790000
//SYSOUT   DD SYSOUT=*                                                  00800000
//SYSDBOUT DD SYSOUT=*                                                  00810000
//SYSABOUT DD SYSOUT=*                                                  00820000
//SYSUDUMP DD SYSOUT=*                                                  00830000
//*                                                                     00840000
//**********************************************************************00850000
//*  PASO: 22     CARGA DE LA TABLA ZMDT632, INFORMACION DE COMPRA-VEN-*00860000
//*               TA DE MERCADO DE CAPITALES.                          *00870000
//*  PJD03P22                                               ZM4DHW28   *00880000
//**********************************************************************00890000
//PJD03P22 EXEC PGM=IKJEFT01,COND=(4,LT)                                00900000
//*                                                                     00910000
//ZM4DHW28 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZM4DHW28,                   00920000
//            DISP=(NEW,CATLG,DELETE),                                  00930000
//            DCB=(LRECL=377,RECFM=FB,BLKSIZE=0,DSORG=PS),              00940000
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)                         00950000
//*                                                                     00960000
//SYSTSPRT DD SYSOUT=*                                                  00970000
//SYSPRINT DD SYSOUT=*                                                  00980000
//SYSOUT   DD SYSOUT=*                                                  00990000
//SYSDBOUT DD SYSOUT=*                                                  01000000
//SYSABOUT DD SYSOUT=*                                                  01010000
//SYSUDUMP DD SYSOUT=*                                                  01020000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T22),DISP=SHR                   01030000
//*                                                                     01040000
//**********************************************************************01050000
//*  PASO: 21     GENERAR REPORTE DE LIQUIDACION AGENTE  -  AGENTE     *01060000
//*               48 HRS                                               *01070000
//*  PJD03P21                                               ZM4DHW65   *01080000
//**********************************************************************01090000
//PJD03P21 EXEC PGM=IKJEFT01,COND=(4,LT)                                01100000
//*                                                                     01110000
//ZM4D65A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               01120000
//*                                                                     01130000
//ZM4D65R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01140000
//*                                                                     01150000
//SYSTSPRT DD SYSOUT=*                                                  01160000
//SYSPRINT DD SYSOUT=*                                                  01170000
//SYSOUT   DD SYSOUT=*                                                  01180000
//SYSDBOUT DD SYSOUT=*                                                  01190000
//SYSABOUT DD SYSOUT=*                                                  01200000
//SYSUDUMP DD SYSOUT=*                                                  01210000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T21),DISP=SHR                   01220000
//*                                                                     01230000
//**********************************************************************01240000
//*  PASO: 20     GENERAR REPORTE DE LIQUIDACION AGENTE  -  AGENTE     *01250000
//*               24HRS                                                *01260000
//*  PJD03P20                                               ZM4DHW64   *01270000
//**********************************************************************01280000
//PJD03P20 EXEC PGM=IKJEFT01,COND=(4,LT)                                01290000
//*                                                                     01300000
//ZM4D64A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               01310000
//*                                                                     01320000
//ZM4D64R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01330000
//*                                                                     01340000
//SYSTSPRT DD SYSOUT=*                                                  01350000
//SYSPRINT DD SYSOUT=*                                                  01360000
//SYSOUT   DD SYSOUT=*                                                  01370000
//SYSDBOUT DD SYSOUT=*                                                  01380000
//SYSABOUT DD SYSOUT=*                                                  01390000
//SYSUDUMP DD SYSOUT=*                                                  01400000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T20),DISP=SHR                   01410000
//*                                                                     01420000
//**********************************************************************01430000
//*  PASO: 19     GENERAR REPORTE DE LIQUIDACION AGENTE  -  AGENTE     *01440000
//*               48 HRS.                                              *01450000
//*  PJD03P19                                               ZM4DHW63   *01460000
//**********************************************************************01470000
//PJD03P19 EXEC PGM=IKJEFT01,COND=(4,LT)                                01480000
//*                                                                     01490000
//ZMHV63A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               01500000
//*                                                                     01510000
//ZMHV63C1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01520000
//*                                                                     01530000
//ZMHV63G1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01540000
//*                                                                     01550000
//SYSTSPRT DD SYSOUT=*                                                  01560000
//SYSPRINT DD SYSOUT=*                                                  01570000
//SYSOUT   DD SYSOUT=*                                                  01580000
//SYSDBOUT DD SYSOUT=*                                                  01590000
//SYSABOUT DD SYSOUT=*                                                  01600000
//SYSUDUMP DD SYSOUT=*                                                  01610000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T19),DISP=SHR                   01620000
//*                                                                     01630000
//**********************************************************************01640000
//*  PASO: 18     GENERAR REPORTE DE LIQUIDACION AGENTE  -  AGENTE     *01650000
//*               24 HRS.                                              *01660000
//*  PJD03P18                                               ZM4DHW62   *01670000
//**********************************************************************01680000
//PJD03P18 EXEC PGM=IKJEFT01,COND=(4,LT)                                01690000
//*                                                                     01700000
//ZMHV62A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               01710000
//*                                                                     01720000
//ZMHV62C1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01730000
//*                                                                     01740000
//ZMHV62G1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01750000
//*                                                                     01760000
//SYSTSPRT DD SYSOUT=*                                                  01770000
//SYSPRINT DD SYSOUT=*                                                  01780000
//SYSOUT   DD SYSOUT=*                                                  01790000
//SYSDBOUT DD SYSOUT=*                                                  01800000
//SYSABOUT DD SYSOUT=*                                                  01810000
//SYSUDUMP DD SYSOUT=*                                                  01820000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T18),DISP=SHR                   01830000
//*                                                                     01840000
//**********************************************************************01850000
//*  PASO: 17     GENERAR REPORTE DE LIQUIDACION CLIENTE -  AGENTE     *01860000
//*               48 HRS.                                              *01870000
//*  PJD03P17                                               ZM4DHW61   *01880000
//**********************************************************************01890000
//PJD03P17 EXEC PGM=IKJEFT01,COND=(4,LT)                                01900000
//*                                                                     01910000
//ZMHV61A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               01920000
//*                                                                     01930000
//ZM4V61R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     01940000
//*                                                                     01950000
//SYSTSPRT DD SYSOUT=*                                                  01960000
//SYSPRINT DD SYSOUT=*                                                  01970000
//SYSOUT   DD SYSOUT=*                                                  01980000
//SYSDBOUT DD SYSOUT=*                                                  01990000
//SYSABOUT DD SYSOUT=*                                                  02000000
//SYSUDUMP DD SYSOUT=*                                                  02010000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T17),DISP=SHR                   02020000
//*                                                                     02030000
//**********************************************************************02040000
//*  PASO: 16     GENERAR REPORTE DE LIQUIDACION CLIENTE -  AGENTE     *02050000
//*               24 HRS.                                              *02060000
//*  PJD03P16                                               ZM4DHW60   *02070000
//**********************************************************************02080000
//PJD03P16 EXEC PGM=IKJEFT01,COND=(4,LT)                                02090000
//*                                                                     02100000
//ZMHV60A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               02110000
//*                                                                     02120000
//ZM4V60R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     02130000
//*                                                                     02140000
//SYSTSPRT DD SYSOUT=*                                                  02150000
//SYSPRINT DD SYSOUT=*                                                  02160000
//SYSOUT   DD SYSOUT=*                                                  02170000
//SYSDBOUT DD SYSOUT=*                                                  02180000
//SYSABOUT DD SYSOUT=*                                                  02190000
//SYSUDUMP DD SYSOUT=*                                                  02200000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T16),DISP=SHR                   02210000
//*                                                                     02220000
//**********************************************************************02230000
//*  PASO: 15     GENERAR REPORTE DE TITULOS OPERADOS POR CASA DE      *02240000
//*               BOLSA.                                               *02250000
//*               48 HRS.                                              *02260000
//*  PJD03P15                                               ZM4DHW59   *02270000
//**********************************************************************02280000
//PJD03P15 EXEC PGM=IKJEFT01,COND=(4,LT)                                02290000
//*                                                                     02300000
//ZMHW59A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               02310000
//*                                                                     02320000
//ZMHW59R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     02330000
//*                                                                     02340000
//SYSTSPRT DD SYSOUT=*                                                  02350000
//SYSPRINT DD SYSOUT=*                                                  02360000
//SYSOUT   DD SYSOUT=*                                                  02370000
//SYSDBOUT DD SYSOUT=*                                                  02380000
//SYSABOUT DD SYSOUT=*                                                  02390000
//SYSUDUMP DD SYSOUT=*                                                  02400000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T15),DISP=SHR                   02410000
//*                                                                     02420000
//**********************************************************************02430000
//*  PASO: 14     GENERAR REPORTE DE TITULOS OPERADOS POR CASA DE      *02440000
//*               BOLSA.                                               *02450000
//*               24 HRS.                                              *02460000
//*  PJD03P14                                               ZM4DHW58   *02470000
//**********************************************************************02480000
//PJD03P14 EXEC PGM=IKJEFT01,COND=(4,LT)                                02490000
//*                                                                     02500000
//ZMHW58A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               02510000
//*                                                                     02520000
//ZMHW58R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     02530000
//*                                                                     02540000
//SYSTSPRT DD SYSOUT=*                                                  02550000
//SYSPRINT DD SYSOUT=*                                                  02560000
//SYSOUT   DD SYSOUT=*                                                  02570000
//SYSDBOUT DD SYSOUT=*                                                  02580000
//SYSABOUT DD SYSOUT=*                                                  02590000
//SYSUDUMP DD SYSOUT=*                                                  02600000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T14),DISP=SHR                   02610000
//*                                                                     02620000
//**********************************************************************02630000
//*  PASO: 13     GENERA REPORTE DE LIQUIDACION AGENTES/CLIENTES       *02640000
//*               48 HRS.                                              *02650000
//*  PJD03P13                                               ZM4DHW57   *02660000
//**********************************************************************02670000
//PJD03P13 EXEC PGM=IKJEFT01,COND=(4,LT)                                02680000
//*                                                                     02690000
//ZMHW57A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               02700000
//*                                                                     02710000
//ZMHW57R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     02720000
//*                                                                     02730000
//SYSTSPRT DD SYSOUT=*                                                  02740000
//SYSPRINT DD SYSOUT=*                                                  02750000
//SYSOUT   DD SYSOUT=*                                                  02760000
//SYSDBOUT DD SYSOUT=*                                                  02770000
//SYSABOUT DD SYSOUT=*                                                  02780000
//SYSUDUMP DD SYSOUT=*                                                  02790000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T13),DISP=SHR                   02800000
//*                                                                     02810000
//**********************************************************************02820000
//*  PASO: 12     GENERA REPORTE DE LIQUIDACION AGENTES/CLIENTES       *02830000
//*               24 HRS.                                              *02840000
//*  PJD03P12                                               ZM4DHW56   *02850000
//**********************************************************************02860000
//PJD03P12 EXEC PGM=IKJEFT01,COND=(4,LT)                                02870000
//*                                                                     02880000
//ZMHW56A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               02890000
//*                                                                     02900000
//ZMHW56R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     02910000
//*                                                                     02920000
//SYSTSPRT DD SYSOUT=*                                                  02930000
//SYSPRINT DD SYSOUT=*                                                  02940000
//SYSOUT   DD SYSOUT=*                                                  02950000
//SYSDBOUT DD SYSOUT=*                                                  02960000
//SYSABOUT DD SYSOUT=*                                                  02970000
//SYSUDUMP DD SYSOUT=*                                                  02980000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T12),DISP=SHR                   02990000
//*                                                                     03000000
//**********************************************************************03010000
//*  PASO: 11     GENERA REPORTE DE LIQUIDACION CENTROS REGIONALES     *03020000
//*                                                                    *03030000
//*  PJD03P11                                               ZM4DU506   *03040000
//**********************************************************************03050000
//PJD03P11 EXEC PGM=IKJEFT01,COND=(4,LT)                                03060000
//*                                                                     03070000
//ZMU506R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     03080000
//*                                                                     03090000
//SYSTSPRT DD SYSOUT=*                                                  03100000
//SYSPRINT DD SYSOUT=*                                                  03110000
//SYSOUT   DD SYSOUT=*                                                  03120000
//SYSDBOUT DD SYSOUT=*                                                  03130000
//SYSABOUT DD SYSOUT=*                                                  03140000
//SYSUDUMP DD SYSOUT=*                                                  03150000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T11),DISP=SHR                   03160000
//*                                                                     03170000
//**********************************************************************03180000
//*  PASO: 10     GENERA REPORTE DE ASIGNACION                         *03190000
//*                                                                    *03200000
//*  PJD03P10                                               ZM4DU505   *03210000
//**********************************************************************03220000
//PJD03P10 EXEC PGM=IKJEFT01,COND=(4,LT)                                03230000
//*                                                                     03240000
//ZMU505R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     03250000
//*                                                                     03260000
//ZMU505A1 DD DSN=MXCP.ZM.WKF.MDC.E&EMP..S&SUC..ARCH0,                  03260100
//         DISP=(NEW,CATLG,DELETE),                                     03260200
//         DCB=(LRECL=210,RECFM=FB,BLKSIZE=0,DSORG=PS),                 03260300
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            03260400
//*                                                                     03260500
//SYSTSPRT DD SYSOUT=*                                                  03270000
//SYSPRINT DD SYSOUT=*                                                  03280000
//SYSOUT   DD SYSOUT=*                                                  03290000
//SYSDBOUT DD SYSOUT=*                                                  03300000
//SYSABOUT DD SYSOUT=*                                                  03310000
//SYSUDUMP DD SYSOUT=*                                                  03320000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T10),DISP=SHR                   03330000
//*                                                                     03340000
//**********************************************************************03350000
//*  PASO:  9     GENERA REPORTE DE DETALLE DE COMPRA/VENTA            *03360000
//*                                                                    *03370000
//*  PJD03P09                                               ZM4DH022   *03380000
//**********************************************************************03390000
//PJD03P09 EXEC PGM=IKJEFT01,COND=(4,LT)                                03400000
//ZM4DH221 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               03410000
//ZM4DH222 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     03420000
//SYSTSPRT DD SYSOUT=*                                                  03430000
//SYSPRINT DD SYSOUT=*                                                  03440000
//SYSOUT   DD SYSOUT=*                                                  03450000
//SYSDBOUT DD SYSOUT=*                                                  03460000
//SYSABOUT DD SYSOUT=*                                                  03470000
//SYSUDUMP DD SYSOUT=*                                                  03480000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T09),DISP=SHR                   03490000
//*                                                                     03500000
//**********************************************************************03510000
//*  PASO:  8     GENERA REPORTE DE HECHOS LIQUIDACION VALOR HOY,      *03520000
//*               24 Y 48 HS.                                          *03530000
//*  PJD03P08                                               ZM4DH021   *03540000
//**********************************************************************03550000
//PJD03P08 EXEC PGM=IKJEFT01,COND=(4,LT)                                03560000
//ZM4DH211 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               03570000
//ZM4DH212 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     03580000
//SYSTSPRT DD SYSOUT=*                                                  03590000
//SYSPRINT DD SYSOUT=*                                                  03600000
//SYSOUT   DD SYSOUT=*                                                  03610000
//SYSDBOUT DD SYSOUT=*                                                  03620000
//SYSABOUT DD SYSOUT=*                                                  03630000
//SYSUDUMP DD SYSOUT=*                                                  03640000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T08),DISP=SHR                   03650000
//*                                                                     03660000
//**********************************************************************03670000
//*  PASO:  7     GENERA REPORTE DE LIQUIDACION AGENTES/CLIENTES       *03680000
//*                                                                    *03690000
//*  PJD03P07  MODIFICADO                                   ZM4DHW50   *03700000
//**********************************************************************03710000
//PJD03P07 EXEC PGM=IKJEFT01,COND=(4,LT)                                03720000
//*                                                                     03730000
//ZMHW50A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               03740000
//*                                                                     03750000
//ZMHW50R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     03760000
//*                                                                     03770000
//ZMHW50A2 DD DSN=MXCP.ZM.WKF.MDC.E&EMP..S&SUC..ARCH1,                  03771000
//         DISP=(NEW,CATLG,DELETE),                                     03772000
//         DCB=(LRECL=115,RECFM=FB,BLKSIZE=0,DSORG=PS),                 03773000
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            03774000
//*                                                                     03775000
//SYSTSPRT DD SYSOUT=*                                                  03780000
//SYSPRINT DD SYSOUT=*                                                  03790000
//SYSOUT   DD SYSOUT=*                                                  03800000
//SYSDBOUT DD SYSOUT=*                                                  03810000
//SYSABOUT DD SYSOUT=*                                                  03820000
//SYSUDUMP DD SYSOUT=*                                                  03830000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T07),DISP=SHR                   03840000
//*                                                                     03850000
//**********************************************************************03860000
//*  PASO:  6     GENERA REPORTE DE HECHOS PARA M.C., BCA PATRIMONIAL  *03870000
//*                                                                    *03880000
//*  PJD03P06                                               ZM4DHW49   *03890000
//**********************************************************************03900000
//PJD03P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                03910000
//*                                                                     03920000
//ZMHW49A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               03930000
//*                                                                     03940000
//ZMHW49R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     03950000
//*                                                                     03960000
//SYSTSPRT DD SYSOUT=*                                                  03970000
//SYSPRINT DD SYSOUT=*                                                  03980000
//SYSOUT   DD SYSOUT=*                                                  03990000
//SYSDBOUT DD SYSOUT=*                                                  04000000
//SYSABOUT DD SYSOUT=*                                                  04010000
//SYSUDUMP DD SYSOUT=*                                                  04020000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T06),DISP=SHR                   04030000
//*                                                                     04040000
//**********************************************************************04050000
//*  PASO:  5     GENERAR REPORTE DE TITULOS OPERADOS POR CASA DE      *04060000
//*               BOLSA.                                               *04070000
//*                                                                    *04080000
//*  PJD03P05                                               ZM4DHW48   *04090000
//**********************************************************************04100000
//PJD03P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                04110000
//*                                                                     04120000
//ZMHW48A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               04130000
//*                                                                     04140000
//ZMHW48R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     04150000
//*                                                                     04160000
//SYSTSPRT DD SYSOUT=*                                                  04170000
//SYSPRINT DD SYSOUT=*                                                  04180000
//SYSOUT   DD SYSOUT=*                                                  04190000
//SYSDBOUT DD SYSOUT=*                                                  04200000
//SYSABOUT DD SYSOUT=*                                                  04210000
//SYSUDUMP DD SYSOUT=*                                                  04220000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T05),DISP=SHR                   04230000
//*                                                                     04240000
//**********************************************************************04250000
//*  PASO:  4     GENERAR REPORTE DE LIQUIDACION DE M. CAPITALES DE    *04260000
//*               BANCA PATRIMONIAL.                                   *04270000
//*                                                                    *04280000
//*  PJD03P04 MODIFICADO                                    ZM4DHW47   *04290000
//**********************************************************************04300000
//PJD03P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                04310000
//*                                                                     04320000
//ZMHW47A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               04330000
//*                                                                     04340000
//ZMHW47R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     04350000
//*                                                                     04360000
//ZMHW47A2 DD DSN=MXCP.ZM.WKF.MDC.E&EMP..S&SUC..ARCH2,                  04361000
//         DISP=(NEW,CATLG,DELETE),                                     04362000
//         DCB=(LRECL=120,RECFM=FB,BLKSIZE=0,DSORG=PS),                 04363000
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            04364000
//*                                                                     04365000
//SYSTSPRT DD SYSOUT=*                                                  04370000
//SYSPRINT DD SYSOUT=*                                                  04380000
//SYSOUT   DD SYSOUT=*                                                  04390000
//SYSDBOUT DD SYSOUT=*                                                  04400000
//SYSABOUT DD SYSOUT=*                                                  04410000
//SYSUDUMP DD SYSOUT=*                                                  04420000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T04),DISP=SHR                   04430000
//*                                                                     04440000
//**********************************************************************04450000
//*  PASO:  3     GENERAR REPORTE DE LIQUIDACION CLIENTE -  AGENTE     *04460000
//*                                                                    *04470000
//*  PJD03P01 MODIFICADO                                    ZM4DHV15   *04480000
//**********************************************************************04490000
//PJD03P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                04500000
//*                                                                     04510000
//ZM4V15A1 DD DSN=MXCP.ZM.WKF.MDC.E&EMP..S&SUC..ARCH3,                  04521000
//         DISP=(NEW,CATLG,DELETE),                                     04522000
//         DCB=(LRECL=215,RECFM=FB,BLKSIZE=0,DSORG=PS),                 04523000
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            04524000
//*                                                                     04530000
//ZM4V15R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     04540000
//*                                                                     04550000
//SYSTSPRT DD SYSOUT=*                                                  04560000
//SYSPRINT DD SYSOUT=*                                                  04570000
//SYSOUT   DD SYSOUT=*                                                  04580000
//SYSDBOUT DD SYSOUT=*                                                  04590000
//SYSABOUT DD SYSOUT=*                                                  04600000
//SYSUDUMP DD SYSOUT=*                                                  04610000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T03),DISP=SHR                   04620000
//*                                                                     04630000
//**********************************************************************04640000
//*  PASO:  2     GENERAR REPORTE DE LIQUIDACION AGENTE  -  AGENTE     *04650000
//*                                                                    *04660000
//*  PJD03P02 MODIFICADO                                    ZM4DHV17   *04670000
//**********************************************************************04680000
//PJD03P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                04690000
//*                                                                     04700000
//ZMHV17A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               04710000
//*                                                                     04720000
//ZMHV17C1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     04730000
//*                                                                     04740000
//ZMHV17C2 DD DSN=MXCP.ZM.WKF.MDC.E&EMP..S&SUC..ARCH4,                  04741000
//         DISP=(NEW,CATLG,DELETE),                                     04742000
//         DCB=(LRECL=150,RECFM=FB,BLKSIZE=0,DSORG=PS),                 04743000
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            04744000
//*                                                                     04745000
//ZMHV17G1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     04750000
//*                                                                     04751000
//ZMHV17G2 DD DSN=MXCP.ZM.WKF.MDC.E&EMP..S&SUC..ARCH5,                  04752000
//         DISP=(NEW,CATLG,DELETE),                                     04753000
//         DCB=(LRECL=215,RECFM=FB,BLKSIZE=0,DSORG=PS),                 04754000
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            04755000
//*                                                                     04760000
//SYSTSPRT DD SYSOUT=*                                                  04770000
//SYSPRINT DD SYSOUT=*                                                  04780000
//SYSOUT   DD SYSOUT=*                                                  04790000
//SYSDBOUT DD SYSOUT=*                                                  04800000
//SYSABOUT DD SYSOUT=*                                                  04810000
//SYSUDUMP DD SYSOUT=*                                                  04820000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T02),DISP=SHR                   04830000
//**********************************************************************04840000
//*  PASO:  1     GENERAR REPORTE DE LIQUIDACION AGENTE  -  AGENTE     *04850000
//*                                                                    *04860000
//*  PJD03P01 MODIFICADO                                    ZM4DHV18   *04870000
//**********************************************************************04880000
//PJD03P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                04890000
//*                                                                     04900000
//ZM4D18A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               04910000
//*                                                                     04920000
//ZM4D18R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     04930000
//*                                                                     04940000
//ZM4D18R2 DD DSN=MXCP.ZM.WKF.MDC.E&EMP..S&SUC..ARCH6,                  04941000
//         DISP=(NEW,CATLG,DELETE),                                     04942000
//         DCB=(LRECL=210,RECFM=FB,BLKSIZE=0,DSORG=PS),                 04943000
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            04944000
//*                                                                     04945000
//SYSTSPRT DD SYSOUT=*                                                  04950000
//SYSPRINT DD SYSOUT=*                                                  04960000
//SYSOUT   DD SYSOUT=*                                                  04970000
//SYSDBOUT DD SYSOUT=*                                                  04980000
//SYSABOUT DD SYSOUT=*                                                  04990000
//SYSUDUMP DD SYSOUT=*                                                  05000000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T01),DISP=SHR                   05010000
//*                                                                     05020000
//**********************************************************************05030000
//*  PASO:  1C    GENERAR REPORTE DE LIQUIDACION MERCADO DE CAPITALES  *05040000
//*               A FECHA DE OPERACION(P05)                            *05050000
//*                                                                    *05060000
//*  PJD03P1C                                               ZM4DHV24   *05070000
//**********************************************************************05080000
//PJD03P1C EXEC PGM=IKJEFT01,COND=(4,LT)                                05090000
//*                                                                     05100000
//ZM4D24A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               05110000
//*                                                                     05120000
//ZM4D24R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     05130000
//*                                                                     05140000
//SYSTSPRT DD SYSOUT=*                                                  05150000
//SYSPRINT DD SYSOUT=*                                                  05160000
//SYSOUT   DD SYSOUT=*                                                  05170000
//SYSDBOUT DD SYSOUT=*                                                  05180000
//SYSABOUT DD SYSOUT=*                                                  05190000
//SYSUDUMP DD SYSOUT=*                                                  05200000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T1C),DISP=SHR                   05210000
//*                                                                     05220000
//**********************************************************************05230000
//*  PASO:  1B    GENERAR REPORTE DE TITULOS OPERADOS POR CASA DE      *05240000
//*               BOLSA A FECHA DE OPERACION(P05)                      *05250000
//*                                                                    *05260000
//*  PJD03P1B                                               ZM4DHW51   *05270000
//**********************************************************************05280000
//PJD03P1B EXEC PGM=IKJEFT01,COND=(4,LT)                                05290000
//*                                                                     05300000
//ZMHW51A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               05310000
//*                                                                     05320000
//ZMHW51R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     05330000
//*                                                                     05340000
//SYSTSPRT DD SYSOUT=*                                                  05350000
//SYSPRINT DD SYSOUT=*                                                  05360000
//SYSOUT   DD SYSOUT=*                                                  05370000
//SYSDBOUT DD SYSOUT=*                                                  05380000
//SYSABOUT DD SYSOUT=*                                                  05390000
//SYSUDUMP DD SYSOUT=*                                                  05400000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T1B),DISP=SHR                   05410000
//*                                                                     05420000
//**********************************************************************05430000
//*  PASO:  1A    GENERA REPORTE DE HECHOS A FECHA DE OPERACION (P05). *05440000
//*                                                                    *05450000
//*  PJD03P1A                                               ZM4DHW52   *05460000
//**********************************************************************05470000
//PJD03P1A EXEC PGM=IKJEFT01,COND=(4,LT)                                05480000
//*                                                                     05490000
//ZMHW52A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               05500000
//*                                                                     05510000
//ZMHW52R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     05520000
//*                                                                     05530000
//SYSTSPRT DD SYSOUT=*                                                  05540000
//SYSPRINT DD SYSOUT=*                                                  05550000
//SYSOUT   DD SYSOUT=*                                                  05560000
//SYSDBOUT DD SYSOUT=*                                                  05570000
//SYSABOUT DD SYSOUT=*                                                  05580000
//SYSUDUMP DD SYSOUT=*                                                  05590000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T1A),DISP=SHR                   05600000
//*                                                                     05610000
//**********************************************************************05620000
//* PASOS AGREGADOS PARA REPORTES DE LIQUIDACION A 72 HORAS. FEBRERO 07 05630000
//**********************************************************************05640000
//*                                                                     05650000
//**********************************************************************05660000
//*  PASO: 0R     GENERAR REPORTE DE LIQUIDACION AGENTE  -  AGENTE     *05670000
//*               72 HORAS                                             *05680000
//*  PJD03P0R                                               ZM4DHW10   *05690000
//**********************************************************************05700000
//PJD03P0R EXEC PGM=IKJEFT01,COND=(4,LT)                                05710000
//ZM4D10A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               05720000
//ZM4D10R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     05730000
//SYSTSPRT DD SYSOUT=*                                                  05740000
//SYSPRINT DD SYSOUT=*                                                  05750000
//SYSOUT   DD SYSOUT=*                                                  05760000
//SYSDBOUT DD SYSOUT=*                                                  05770000
//SYSABOUT DD SYSOUT=*                                                  05780000
//SYSUDUMP DD SYSOUT=*                                                  05790000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T0R),DISP=SHR                   05800000
//**********************************************************************05810000
//*  PASO: 0Q     GENERAR REPORTE DE LIQUIDACION AGENTE Y CLIENTES     *05820000
//*               72 HORAS                                             *05830000
//*  PJD03P0Q                                               ZM4DHW11   *05840000
//**********************************************************************05850000
//PJD03P0Q EXEC PGM=IKJEFT01,COND=(4,LT)                                05860000
//ZMHV11A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               05870000
//ZMHV11C1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     05880000
//ZMHV11G1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     05890000
//SYSTSPRT DD SYSOUT=*                                                  05900000
//SYSPRINT DD SYSOUT=*                                                  05910000
//SYSOUT   DD SYSOUT=*                                                  05920000
//SYSDBOUT DD SYSOUT=*                                                  05930000
//SYSABOUT DD SYSOUT=*                                                  05940000
//SYSUDUMP DD SYSOUT=*                                                  05950000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T0Q),DISP=SHR                   05960000
//**********************************************************************05970000
//*  PASO: 0P     REPORTAR INFORMACION DE COMPRAS/VENTAS               *05980000
//*               72 HRS, DE MERCADO DE CAPITALES:                     *05990000
//*  PJD03P0P                                               ZM4DHW12   *06000000
//**********************************************************************06010000
//PJD03P0P EXEC PGM=IKJEFT01,COND=(4,LT)                                06020000
//ZMHV12A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               06030000
//ZM4V12R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     06040000
//SYSTSPRT DD SYSOUT=*                                                  06050000
//SYSPRINT DD SYSOUT=*                                                  06060000
//SYSOUT   DD SYSOUT=*                                                  06070000
//SYSDBOUT DD SYSOUT=*                                                  06080000
//SYSABOUT DD SYSOUT=*                                                  06090000
//SYSUDUMP DD SYSOUT=*                                                  06100000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T0P),DISP=SHR                   06110000
//**********************************************************************06120000
//*  PASO: 0N      REPORTE DE TITULOS OPERADOS POR CASA DE BOLSA       *06130000
//*               72 HRS.                                              *06140000
//*  PJD03P0N                                               ZM4DHW13   *06150000
//**********************************************************************06160000
//PJD03P0N EXEC PGM=IKJEFT01,COND=(4,LT)                                06170000
//ZMHW13A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               06180000
//ZMHW13R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     06190000
//SYSTSPRT DD SYSOUT=*                                                  06200000
//SYSPRINT DD SYSOUT=*                                                  06210000
//SYSOUT   DD SYSOUT=*                                                  06220000
//SYSDBOUT DD SYSOUT=*                                                  06230000
//SYSABOUT DD SYSOUT=*                                                  06240000
//SYSUDUMP DD SYSOUT=*                                                  06250000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T0N),DISP=SHR                   06260000
//**********************************************************************06270000
//*  PASO: 0F     REPORTE DE LIQUIDACION AGENTES/CLIENTES 72 HRS.      *06280000
//*  PJD03P0F                                               ZM4DHW14   *06290000
//**********************************************************************06300000
//PJD03P0F EXEC PGM=IKJEFT01,COND=(4,LT)                                06310000
//ZMHW14A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               06320000
//ZMHW14R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     06330000
//SYSTSPRT DD SYSOUT=*                                                  06340000
//SYSPRINT DD SYSOUT=*                                                  06350000
//SYSOUT   DD SYSOUT=*                                                  06360000
//SYSDBOUT DD SYSOUT=*                                                  06370000
//SYSABOUT DD SYSOUT=*                                                  06380000
//SYSUDUMP DD SYSOUT=*                                                  06390000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T0F),DISP=SHR                   06400000
//**********************************************************************06410000
//*  PASO: 0E     SISTEMA EC ENLACE CONTABLE - REPORTE DE LIQUIDACION  *06420000
//*               DE CENTROS REGIONALES (EFECTIVO)                     *06430000
//*  PJD03P0E                                               ZM4DHW16   *06440000
//**********************************************************************06450000
//PJD03P0E EXEC PGM=IKJEFT01,COND=(4,LT)                                06460000
//ZM4W16R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     06470000
//SYSTSPRT DD SYSOUT=*                                                  06480000
//SYSPRINT DD SYSOUT=*                                                  06490000
//SYSOUT   DD SYSOUT=*                                                  06500000
//SYSDBOUT DD SYSOUT=*                                                  06510000
//SYSABOUT DD SYSOUT=*                                                  06520000
//SYSUDUMP DD SYSOUT=*                                                  06530000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T0E),DISP=SHR                   06540000
//**********************************************************************06550000
//*  PASO: 0D     SISTEMA EC ENLACE CONTABLE - REPORTE DE ASIGNACION   *06560000
//*               DEFINITIVA, A 72 HORAS                               *06570000
//*  PJD03P0D MODIFICADO                                    ZM4DHW17   *06580000
//**********************************************************************06590000
//PJD03P0D EXEC PGM=IKJEFT01,COND=(4,LT)                                06600000
//ZM4W17R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     06610000
//*                                                                     06611000
//ZM4W17A1 DD DSN=MXCP.ZM.WKF.MDC.E&EMP..S&SUC..ARCH7,                  06612000
//         DISP=(NEW,CATLG,DELETE),                                     06613000
//         DCB=(LRECL=202,RECFM=FB,BLKSIZE=0,DSORG=PS),                 06614000
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)                            06615000
//*                                                                     06616000
//SYSTSPRT DD SYSOUT=*                                                  06620000
//SYSPRINT DD SYSOUT=*                                                  06630000
//SYSOUT   DD SYSOUT=*                                                  06640000
//SYSDBOUT DD SYSOUT=*                                                  06650000
//SYSABOUT DD SYSOUT=*                                                  06660000
//SYSUDUMP DD SYSOUT=*                                                  06670000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T0D),DISP=SHR                   06680000
//**********************************************************************06690000
//*  PASO: 0A     REPORTE DE LIQUIDACION AGENTES/CLIENTES A            *06700000
//*               72 HORAS                                             *06710000
//*  PJD03P0A                                               ZM4DHW18   *06720000
//**********************************************************************06730000
//PJD03P0A EXEC PGM=IKJEFT01,COND=(4,LT)                                06740000
//ZMHW18A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PATR,DISP=SHR               06750000
//ZMHW18R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     06760000
//SYSTSPRT DD SYSOUT=*                                                  06770000
//SYSPRINT DD SYSOUT=*                                                  06780000
//SYSOUT   DD SYSOUT=*                                                  06790000
//SYSDBOUT DD SYSOUT=*                                                  06800000
//SYSABOUT DD SYSOUT=*                                                  06810000
//SYSUDUMP DD SYSOUT=*                                                  06820000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T0A),DISP=SHR                   06830000
//**********************************************************************06840000
//* OBJETIVO : ACTIVA LA CONDICION EN CONTROL-M PARA LA LIQUIDACION    *06850000
//*            DE BANCA PATRIMONIAL.                                   *06860000
//**********************************************************************06870000
//PJD03P00 EXEC  PGM=CTMCND,PARM='ADD COND  SIVAXLBP_IN_SEP_OK  WDATE', 06880000
//         COND=(4,LT)                                                  06890000
//PI601765  DD DUMMY                                                    06900000
//*                                                                     06910000
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   06920000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   06930000
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 06940000
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   06950000
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   06960000
//PRTDBG   DD SYSOUT=*                                                  06970000
//SYSPRINT DD DUMMY                                                     06980000
//SYSUDUMP DD DUMMY                                                     06990000
//DAPRINT  DD SYSOUT=*                                                  07000000
//DACNDIN  DD DDNAME=SYSIN                                              07010000
//*                                                                     07020000
