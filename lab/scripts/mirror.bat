@echo off
setlocal enabledelayedexpansion

:: Make a backup by mirroring a source to a destination folder. Do not overwrite
:: destination security settings. This script is merely a wrapper around RoboCopy.
::
:: Usage: mirror SOURCE DESTINATION

IF %2. EQU . GOTO USAGE
IF NOT EXIST %1. GOTO USAGE
IF NOT EXIST %2. GOTO USAGE

robocopy %1 %2 ^
  /E /PURGE /COPY:DT /Z /W:0 /R:0 /XO ^
  /XF *.bak *.tmp ._* backup.log ^
  /XD .zfs ^
  /LOG:%2\backup.log

GOTO END

:: RoboCopy Quick Reference
::
::  /E : Copy Subfolders, including Empty Subfolders.
::  /PURGE : Delete dest files/folders that no longer exist in source.
::  /COPY:DT : What to COPY (copyflags : D=Data, T=Timestamps)
::  /Z : Copy files in restartable mode (survive network glitch)
::  /W:n : Wait time between retries - default is 30 seconds.
::  /R:n : Number of Retries on failed copies - default is 1 million.
::  /XO : eXclude Older - if destination file exists and is the same date
::        or newer than the source - don't bother to overwrite it.
::  /XF file [file]... : eXclude Files matching given names/paths/wildcards.
::  /XD dirs [dirs]... : eXclude Directories matching given names/paths.
::  /LOG:file :: Output log to file (overwriting file if it exists).
::
:: NOTE: The /mir option is equivalent to the /e plus /purge options with
::       one small difference in behavior:
::
::  - With the /e plus /purge options, if the destination directory exists,
::    the destination directory security settings are not overwritten.
::  - With the /mir option, if the destination directory exists, the
::    destination directory security settings are overwritten.

:USAGE
ECHO Usage: %~0 SOURCE DESTINATION

:END