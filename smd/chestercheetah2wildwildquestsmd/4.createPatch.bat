@echo off
set T_FILENAME="TR_Chester Cheetah 2 - Wild Wild Quest (U) [!].bin"
set S_FILENAME="Chester Cheetah 2 - Wild Wild Quest (U) [!].bin"
set SCRIPTNAME="chestercheetah2wildwildquestsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
