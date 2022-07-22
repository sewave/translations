@echo off
set T_FILENAME="TR_Adventures of Lolo (Europe) (SGB Enhanced).gb"
set SCRIPTNAME="adventuresoflologb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
