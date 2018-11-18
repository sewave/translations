@echo off
set T_FILENAME="TR_Legend of Kage, The (U) [!].nes"
set S_FILENAME="Legend of Kage, The (U) [!].nes"
set SCRIPTNAME="legendofkagethenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
