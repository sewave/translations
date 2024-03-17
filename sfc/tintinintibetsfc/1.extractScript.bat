@echo off
set T_FILENAME="Tintin in Tibet (Europe) (En,Fr,De,Nl).sfc"
set SCRIPTNAME="tintinintibetsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
