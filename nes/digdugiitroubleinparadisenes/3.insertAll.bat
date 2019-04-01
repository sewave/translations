@echo off
set T_FILENAME="TR_Dig Dug II - Trouble in Paradise (U) [!].nes"
set S_FILENAME="Dig Dug II - Trouble in Paradise (U) [!].nes"
set SCRIPTNAME="digdugiitroubleinparadisenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
