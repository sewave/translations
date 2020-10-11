@echo off
set T_FILENAME="TR_Street Fighter II' - Special Champion Edition (USA).md"
set SCRIPTNAME="streetfighteriispecialchampioneditionsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
