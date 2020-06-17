@echo off
set T_FILENAME="TR_Super Star Wars - Return of the Jedi (USA, Europe) (SGB Enhanced).gb"
set SCRIPTNAME="superstarwarsreturnofthejedigb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4EE18:600
pause
