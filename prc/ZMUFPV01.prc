//ZMUFPV01 PROC                                                         00001000
//**********************************************************************00014200
//* PROGRAMA: ZM6VU002                                                 *00014300
//* FUNCION:  ACTUALIZACION DE PORCENT PARA TITULAR Y COTITULAR EN     *00014400
//*           LA TABLA BAJACLI (BAJAS FISICAS)                         *00014500
//**********************************************************************00014600
//PUFPPV02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00014700
//PF601765  DD DUMMY                                                    00014800
//*                                                                     00014900
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00015200
//SYSPRINT DD SYSOUT=*                                                  00015300
//SYSOUT   DD SYSOUT=*                                                  00015400
//SYSDBOUT DD SYSOUT=*                                                  00015500
//SYSABOUT DD SYSOUT=*                                                  00015600
//SYSUDUMP DD DUMMY                                                     00015700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T02),DISP=SHR                   00015900
//*                                                                     00018400
//**********************************************************************00018500
//* PROGRAMA: ZM6VU001                                                 *00018600
//* FUNCION:  ACTUALIZACION DE PORCENT PARA TITULAR Y COTITULAR EN     *00018700
//*           LA TABLA ACLICTA                                         *00018800
//**********************************************************************00018900
//PUFPPV01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00019000
//PF601765  DD DUMMY                                                    00020000
//*                                                                     00030000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00040000
//SYSPRINT DD SYSOUT=*                                                  00050000
//SYSOUT   DD SYSOUT=*                                                  00060000
//SYSDBOUT DD SYSOUT=*                                                  00070000
//SYSABOUT DD SYSOUT=*                                                  00080000
//SYSUDUMP DD DUMMY                                                     00090000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T01),DISP=SHR                   00100000
//*                                                                     00110000
