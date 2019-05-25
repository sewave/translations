@echo off
set T_FILENAME="TR_Flash Point (J) (Prototype).bin"
set S_FILENAME="Flash Point (J) (Prototype).bin"
set SCRIPTNAME="flashpointsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
