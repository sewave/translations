@echo off
set T_FILENAME="TR_Choplifter (SG-1000) [!].sg"
set S_FILENAME="Choplifter (SG-1000) [!].sg"
set SCRIPTNAME="chopliftersg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
