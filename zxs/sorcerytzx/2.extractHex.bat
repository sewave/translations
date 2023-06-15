@echo off
set T_FILENAME="TR_Sorcery.tzx"
set SCRIPTNAME="sorcerytzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 245B:18,255B:18
pause
