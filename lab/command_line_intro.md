# Command-line Intro
[Brian High](https://github.com/brianhigh)  
![CC BY-SA 4.0](cc_by-sa_4.png)  

## The Command-line

When we speak of "the command-line", we are referring to the command-line
interface (CLI) known as the "shell", "terminal", or "console".

On Windows systems, this has historically been the DOS shell:


```r
Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation.  All rights reserved.

U:\>
```

... or more recently, Powershell:


```r
Windows PowerShell
Copyright (C) 2013 Microsoft Corporation. All rights reserved.

PS U:\>
```

## Bash

On most other systems (Apple OSX, Linux, Unix), the standard shell is called
"Bash".

Windows users who have installed GitBash, will also have a Bash terminal:


```r
Welcome to Git (version 1.9.5-preview20150319)


Run 'git help git' to display the help index.
Run 'git help <command>' to display help for specific commands.

xxxxx@MY-PC /h
$
```

We will focus primarily on Bash in today's tutorial, since Bash can run 
on just about any computer system, is free, powerful, and very popular.

## Starting a shell session

To start a command-line session, you will need to open up a "terminal".

* On Windows, you can run "CMD" (or "Powershell") from the Start Menu.
* On Windows, you can launch "GitBash" from the All Programs menu.
* On Mac OSX, you can launch "Terminal" (from Spotlight, etc.)
* On Linux, your terminal program may be called "Terminal", "Xterm", etc.

You can also connect to a Linux or Unix server over SSH to get a shell prompt.

Here we are connection from one Linux system to another using the `ssh` command:


```r
$ ssh -p 54322 xxxxx@phage.deohs.washington.edu
xxxxx@phage.deohs.washington.edu's password: 
Welcome to Bio-Linux on phage (based on Ubuntu 14.04.3 LTS)

 * More info at:  http://nebc.nerc.ac.uk/tools/bio-linux

Last login: Fri Dec 25 22:07:19 2015 from yyyyy
xxxxx@phage:~$
```

## The prompt

The prompt is just a symbol (> or $, etc.) that let's know the shell is
awaiting commands.

It may have some text in front of it, such as your username, the current
working directory (the folder you are "in"), the date and time, and so on.

You can control this, but often people just leave the prompt with the default
configuration.

Some examples:


```r
U:\>
```


```r
PS U:\>
```


```r
user@host:folder$
```

## The Command-line

A command-line will usually take the form of: 

> command option(s) argument(s)

... where the command is either a built-in shell command or a separate program.

The command may be followed by command options and arguments. Examples:


```bash
cd /u
mkdir -p fee/phi
cd fee
ls
```

## Redirection

You can use `>` (overwrite) and `>>` (append) to redirect output to a file.


```bash
ls *.txt
echo "pho" > fum.txt
ls *.txt
cat fum.txt
```

The `>` symbol redirects the `echo` command output to a file `fum.txt`. If we
used the `>>` instead, this would have appended instead of overwriting. With
either of these, a new file will be created if one does not already exist.

## Scripts

Scripts are regular text files which are interpreted by a special program
called an interpreter to execute the commands (code) in the script. Example:


```r
cat myscript.sh 

# This is a comment. It will not be shown in the script output.
cd /u
mkdir -p fee/phi
cd fee
ls
ls *.txt
echo "pho" > fum.txt
ls *.txt
cat fum.txt

bash myscript.sh 

phi
ls: *.txt: No such file or directory
fum.txt
pho
```

Blank lines were added to help separate the commands from their ouput.

## Folder (directory) navigation and management commands

For the rest of the tutorial, we will list Bash commands and their DOS
equivalents (where possible) in [brackets].

-   [cd](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/cd.html),
    [pwd](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/pwd.html) [cd]
    - **c**hange **d**irectory (folder), **p**rint **w**orking
    **d**irectory (folder). (Note: "working" means the folder you are
    currently working "in".)

-   [mkdir](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/mkdir.html),
    [rmdir](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/rmdir.html) [mkdir
    (or) md, rmdir (or) rd] 
    - **m**a**k**e (create), **r**e**m**ove a
    **dir**ectory (folder)


```bash
cd /u
mkdir -p bin/scripts
cd bin
pwd
rmdir scripts
cd ..
```

## File management commands

-   [ls](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/ls.html), 
    [find](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/find.html) [dir]
    - **l**i**s**t, **find** (search for) files and folders, etc. (using
    pattern matching with a special character syntax called "[glob
    constructs](https://en.wikipedia.org/wiki/Glob_%28programming%29)")

-   [cp](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/cp.html),
    [mv](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/mv.html),
    [rm](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/rm.html) [copy,
    move, del, ren, rename] 
    - **c**o**p**y, **m**o**v**e, **r**e**m**ove
    (delete), rename files (A move to a new name is a rename.)


```bash
ls
find . -type d -mtime -1
echo "export PATH=/u/bin:$PATH" > path.txt
cp path.txt bin/
rm -f bin/path.txt
mv path.txt bin/setpath.sh
```

## File viewing and retrieval Commands

-   [cat](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/cat.html) [type]
    - display (or combine, "con**cat**enate") the contents of text files
    (i.e., any screen output is displayed all at once)

-   [more](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/more.html),
    less [more] 
    - "page" (display to screen with pausing) through (long)
    text files (with keyboard navigation)
-   [curl](http://curl.haxx.se/)
    - fetch files from the web


```bash
cat bin/setpath.sh
curl -o 'iris.csv' \
  'https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data'
less iris.csv
```

## Text manipulation commands

-   [echo](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/echo.html) [echo]
    - repeat text (printing it to the terminal screen or redirecting it
    to a file, etc.)

-   [grep](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/grep.html) [find]
    - find text (using pattern matching with a special character syntax
    called "glob constructs" or "[regular
    expressions](https://en.wikipedia.org/wiki/Regular_expression)")

-   [diff](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/diff.html) [fc]
    - show **diff**erences between texts

-   [head](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/head.html),
    [tail](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/tail.html),
    [cut](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/cut.html)
    - slice text in various ways: first n lines (**head**), last n lines 
    (**tail**), **cut** (select) specific columns (fields, variables, features)


```bash
grep 'Iris-virginica' iris.csv
head iris.csv
tail iris.csv
cut -d, -f5 iris.csv
echo "With so many lines, the output runs off the screen!!! What to do???"
```

## Pipes and Pipelines

The `pipe` (vertical bar) symbol, `|` streams output into another command 
as input.


```bash
echo "Let's find lines containing 'Iris-virginica' in the iris data set."
grep 'Iris-virginica' iris.csv | head
grep 'Iris-virginica' iris.csv | tail
grep 'Iris-virginica' iris.csv | cut -d, -f5
```

This allows you to connect commands into a data processing "pipeline".

## More text manipulation commands

-   [sort](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/sort.html),
    [uniq](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/uniq.html) [sort]
    - **sort** text: alpha-numerically, with or without duplicates (**uniq**ue)
    
-   [wc](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/wc.html)
    - **c**ount **w**ords, lines, and characters in text
    - Example: echo 'fooling' | wc -c    # counts number of characters
-   [sed](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/sed.html)
    - **s**tream **e**ditor: make changes to text such as search-and-replace
    - Example: echo 'fooling' | sed 's/o/e/g'    # changes all "o" to "e"


```bash
cut -d, -f5 iris.csv | sort -u
cut -d, -f5 iris.csv | grep 'Iris' | sort -u | wc -l
cut -d, -f5 iris.csv | grep 'Iris' | sort | uniq -c | sort -nr
cut -d, -f5 iris.csv | sort -u | grep 'Iris' | sed 's/Iris-//g'
```

## Environment/session commands

-   export [set] 
    - set (environment) variables. (In Bash, "export" makes
    them available to sub-processes. In DOS, "set" is used for
    assignment.)

-   exit [exit] 
    - end (close) the terminal session (and possibly write
    your command history to a file) -- ***but save your terminal output
    first!***


```bash
echo $PATH
export PATH=/u/bin:/usr/local/bin:/bin:/u/Rtools/bin
echo $PATH
```

By echoing the value of $PATH before and after running
the script, we see that the PATH was indeed changed.

## Configuring a custom default PATH

You can set various configuration options in `~/.bash_profile`. This is a 
special file containing commands that are run when Bash launches. The `~`
symbol (known as "tilde" or "squiggle") is an alias for your home directory (`$HOME`).


```bash
echo "export PATH=/u/bin:/usr/local/bin:/bin:/u/Rtools/bin" >> ~/.bash_profile
cat ~/.bash_profile
bash ~/.bash_profile
echo $PATH
```

If you open a new Bash shell and show the value of $PATH you will see the new
path setting. Because we appended with `>>`, we did not overwrite the contents
of the `~/.bash_profile` file.

Note: Some systems use other files, like `~/.bashrc` instead of, or in addition
to, `~/.bash_profile`.
