@echo off
set T_FILENAME="TR_Salamander (J) [!].nes"
set S_FILENAME="Salamander (J) [!].nes"
set SCRIPTNAME="salamandernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
