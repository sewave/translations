@echo off
set T_FILENAME="TR_Antarctic Adventure (J) [!].nes"
set S_FILENAME="Antarctic Adventure (J) [!].nes"
set SCRIPTNAME="antarcticadventurenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
