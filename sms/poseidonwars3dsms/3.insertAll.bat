@echo off
set T_FILENAME="TR_Poseidon Wars 3-D (USA, Europe, Brazil).sms"
set S_FILENAME="Poseidon Wars 3-D (USA, Europe, Brazil).sms"
set SCRIPTNAME="poseidonwars3dsms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt3.tbl tr_%SCRIPTNAME%Alt3.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt4.tbl tr_%SCRIPTNAME%Alt4.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt5.tbl tr_%SCRIPTNAME%Alt5.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% port_30147.dat 30147
java -jar Hextractor.jar -if %T_FILENAME% convoy_31563.dat 31563
java -jar Hextractor.jar -if %T_FILENAME% summary_2ECE0.dat 2ECE0
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
