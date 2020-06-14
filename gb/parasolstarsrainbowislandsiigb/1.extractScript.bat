@echo off
set T_FILENAME="Parasol Stars - Rainbow Islands II (Europe).gb"
set SCRIPTNAME="parasolstarsrainbowislandsiigb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
