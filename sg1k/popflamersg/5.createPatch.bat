@echo off
set T_FILENAME="TR_Pop Flamer (SG-1000) [!].sg"
set S_FILENAME="Pop Flamer (SG-1000) [!].sg"
set SCRIPTNAME="popflamersg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
