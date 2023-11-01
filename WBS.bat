

#This command turns off commands that are being said.
@echo off


#This command enables delayed variable expansion, which is used later in the script.
setlocal enabledelayedexpansion


#These lines prompt the user to enter source and destination folder paths. 
set /p sourcePath=Enter the source folder path:



set /p destinationPath=Enter the destination folder path:


#These lines check if the entered source and destination folders exist. If either of them doesn't exist, it displays an error message and exits the script.
if not exist "!sourcePath!\" (

    echo Error: Source folder does not exist.

    goto :eof

)



if not exist "!destinationPath!\" (

    echo Error: Destination folder does not exist.

    goto :eof

)


#This is the core command that uses ROBOCOPY to copy files and directories from the source to the destination. 
robocopy "!sourcePath!" "!destinationPath!" /E


#After running ROBOCOPY, this line checks the error level. If it's 8 or higher, it means that ROBOCOPY encountered errors during the copy operation. An error message is displayed. Otherwise, it shows a success message.
if errorlevel 8 (

    echo Error: ROBOCOPY encountered errors during the copy operation.

) else (

    echo Copy operation completed successfully.

)


#End of Script
:end


#End of local environment
endlocal

