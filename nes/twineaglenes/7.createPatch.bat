@echo off
set T_FILENAME="TR_Twin Eagle - Revenge Joe's Brother (U) [!].nes"
set S_FILENAME="Twin Eagle - Revenge Joe's Brother (U) [!].nes"
set SCRIPTNAME="twineaglenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
