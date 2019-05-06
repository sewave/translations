@echo off
set T_FILENAME="TR_Eliminate Down (J) [!].bin"
set S_FILENAME="Eliminate Down (J) [!].bin"
set SCRIPTNAME="eliminatedownsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
