@echo off
set T_FILENAME="TR_Tom Mason's Dinosaurs for Hire (USA).md"
set SCRIPTNAME="tommasonsdinosaursforhiresmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
