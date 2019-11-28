@echo off
set T_FILENAME="TR_Fantasy Zone 1 (1986) (Pony Cannon) (J).rom"
set SCRIPTNAME="fantasyzone1rom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
