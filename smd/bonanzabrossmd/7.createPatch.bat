@echo off
set T_FILENAME="TR_Bonanza Bros. (U) [!].gen"
set S_FILENAME="Bonanza Bros. (U) [!].gen"
set SCRIPTNAME="bonanzabrossmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
