@echo off
set T_FILENAME="TR_Double Dribble - The Playoff Edition (USA).md"
set SCRIPTNAME="doubledribbletheplayoffeditionsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
