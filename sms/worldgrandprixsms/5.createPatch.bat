@echo off
set T_FILENAME="TR_World Grand Prix (U) [!].sms"
set S_FILENAME="World Grand Prix (U) [!].sms"
set SCRIPTNAME="worldgrandprixsms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
