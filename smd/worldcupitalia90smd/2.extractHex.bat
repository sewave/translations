@echo off
set T_FILENAME="TR_World Cup Italia '90 (Europe).md"
set SCRIPTNAME="worldcupitalia90smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
