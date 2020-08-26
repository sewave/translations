@echo off
set T_FILENAME="Speedy Gonzales - Los Gatos Bandidos (USA) (Rev 1).sfc"
set SCRIPTNAME="speedygonzaleslosgatosbandidossfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
