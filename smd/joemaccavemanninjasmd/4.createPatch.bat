@echo off
set T_FILENAME="TR_Joe & Mac Caveman Ninja (U) [!].bin"
set S_FILENAME="Joe & Mac Caveman Ninja (U) [!].bin"
set SCRIPTNAME="joemaccavemanninjasmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
