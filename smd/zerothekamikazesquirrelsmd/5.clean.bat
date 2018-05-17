@echo off
set SCRIPTNAME="zerothekamikazesquirrelsmd"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
pause
