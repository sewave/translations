@echo off
set T_FILENAME="TR_Jungle Strike (USA, Europe).md"
set SCRIPTNAME="junglestrikesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
