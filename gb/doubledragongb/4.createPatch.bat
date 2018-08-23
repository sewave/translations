@echo off
set T_FILENAME="TR_Double Dragon (U) [!].gb"
set S_FILENAME="Double Dragon (U) [!].gb"
set SCRIPTNAME="doubledragongb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
