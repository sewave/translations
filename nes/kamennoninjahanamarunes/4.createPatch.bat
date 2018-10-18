@echo off
set T_FILENAME="TR_Kamen no Ninja - Hanamaru (J) [T+ENG].nes"
set S_FILENAME="Kamen no Ninja - Hanamaru (J).nes"
set SCRIPTNAME="kamennoninjahanamarunes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
