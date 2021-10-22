@echo off
set T_FILENAME="TR_Frankenstein - The Monster Returns (USA).nes"
set S_FILENAME="Frankenstein - The Monster Returns (USA).nes"
set SCRIPTNAME="frankensteinthemonsterreturnsnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
