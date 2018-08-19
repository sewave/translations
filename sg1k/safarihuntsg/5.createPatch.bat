@echo off
set T_FILENAME="TR_Safari Hunt (SG-1000) [!].sg"
set S_FILENAME="Safari Hunt (SG-1000) [!].sg"
set SCRIPTNAME="safarihuntsg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
