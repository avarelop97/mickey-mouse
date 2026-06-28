  LOAD DATA REPLACE LOG NO COPY NO COPYPEND NO INDDN SYSREC00
      INTO TABLE PRODUSVP.EDIMPUE
   (
   ICUENTA                                POSITION(       1:       4)
   DECIMAL                       ,
   FPROCESO                               POSITION(       5:      14)
   DATE EXTERNAL(            10) ,
   IOPERA                                 POSITION(      15:      17)
   DECIMAL                       ,
   ICONCIMP                               POSITION(      18:      19)
   DECIMAL                       ,
   MIMPUEST                               POSITION(      20:      27)
   DECIMAL                       ,
   FREG                                   POSITION(      28:      53)
   TIMESTAMP EXTERNAL(       26) ,
   IPROGRAM                               POSITION(      54:      61)
   CHAR(                      8) ,
   IEMISORA                               POSITION(      62:      68)
   CHAR(                      7) ,
   ISERIE                                 POSITION(      69:      76)
   CHAR(                      8) ,
   MISRVTAC                               POSITION(      77:      84)
   DECIMAL                       ,
   MISRDIVN                               POSITION(      85:      92)
   DECIMAL                       ,
   MISRDIVE                               POSITION(      93:     100)
   DECIMAL                       ,
   MCPPFA                                 POSITION(     101:     108)
   DECIMAL                       ,
   FULACCPP                               POSITION(     109:     118)
   DATE EXTERNAL(            10) ,
   MGANANCIA                              POSITION(     119:     126)
   DECIMAL                       ,
   MPERDIDA                               POSITION(     127:     134)
   DECIMAL
   )
