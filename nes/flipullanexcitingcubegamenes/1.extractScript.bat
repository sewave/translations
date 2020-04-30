@echo off
set T_FILENAME="Flipull - An Exciting Cube Game (J).nes"
set SCRIPTNAME="flipullanexcitingcubegamenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
