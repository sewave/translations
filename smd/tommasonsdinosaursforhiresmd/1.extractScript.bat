@echo off
set T_FILENAME="Tom Mason's Dinosaurs for Hire (USA).md"
set SCRIPTNAME="tommasonsdinosaursforhiresmd"
REM java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
python extract_all.py
pause
