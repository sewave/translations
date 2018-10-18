@echo off
set T_FILENAME="TR_Kamen no Ninja - Hanamaru (J) [T+ENG].nes"
set SCRIPTNAME="kamennoninjahanamarunes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 290C0:10,2A3C0:50,2A7C0:30
pause
