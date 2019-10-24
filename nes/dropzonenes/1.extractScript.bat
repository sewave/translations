@echo off
set T_FILENAME="Dropzone (Europe).nes"
set SCRIPTNAME="dropzonenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
