@echo off
set T_FILENAME="TR_Bobby's World (USA) (Proto).sfc"
set SCRIPTNAME="bobbysworldsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex F1ABA:180
pause
