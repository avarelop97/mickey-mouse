//FDDEE01 PROC
//**********************************************************************
//*                         -- VOB1651 --                              *
//*                                                                    *
//*  OBJETIVO  : REALIZAR LA REESTRUCTURACION DE CUENTAS DE CHEQUES    *
//*                                                                    *
//*  ACTUALIZA : TABLA CTABCO                                          *
//*  PROCESO   : REESTRUCTURACION (CUENTAS)                            *
//*                                                                    *
//*  PARAMETROS: C - REGISTROS EN LOS QUE SE HARA COMMIT (4 POSOCIONES)*
//*              X - CLAVE DEL BANCO A REESTRUCTURAR (2 POSICIONES)    *
//*              Y - CUENTA DONDE SE INICIARA LA REESTRUCTURACION      *
//*              Z - CUENTA DONDE SE TERMINARA LA REESTRUCTURACION     *
//*                  (16 POSICIONES PARA CADA UNA DE LAS CUENTAS)      *
//*                                                                    *
//*              PARMS('CCCCXXYYYYYYYYYYYYYYYYZZZZZZZZZZZZZZZZ')       *
//*                                                                    *
//*  EN CASO DE ERROR: -LANZAR NUEVAMENTE LA CADENA MODIFICANDO LOS    *
//*                     PARAMETROS DE ENTRADA CON LA CUENTA INICIO     *
//*                     IGUAL A LA CUENTA DONDE SE REALIZO EL ULTIMO   *
//*                     COMMIT.                                        *
//*                                                                    *
//**********************************************************************
//FDDEE010 EXEC PGM=IKJEFT01
//*
//S1VO1651 DD  DSN=SIVA.SIE.FIX.REPORTE.REESTRU,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(300,100),RLSE),
//             RECFM=FBA,LRECL=200
//*
//S2VO1651 DD  DSN=SIVA.SIE.FIX.REPORTE.DUPLICA,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(300,100),RLSE),
//             RECFM=FBA,LRECL=200
//*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSOUX   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSTSIN  DD DSN=SIVA.CARDS(FEE0101),DISP=SHR
