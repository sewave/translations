@echo off
set T_FILENAME="TR_World of Illusion Starring Mickey Mouse & Donald Duck (U) [!].bin"
set S_FILENAME="World of Illusion Starring Mickey Mouse & Donald Duck (U) [!].bin"
set SCRIPTNAME="worldofillusionstarringmickeymousedonaldducksmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
