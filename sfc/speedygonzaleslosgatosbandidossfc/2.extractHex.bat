@echo off
set T_FILENAME="TR_Speedy Gonzales - Los Gatos Bandidos (USA) (Rev 1).sfc"
set SCRIPTNAME="speedygonzaleslosgatosbandidossfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
