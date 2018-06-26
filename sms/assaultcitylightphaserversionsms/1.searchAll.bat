@echo off
set T_FILENAME="Assault City - Light Phaser Version (E) [!].sms"
set SCRIPTNAME="assaultcitylightphaserversionsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
