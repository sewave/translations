@echo off
set T_FILENAME="TR_Chuck Rock II - Son of Chuck (U) [!].gg"
set SCRIPTNAME="chuckrockiisonofchuckgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
