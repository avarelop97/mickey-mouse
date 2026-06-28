//ZMPP9703 PROC
//*====================================================================*
//*    NOMBRE            :ZMPP9703                                     *
//*    APLICATIVO        :ZM@                                          *
//*    PERIODICIDAD      :DIARIO                                       *
//*    AUTOR             :FABRICA DE SOFTWARE DGCM.                    *
//*    FECHA DE CREACION :15 DE MARZO DE 2017.                         *
//*====================================================================*
//*--------------------------------------------------------------------*
//*           L O G    D E   M O D I F I C A C I O N E S               *
//*--------------------------------------------------------------------*
//*     MARCA      AUTOR    FECHA     DESCRIPCION                      *
//*   ---------   -------  --------   -------------------------------  *
//*    XXXXXXX    XXXXXXX  DDMMMAA    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  *
//*--------------------------------------------------------------------*
//*====================================================================*
//* PASO     : ZM970399                                                *
//* PROGRAMA : ZM4CC815                                                *
//* OBJETIVO : INSERTA A TABLA ZMDT815, MENSAJES DEL SIVA              *
//*====================================================================*
//ZM970399 EXEC PGM=IKJEFT01
//*
//E1DQENT1 DD DSN=MXCP.ZM.FIX.MENSAJES,
//            DISP=SHR
//*
//QSRLSDB2 DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZM970399),DISP=SHR
//*
