@echo off
set T_FILENAME="Wolfenstein 3-D (USA).sfc"
set SCRIPTNAME="wolfenstein3dsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
