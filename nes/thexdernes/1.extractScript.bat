@echo off
set T_FILENAME="Thexder (J) [!].nes"
set SCRIPTNAME="thexdernes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
