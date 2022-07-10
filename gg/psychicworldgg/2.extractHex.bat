@echo off
set T_FILENAME="TR_Psychic World (USA, Europe) (Rev 1).gg"
set SCRIPTNAME="psychicworldgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1C140:200,18280:40,183A0:A0
pause
