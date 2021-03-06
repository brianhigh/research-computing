# Version Control with Git
[Brian High](https://github.com/brianhigh)  
![CC BY-SA 4.0](cc_by-sa_4.png)  

## Agenda for Week 5 Lab

* Version Control (_Brian High_): **40 minutes**
    + Introduce version control and Git
    + Show how Git can be used from RStudio
    + Demonstrate a Git/Github workflow and do a lab exercise
* Introduction to Programming with R (_Boris Reiss_): **1 hour**
    + Introduce programming basics
    + Introduce R and RStudio
    + Provide examples and do a lab exercise
* Go over the answers to Quiz 2: **10 minutes**

## Version Control Learning Objectives

* Understand what version control is and _why you should care_
* Learn the basic operations of the _Git_ version control system
* Learn how to use Git and Github to _manage projects_
* Learn how to use Git and Githhub _from within RStudio_

## Version Control

The following is true of most modern version control systems:

* A method for _tracking changes_ to one or more _files_
* Like Apple Time Machine with "Track Changes" of MS-Word
* Makes changes to one or more files as a _single_ "commit"
* Works with _any type of file_, especially plain-text and "code"
* Allows _multiple users_ to work with the same files _concurrently_
* May also be called: _revision control systems_

## Version Control Features

Most modern version control systems:

* Provide _logging_ and _status reports_ for ease of tracking
* Allow you to _compare_ versions or _revert_ to past versions
* Let you _share_ files and _merge changes_ from others
* Handle merging for you, _transparently_ (in most cases)
* Let you _collaborate_ through a _server_ or website like [Github](https://github.com/)
* _Sync_ changes with the server instead of ~~emailing files around~~

## Git: Distributed Version Control

* Hugely popular, free, open source, and cross-platform
* _Distributed_, decentralized design allows offline use
* _Integrated_ with apps like _RStudio_ and MS Visual Studio _Code_
* The version control "engine" behind sites like [Github](https://github.com/)
* Created by _Linus Torvalds_, the creator of Linux
* Designed for _large_ projects with many _remote_ contributors
* Increasingly popular for _scientific research projects_

## Installing Git

* Installers available from: [https://git-scm.com/](https://git-scm.com/)
* For Windows installer, _allow changes to the system PATH_
* RStudio searches PATH to find "git", or manually configure
* Git is _already installed_ on Phage

## Configuring Git

> * You need to [configure](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup) 
your username and email address.
> * Configuring for default editor and color support is nice, too.
> * Run these commands from the "shell" (Bash, DOS, etc.).

```
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
git config --global color.ui true
git config --global core.editor nano
```

Edit these commands as needed for your name, email, and preferred editor. 

If you store them in a shell script, you may easily run them on other systems 
you may be using. For now, copying, pasting, editing, and running will be fine.

## Git Integration in RStudio

* RStudio can import (`clone`) a git project from a server
* RStudio can perform all _common_ operations from the GUI
    + From the menu: _Tools_ -> _Version Control_
    + From the _Git_ tab next to the _History_ tab

## Common Git Operations

| Command  | What it does
|----------|----------------------------------------------
| `clone`  | Copy a repository into a new folder
| `pull`   | Fetch and integrate changes
| `commit` | Record changes to the repository
| `push`   | Send changes to remote repository (server)
| `diff`   | Show changes between commits
| `log`    | Show commit logs
| `status` | Show the current status of files and changes

## Demo, Github and Exercise

We will now provide a demo of these operations in RStudio and GitHub.

Exercise: Find a partner and work in pairs.

We will create a Github repository, clone it, "fork" a repository, make changes,
and create a "pull request", as time permits.

1. Please turn in the web link (address) to the Github "repo" you create
(or that of your partner if you chose not to create a Github account).

2. If we have time to try a "fork" and  pull request" in Github, turn in the 
address of your pull request, instead.

3. Provide this address to Canvas as your _homework submission_.
