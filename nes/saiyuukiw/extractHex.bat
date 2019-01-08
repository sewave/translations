@echo off 
set T_FILENAME="TR_Saiyuuki World (J) [T+ENG].nes"
set SCRIPTNAME="saiyuukiw"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
