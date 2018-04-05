@echo off
set T_FILENAME="TR_Art of Fighting (U) [!].gen"
set S_FILENAME="Art of Fighting (U) [!].gen"
set SCRIPTNAME="artfightingsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
