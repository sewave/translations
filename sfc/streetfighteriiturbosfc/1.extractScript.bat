@echo off
set T_FILENAME="Street Fighter II Turbo (USA) (Rev 1).sfc"
set SCRIPTNAME="streetfighteriiturbosfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
