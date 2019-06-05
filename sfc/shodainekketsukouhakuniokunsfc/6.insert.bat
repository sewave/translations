@echo off
set T_FILENAME="TR_Shodai Nekketsu Kouha Kunio-kun (J) [T+ENG].smc"
set S_FILENAME="Shodai Nekketsu Kouha Kunio-kun (J) [T+ENG].smc"
set SCRIPTNAME="shodainekketsukouhakuniokunsfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
