@echo off
set T_FILENAME="TR_Disney's Aladdin (U) [!].gen"
set S_FILENAME="Disney's Aladdin (U) [!].gen"
set SCRIPTNAME="disneysaladdinsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
