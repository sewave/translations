@echo off
set T_FILENAME="TR_Adventures of Batman & Robin, The (USA).md"
set SCRIPTNAME="adventuresofbatmanrobinthesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
