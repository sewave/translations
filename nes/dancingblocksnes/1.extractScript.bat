@echo off
set T_FILENAME="Dancing Blocks (Asia) (PAL) (Unl).nes"
set SCRIPTNAME="dancingblocksnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
