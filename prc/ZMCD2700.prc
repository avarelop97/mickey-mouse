//ZMCD2700 PROC                                                         00010000
//*                                                                     00020000
//*--------------------------------------------------------------------*
//* PASO     : ZLF03P05                                                *
//* UTILERIA : DSNUTILB,PARM='MXP1,CBUDND2701'                         *
//* OBJETIVO : BORRAR DEL CATALOGO DE DB2 (SYSCOPY) LAS ENTRADAS DE LOS*00400300
//*            BACKUPS QUE REALIZAN LOS PROCS FDD0200, FDD0300 Y       *00400400
//*            FDD0400 CON AGE(4)                                      *00400500
//*--------------------------------------------------------------------*
//ZLF27P05 EXEC PGM=DSNUTILB,REGION=4M,PARM='MXP1,CBUDND2701,'          00400900
//*                                                                     00401100
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*                                                                     00401100
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN DD DSN=ZIVA.ZME.CONTROL(ZLF27T05),DISP=SHR                      00785900
//*                                                                     00670000
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  CONVERSION A COBOL II.                           *
//*                                                                    *
//*                         -- DSNUTILB --                             *00400200
//* OBJETIVO : BORRAR DEL CATALOGO DE DB2 (SYSCOPY) LAS ENTRADAS DE LOS*00400300
//*            BACKUPS QUE REALIZAN LOS PROCS FDD0200, FDD0300 Y       *00400400
//*            FDD0400 CON AGE(4)                                      *00400500
//*                                                                    *00400600
//* PASO REINICIABLE POR RESTART                                       *00400700
//*                                                                    *00400600
//* REALIZACION    :  SOFTTEK (PANE)                  21/MAY/2010.     *
//**********************************************************************00400800
//**********************************************************************00680000
//* PEND          FIN DEL PROCEDIMIENTO ZMCD2700  ***UTILERIA DB2      *00690000
//**********************************************************************00700000
