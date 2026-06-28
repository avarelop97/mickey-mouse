//ZMHCPE24  PROC                                                        00010025
//**********************************************************************00020000
//*                   <<  C A P I T A L E S  >>                        *00033000
//*                                                                    *00120000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00130000
//*                                                                    *00140000
//* PROCESO        :  ZMHCPE24                                         *00150025
//*                   CARGA HECHOS DE BMV                              *00160000
//* CORRE                                                              *00210000
//* ANTES DE       :  NINGUNO                                          *00220025
//*                                                                    *00230000
//* DESPUES DE     :  SIVAXBHE                                         *00240000
//*                                                                    *00250000
//* PERIODICIDAD   :  A SOLICITUD DEL USUARIO (OPC. 973)               *00260000
//*                                                                    *00270000
//* ELABORADO POR  :  STK, JULIO 2011 (RHB)                            *00280000
//**********************************************************************00481000
//*                      LOG DE MODIFICACIONES                         *00482000
//**********************************************************************00483000
//******************************************************************
//*----------------------------------------------------------------*
//*           L O G   D E   M O D I F I C A C I O N E S            *
//*----------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA            DESCRIPCION            *
//* ----------- -------- ------- --------------------------------- *
//* FS-1.0.0-04 XMCH061  27MAR12 SE AGREGO LA SALIDA S1PHE241      *
//*            *         *       *                                 *
//*----------------------------------------------------------------*
//**********************************************************************00483000
//* OBJETIVO : CCARGA HECHOS DE BMV                                    *00520000
//*          -- ZM4DHV42 --                                            *00530001
//**********************************************************************00550040
//PHE24P01 EXEC PGM=IKJEFT01                                            00551027
//*                                                                     00553001
//*FS-1.0.0-04-INI                                                      00553001
//S1PHE241 DD DSN=MXCP.ZM.FIX.ARCHSITI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=302,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*FS-1.0.0-04-FIN                                                      00553001
//*                                                                     00553001
//SYSTSPRT DD SYSOUT=*                                                  00590035
//SYSPRINT DD SYSOUT=*                                                  00600035
//SYSOUT   DD SYSOUT=*                                                  00610035
//SYSDBOUT DD SYSOUT=*                                                  00620035
//SYSABOUT DD DUMMY                                                     00630000
//SYSUDUMP DD DUMMY                                                     00640000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHE24T01),DISP=SHR                   00651041
//*
