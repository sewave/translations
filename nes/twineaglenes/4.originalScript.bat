@echo off
set T_FILENAME="Twin Eagle - Revenge Joe's Brother (U) [!].nes"
set SCRIPTNAME="twineaglenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
