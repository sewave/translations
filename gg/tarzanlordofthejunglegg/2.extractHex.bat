@echo off
set T_FILENAME="TR_Tarzan - Lord of the Jungle (Europe).gg"
set SCRIPTNAME="tarzanlordofthejunglegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2EAD8:C0
pause
