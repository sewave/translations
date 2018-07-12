@echo off
set T_FILENAME="TR_Road Fighter (J) [!].nes"
set S_FILENAME="Road Fighter (J) [!].nes"
set SCRIPTNAME="roadfighternes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
