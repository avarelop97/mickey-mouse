//FDD0100  PROC                                                         00010000
//*                                                                     00020000
//**********************************************************************00030000
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *00040000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00050000
//*                                                                    *00060000
//* PROCESO        :  PFDFDD01                                         *00070000
//*                   FIN DE DIA DEL SIVA.                             *00080000
//*                                                                    *00090000
//* OBJETIVO       :  REALIZAR LA INTERFASE DE FIN DE DIA DEL SIVA.    *00100000
//*                   - INTERFASES BATCH (TSO)                         *00110000
//*                                                                    *00120000
//* CORRE                                                              *00124000
//* ANTES DE       :  PFDFDD02, PFDFDD05, PFDFDD06                     *00125000
//*                :  PFDFDD07, PFDFDD08, PFDFDD09, PFDFDD10, PFDFDD11 *00126000
//*                   PFDFDD12                                         *00127000
//*                                                                    *00128000
//* DESPUES DE     :  CIERRES DE TODOS LOS MODULOS                     *00129000
//*                                                                    *00130000
//* REALIZO        :  JOEL GONZALEZ MARTINEZ                           *00140000
//* FECHA          :  FEBRERO DE 1991                                  *00150000
//*                                                                    *00160000
//* OBSERVACION    :  EL PROCESO FINDIA SE DIVIDIO EN 12 SUBPROCESOS   *00170000
//*                   A MANERA DE OPTIMIZAR EL TIEMPO TOTAL DE EJECU - *00171000
//*                   CION LOS CUALES SERAN SUBMITIDOS POR DISPARADOR  *00172000
//*                   Y NO POR CONSOLA                                 *00173000
//*                                                                    *00174000
//* MODIFICACION   :- SE LE INCREMENTO UN PASO PARA BORRAR LAS         *00174000
//*                   ENTRADAS DEL CATALOGO "SYSCOPY" DE LOS           *00174000
//*                   BACKUPS DE LAS TABLAS QUE SE RESPALDAN EN        *00174000
//*                   EL PROCESO CON UN "AGE(4)"                       *00174000
//*                                                                    *00174000
//*                 - SE ELIMINARON LOS PASOS DE LOS PROGRAMAS         *00174000
//*                   VNB877D, VNB878D Y MAILOPER'S POR YA NO SER      *00174000
//*                   NECESARIOS DEBIDO A QUE "CONTROL-M" SE ENCARGA   *00174000
//*                   DE LAS FUNCIONES DE ESTOS PROGRAMAS DE FORMA     *00174000
//*                   IMPLICITA.                                       *00174000
//*                                   SOPORTE A PRODUCCION 11/SEP/91   *00174000
//*                                                                    *00174000
//**********************************************************************00175000
//**********************************************************************00400100
//*                         -- DSNUTILB --                             *00400200
//* OBJETIVO : BORRAR DEL CATALOGO DE DB2 (SYSCOPY) LAS ENTRADAS DE LOS*00400300
//*            BACKUPS QUE REALIZAN LOS PROCS FDD0200, FDD0300 Y       *00400400
//*            FDD0400 CON AGE(4)                                      *00400500
//*                                                                    *00400600
//* PASO REINICIABLE POR RESTART                                       *00400700
//**********************************************************************00400800
//FDD0101 EXEC PGM=DSNUTILB,REGION=4M,PARM='MXP1,PFDFDD0101'            00400900
//*                                                                     00401100
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSPRINT DD SYSOUT=*                                                  00785600
//VTPRINT  DD SYSOUT=*                                                  00785700
//SYSUDUMP DD DUMMY                                                     00785800
//SYSIN DD DSN=SIVA.CARDS(FDD0101),DISP=SHR                             00785900
//*                                                                     00670000
//**********************************************************************00680000
//* PEND          FIN DEL PROCEDIMIENTO FDD0100   ***UTILERIA DB2      *00690000
//**********************************************************************00700000
