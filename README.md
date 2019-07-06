# HARR - Hackey Admin Rights Request (ver. 1.3)
*_<dl><small>(Readme ver. 1.3.10)</small></dl>_*



## In this file:
1. [What is HARR?](#1-what-is-harr)
2. [How to call?](#2-how-to-call)
3. [How to use in other projects?](#3-how-to-use-in-other-projects)


###  1. What is HARR

HARR (Hackey Admin Rights Request(er)) is a utility that helps me (and maybe you) to request admin rights from scripts (HARR was designed for batch scripts).

You can view or download HARR's code at [It's Github repo](https://github.com/Marnix0810/HARR)


###  2. How to call

HARR's main file is a batch file _(HARR.cmd)_, you can call it following with the filename to run in admin rights.

Examples:

How to start 'file.bat' with admin rights:

`HARR file.bat`

How to request admin rights from a batch script:

```
@echo off
if not "%Adminrequested%"=="1" (
call HARR "%~s0"
)
```


###  3. How to use in other projects

Since HARR is designed for HackeyBlock, it is equiped with the request name 'Hackey Admin Rights Request.exe' and with an HackeyBlock icon. You can change this.

	Replacing the icon:

1. install WinRAR trial-version, this for the replacement of the icon.
2. Open 'Hackey Admin Rights Request.exe' with WinRAR, this should be one of the options after right-clicking the file.
3. Right-above, click on the [SFX] button.
4. In the dialog window that opens, click on [advanced sfx-options].
5. Click the  [Advanced] tab
6. Opt-in on 'Ask for admin rights'
7. Click the  [Text & icon] tab.
8. Click on [Browse] aside 'load SFX-icon from file...'
9. click [OK]
10. the logo should be replaced.

Replacing the request name:

1. rename 'Hackey Admin Rights Request.exe' to your desire
2. update 'HARR-prcesr.HARRset' to the renamed file.


You can find the online version of this readme at https://github.com/Marnix0810/HARR/blob/master/README.md
