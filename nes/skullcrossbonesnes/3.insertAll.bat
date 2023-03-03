@echo off
set T_FILENAME="TR_Skull & Crossbones (USA) (Unl).nes"
set S_FILENAME="Skull & Crossbones (USA) (Unl).nes"
set SCRIPTNAME="skullcrossbonesnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
