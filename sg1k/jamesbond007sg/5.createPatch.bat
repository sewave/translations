@echo off
set T_FILENAME="TR_James Bond 007 (SG-1000) [!].sg"
set S_FILENAME="James Bond 007 (SG-1000) [!].sg"
set SCRIPTNAME="jamesbond007sg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
