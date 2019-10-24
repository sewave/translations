@echo off
set T_FILENAME="Dropzone (Europe).gb"
set SCRIPTNAME="dropzonegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
