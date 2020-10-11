@echo off
set T_FILENAME="Street Fighter II (USA).sfc"
set SCRIPTNAME="streetfighteriisfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
