@echo off
set T_FILENAME="TR_Double Dragon (U) [!].gen"
set S_FILENAME="Double Dragon (U) [!].gen"
set SCRIPTNAME="doubledragonsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
