@echo off
set T_FILENAME="TR_Bank Panic (SG-1000) [!].sg"
set S_FILENAME="Bank Panic (SG-1000) [!].sg"
set SCRIPTNAME="bankpanicsg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
