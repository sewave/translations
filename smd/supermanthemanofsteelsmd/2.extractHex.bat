@echo off
set T_FILENAME="TR_Superman - The Man of Steel (Europe).md"
set SCRIPTNAME="supermanthemanofsteelsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
