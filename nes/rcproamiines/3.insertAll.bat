@echo off
set T_FILENAME="TR_R.C. Pro-Am II (USA).nes"
set S_FILENAME="R.C. Pro-Am II (USA).nes"
set SCRIPTNAME="rcproamiines"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
