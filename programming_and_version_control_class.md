# Programming and Version Control
[Brian High](https://github.com/brianhigh)  
![CC BY-SA 4.0](cc_by-sa_4.png)  

## Common Programming Issues

* Too much copy and paste
    - Hard to read
    - Difficult to debug and maintain
* Fail to check for problems
    - Packages, utilities, files or folders missing
    - Invalid data entry
* Inefficient 
    - Redoing work already done (installing, downloading, etc.)
    - Processing more data than needed
    - Looping more than needed
    - Filling RAM more than needed
    - Not taking advantage of language features

## Common Programming Solutions

* Code reuse: loops and functions (subroutines, methods)

```
function dostuff:
    steps 1, 2, 3, 4, and 5

mylist = [A, B, C, D]
foreach thing in mylist: dostuff to thing
```

* Consider dependencies, anticipate problems
* Validate input (with e.g., regular expressions)
* Use resources wisely
* Use language "idiomatically" - as designed to be used

## Programming Examples

* Web programming: Panopto Link Maker (HTML/JavaScript/Regex)
    - Input validation with Regular Expressions
    - GitHub fork example
* API Programming: Amazon Search (Python/R/Bash)
    - Embedding non-R in Rmd
    - Converting Markdown to HTML in Bash
    - Creating a new GitHub repo example
* Functions: Reddit Wordclouds (Python/R/Bash)
    - Loops versus *apply functions
    - Shell script pipe example (Bash)

## Version Control

Different systems: an _evolution_ of version control systems (VCS)

- RCS: Revision Conrtrol System (1982, single user)
- CVS: Concurrent Versions System (1990, multi user, central server)
- SVN: Subversion (2000, updated, improved, CVS-like, central server)
- various distributed VCS: Git (2005), Mercurial (2005), Bazarr (2005)

Demo basic "git" workflow:

* fork, clone, pull, edit, commit, push, pull-request
    - From RStudio GUI
    - From command line

## Exercise: Practice Git

Work in *pairs* to fork, clone, commit, push, and send a "pull request".

Pick a project (from course modules page, GitHub):

- [Airquality-example](https://github.com/brianhigh/airquality-example)
- [Medicare-ipps](https://github.com/brianhigh/medicare-ipps)
- Amazon-search
- [Reddit-wordclouds](https://github.com/brianhigh/reddit-wordclouds)
- Fasta-filter
