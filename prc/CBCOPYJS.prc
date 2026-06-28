CBCOPYJS PROCESS PNODE=&NODOP                  -                        00010000
                 SNODE=&NODOS                  -                        00020000
                 SNODEID=(&IDNS)                                        00030001
STEP01   COPY FROM (PNODE DSN=&DSNP DISP=SHR)  -                        00040000
              TO   (SNODE DSN=&DSNS DISP=RPL)  -                        00050000
              COMPRESS EXTENDED                                         00060000
STEP02   IF (STEP01 GT 4) THEN                                          00070001
            RUN TASK (PGM=MAILOPER,                             -       00080000
                      PARM=("/TRANSFER ARCHIVO &DSNS FALLIDA")) -       00090000
                SNODE                                                   00100000
            EXIT                                                        00110000
         EIF                                                            00120000
STEP03   RUN JOB (DSN=&JCLS) SNODE                                      00130001
