//ZMPRLD02 PROC                                                         00010005
//**********************************************************************00012000
//*                       -- VOBF40S --                                *00013000
//*   OBJETIVO:                                                        *00013100
//*   DEPURACION SEMANAL DE LA TABLA SIVA (MOVTOS. DE BANCOS INUTILES) *00014000
//*   ACTUALIZA: SIVA                                                  *00015000
//*                                                                    *00015100
//**********************************************************************00016000
//ZMLD0201 EXEC PGM=IKJEFT01,DYNAMNBR=20                                00020006
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00060000
//SYSPRINT DD SYSOUT=*                                                  00070000
//SYSOUT   DD SYSOUT=*                                                  00080000
//SYSDBOUT DD SYSOUT=*                                                  00090000
//SYSABOUT DD SYSOUT=*                                                  00100000
//SYSUDUMP DD DUMMY                                                     00110000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMLD0201),DISP=SHR                   00120006
//*                                                                     00140000
