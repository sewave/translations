@echo off
set T_FILENAME="Dropzone (Europe).gg"
set SCRIPTNAME="dropzonegg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
