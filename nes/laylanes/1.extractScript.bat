@echo off
set T_FILENAME="Layla (J) [!].nes"
set SCRIPTNAME="laylanes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
