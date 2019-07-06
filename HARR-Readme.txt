HARR - Hackey Admin Rights Request (ver. 1.4)

(Readme ver. 1.5.0-plaintext)

In this file:

    What is HARR?
    How to call?
    How to use in other projects?

1. What is HARR

HARR (Hackey Admin Rights Request(er)) is a utility that helps me (and maybe you) to request admin rights from scripts (HARR was designed for batch scripts).

You can view or download HARR's code at It's Github repo
2. How to call

HARR's main file is a batch file (HARR.cmd), you can call it following with the filename to run in admin rights.

Examples:

How to start 'file.bat' with admin rights:

HARR file.bat

How to request admin rights from a batch script:

@echo off
if not "%Adminrequested%"=="1" (
call HARR "%~s0"
)

3. How to use in other projects

Since HARR is designed for HackeyBlock, it is equiped with the request name 'Hackey Admin Rights Request.exe' and with an HackeyBlock icon. You can change this.

Replacing the icon:

    install WinRAR trial-version, this for the replacement of the icon.
    Open 'Hackey Admin Rights Request.exe' with WinRAR, this should be one of the options after right-clicking the file.
    Right-above, click on the [SFX] button.
    In the dialog window that opens, click on [advanced sfx-options].
    Click the [Advanced] tab
    Opt-in on 'Ask for admin rights'
    Click the [Text & icon] tab.
    Click on [Browse] aside 'load SFX-icon from file...'
    click [OK]
    the logo should be replaced.

Replacing the request name:

    rename 'Hackey Admin Rights Request.exe' to your desire
    update 'HARR-prcesr.HARRset' to the renamed file.

You can find the online version of this readme at https://github.com/Marnix0810/HARR/blob/master/README.md

(The plain-text version was adapted from https://github.com/Marnix0810/HARR/blob/master/README.md. the original version may be more accurate.)
