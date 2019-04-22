@echo off
set T_FILENAME="TR_Parodius da! (J) [T+ENG].nes"
set S_FILENAME="Parodius da! (J) [!].nes"
set SCRIPTNAME="parodiusdanes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
