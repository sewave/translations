@echo off
set T_FILENAME="TR_Spy Hunter (USA).nes"
set S_FILENAME="Spy Hunter (USA).nes"
set SCRIPTNAME="spyhunternes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
