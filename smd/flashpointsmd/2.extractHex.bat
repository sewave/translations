@echo off
set T_FILENAME="TR_Flash Point (J) (Prototype).bin"
set SCRIPTNAME="flashpointsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
