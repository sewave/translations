@echo off
set T_FILENAME="TR_Master Karateka (Japan).gb"
set S_FILENAME="Master Karateka (Japan).gb"
set SCRIPTNAME="masterkaratekagb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
