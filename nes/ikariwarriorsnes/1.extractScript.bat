@echo off
set T_FILENAME="Ikari Warriors (U) (PRG1) [!].nes"
set SCRIPTNAME="ikariwarriorsnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
