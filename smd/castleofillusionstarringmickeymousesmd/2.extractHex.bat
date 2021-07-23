@echo off
set T_FILENAME="TR_Castle of Illusion Starring Mickey Mouse (USA, Europe).md"
set SCRIPTNAME="castleofillusionstarringmickeymousesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
