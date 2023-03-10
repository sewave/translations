@echo off
set T_FILENAME="3D Starstrike.tzx"
set SCRIPTNAME="3dstarstriketzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
