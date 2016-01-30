# Version Control with Git
[Brian High](https://github.com/brianhigh)  
![CC BY-SA 4.0](cc_by-sa_4.png)  

## Agenda for Week 5 Lab

Version Control (_Brian High_): 40 minutes

* Introduce version control and Git
* Show how Git can be used from RStudio
* Demonstrate a Git/Github workflow and do a lab exercise

Introduction to Programming with R (_Boris Reiss_): 1 hour

* Introduce programming basics
* Introduce R and RStudio
* Provide examples and do a lab exercise

Go over the answers to Quiz 2: 10 minutes

## Version Control Learning Objectives

* Understand what version control is and why you should care
* Learn the basic operations of the Git version control system
* Learn how to use Git and Github to manage projects
* Learn how to use Git and Githhub from within RStudio

## Version Control

* A method for tracking changes to your files
* Works like Word "Track Changes" but for entire project
* Makes changes to several files as a single version (`commit`)
* Works with any type of file; works best with plain-text

## Version Control Features

* Provides commit-log and change status for ease of tracking
* Allows you to compare versions or revert to past versions
* Lets you collaborate through a server or website like [Github](https://github.com/)
* Lets you publish and share project files to get feedback
* Sync changes with the server instead of emailing files around
* Handles merging for you, transparently (in most cases)

## A Version Control System: Git

* Hugely popular and free, open source, and cross-platform
* Distributed, decentralized design allowing offline use
* Integrated with apps like RStudio and Visual Studio Code
* The version control "engine" behind sites like [Github](https://github.com/)
* Created by Linus Torvalds, the creator of Linux
* Designed for large projects with world-wide contributors
* Increasingly popular for scientific research projects

## Installing Git

* Installers available from: [https://git-scm.com/](https://git-scm.com/)
* For Windows installer, allow changes to the system PATH
* RStudio searches PATH to find "git", or manually configure
* Git is already installed on Phage

## Configuring Git

* You need to [configure](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup) 
your username and email address
* Do this from the command-line prompt (Bash, DOS, etc.)

Username: 

`git config --global user.name "John Doe"`

Email address: 

`git config --global user.email johndoe@example.com`

## Git Integration in RStudio

- RStudio can import (`clone`) a git project from a server
- RStudio can perform all common operations from the GUI
    - From the menu: _Tools_ -> _Version Control_
    - From the _Git_ tab next to the _History_ tab

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
(or that of your partner if you chose not to create a gitHub account).

2. If we have time to try a "pull request" in Github, turn in the address
of your pull request, instead.

Provide this address to Canvas as your homework submission.
