@echo off
set T_FILENAME="TR_World of Illusion Starring Mickey Mouse & Donald Duck (U) [!].bin"
set SCRIPTNAME="worldofillusionstarringmickeymousedonaldducksmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
