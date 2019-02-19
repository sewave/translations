@echo off
set T_FILENAME="Ikari Warriors II - Victory Road (U) [!].nes"
set SCRIPTNAME="ikariwarriorsiivictoryroadnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
