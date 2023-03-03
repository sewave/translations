@echo off
set T_FILENAME="Skull & Crossbones (USA) (Unl).nes"
set SCRIPTNAME="skullcrossbonesnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
