@echo off
set T_FILENAME="Gunship (Europe).md"
set SCRIPTNAME="gunshipsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
