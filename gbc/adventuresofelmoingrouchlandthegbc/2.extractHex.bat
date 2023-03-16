@echo off
set T_FILENAME="TR_Adventures of Elmo in Grouchland, The (USA).gbc"
set SCRIPTNAME="adventuresofelmoingrouchlandthegbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
