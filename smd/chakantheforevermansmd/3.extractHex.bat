@echo off
set T_FILENAME="TR_Chakan - The Forever Man (UE) [!].gen"
set SCRIPTNAME="chakantheforevermansmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
