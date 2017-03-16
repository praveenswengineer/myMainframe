//* JCL TO CREATE UNLOAD FROM A SPECIFIC TABLE
//* USING IKJEFT01 
//STEP001 EXEC PGM=IKJEFT01
//STEPLIB  DD DSN=<SDSNLOAD/RUNLIB>,DISP=SHR
//* CHECK WITH YOUR PEERS FOR PROPER STEPLIB
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD DSN=<FILE FOR PUNCH/LOAD CARD>,DISP=(,CATLG,DELETE),
//            RECFM=FB.LRECL=100,UNIT=DISK,SPACE=(TRK,(10,10),RLSE)
//SYSREC   DD DSN=<FILE FOR UNLOAD>,DISP=(,CATLG,DELETE),
//            RECFM=FB.LRECL=100,UNIT=DISK,SPACE=(CYL,(10,10),RLSE)
//SYSTIN   DD *
 DSN SYSTEM(<DB2x>)               * CHANGE TO YOUR DB2 SUBSYSTE
 RUN PROG(DSNTIUAL)  -
 PLAN(DSNTIUAL)      -
 LIB(<DB2 RUN LIB>)  -
 PARMS('SQL')        - 
/*
//SYSIN    DD *
 SELECT * FROM <SCHEMA>.<TABLENAME>;
/*
//