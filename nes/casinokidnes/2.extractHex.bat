@echo off
set T_FILENAME="TR_Casino Kid (USA).nes"
set SCRIPTNAME="casinokidnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex AE73:20,ACD3:50,3A9D:18,A563:10,ADE3:30,6948:30,8503:20,8603:20,
pause
