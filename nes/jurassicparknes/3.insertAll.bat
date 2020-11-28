@echo off
set T_FILENAME="TR_Jurassic Park (USA).nes"
set S_FILENAME="Jurassic Park (USA).nes"
set SCRIPTNAME="jurassicparknes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
