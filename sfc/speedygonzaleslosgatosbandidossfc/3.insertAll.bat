@echo off
set T_FILENAME="TR_Speedy Gonzales - Los Gatos Bandidos (USA) (Rev 1).sfc"
set S_FILENAME="Speedy Gonzales - Los Gatos Bandidos (USA) (Rev 1).sfc"
set SCRIPTNAME="speedygonzaleslosgatosbandidossfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
