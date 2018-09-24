@echo off
set T_FILENAME="TR_Hyper Sports (SG-1000) [!].sg"
set S_FILENAME="Hyper Sports (SG-1000) [!].sg"
set SCRIPTNAME="hypersportssg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
