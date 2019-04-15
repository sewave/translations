@echo off
set T_FILENAME="TR_Ultimate Qix (U) [!].bin"
set SCRIPTNAME="ultimateqixsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
