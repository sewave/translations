@echo off
set T_FILENAME="TR_Super Tank (SG-1000) [!].sg"
set S_FILENAME="Super Tank (SG-1000) [!].sg"
set SCRIPTNAME="supertanksg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
