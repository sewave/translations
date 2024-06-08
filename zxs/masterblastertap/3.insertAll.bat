@echo off
set T_FILENAME="TR_MBLASTER.TAP"
set S_FILENAME="MBLASTER.TAP"
set SCRIPTNAME="masterblastertap"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctap %T_FILENAME%
pause
