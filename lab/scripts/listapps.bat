:: Print your username and the date and time.
echo %USERNAME% - %DATE% %TIME%

:: List folders in the "Program Files" folders.
DIR /B /O:N /A:D "%PROGRAMFILES%" "%PROGRAMFILES(X86)%"

:: List folders in U:\Apps folder.
DIR /B /O:N /A:D U:\Apps

:: List files and folders in U:\bin folder.
DIR /B /O:N U:\bin