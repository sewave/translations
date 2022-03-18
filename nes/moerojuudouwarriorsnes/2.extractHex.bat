@echo off
set T_FILENAME="TR_Moero!! Juudou Warriors (Japan) [T+ENG].nes"
set SCRIPTNAME="moerojuudouwarriorsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3C410:60,3C690:20,3F410:60,3F690:20,3DB20:20,3F6D0:10,3F340:20,3F920:10
pause
