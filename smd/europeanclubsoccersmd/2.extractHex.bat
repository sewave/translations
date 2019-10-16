@echo off
set T_FILENAME="TR_European Club Soccer (Europe).md"
set SCRIPTNAME="europeanclubsoccersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
