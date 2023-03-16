@echo off
set T_FILENAME="Adventures of Elmo in Grouchland, The (USA).gbc"
set SCRIPTNAME="adventuresofelmoingrouchlandthegbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
