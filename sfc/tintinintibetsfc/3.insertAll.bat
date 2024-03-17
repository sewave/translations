@echo off
set T_FILENAME="TR_Tintin in Tibet (Europe) (En,Fr,De,Nl).sfc"
set S_FILENAME="Tintin in Tibet (Europe) (En,Fr,De,Nl).sfc"
set SCRIPTNAME="tintinintibetsfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
