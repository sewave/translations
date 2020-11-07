@echo off
set T_FILENAME="TR_Red Zone (USA, Europe).md"
set S_FILENAME="Red Zone (USA, Europe).md"
set SCRIPTNAME="redzonesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt3.tbl tr_%SCRIPTNAME%Alt3.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt4.tbl tr_%SCRIPTNAME%Alt4.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt5.tbl tr_%SCRIPTNAME%Alt5.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt6.tbl tr_%SCRIPTNAME%Alt6.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt7.tbl tr_%SCRIPTNAME%Alt7.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt8.tbl tr_%SCRIPTNAME%Alt8.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt9.tbl tr_%SCRIPTNAME%Alt9.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%AltA.tbl tr_%SCRIPTNAME%AltA.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%AltB.tbl tr_%SCRIPTNAME%AltB.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%AltC.tbl tr_%SCRIPTNAME%AltC.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%AltD.tbl tr_%SCRIPTNAME%AltD.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
