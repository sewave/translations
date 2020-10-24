@echo off
set T_FILENAME="TR_Ultimate Stuntman, The (USA) (Unl).nes"
set SCRIPTNAME="ultimatestuntmanthenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
