# Networking Lab Exercise
[Brian High](https://github.com/brianhigh)  
![CC BY-SA 4.0](cc_by-sa_4.png)  

## Network Speed

Last time, we noticed some performance issues when we tried to install software
to the U drive. We will spend a few minutes looking at this issue. We will 
check our Ethernet connection (link) speed from Windows and from DOS 
(or Powershell).

To open the Network Connections (interfaces) list from DOS:

```
> ncpa.cpl
```

... or simply click the network icon in the "System Tray" (lower right of Windows 
Desktop) and open "Network Connections".

Then double-click a connection (interface) icon to get its status. Look 
for the "Speed" value.


## Network Speed (wmic)

Type this command to see the link speed for all enabled interfaces:

```
> wmic NIC where NetEnabled=true get Name, Speed
```

This is in units of bps, so divide by 1,000,000 for Mbps or 1,000,000,000 for Gbps.

Save the output of this command with:

```
> wmic NIC where NetEnabled=true get Name, Speed > link_speed.txt
```


## Discussion

- Do you believe that this speed is actually what you are getting?
- Why might this speed be misleading? 
- What could present a bottleneck?
- How could you tell if the problem was with the U drive and not your PC?


## What to turn in

Please save and turn in the text output from the command which shows your link
speed. We will show you how to capture this as text. 


## Connecting to our server

We have a server set up for us in this course. It is called "Phage". We will
show you how to connect with your web browser, an SSH client, and an SFTP
client. You will want to try connecting using each of those tools.

To see how to connect to Phage, go to [https://canvas.uw.edu](https://canvas.uw.edu), 
go to this course, and click the "Pages" link. Open the page titled, 
"Connecting to Phage".

We will connect to Phage using the web browser to log into RStudio Server, 
then we will connect using SSH (using Putty), and then try SFTP (using 
FileZilla or WinSCP). Lastly, we will demonstrate how to connect with X2Go
as well. You do not have to do this yourselves, just watch the demo for now.


## Server Performance

You may notice that some tasks are much faster to run on Phage. Here, we use 
the Bash `time` command time a Bash 
[script](https://github.com/brianhigh/research-computing/blob/master/lab/scripts/iris_diff.sh) 
on a Windows PC and on our Phage server:

```
user@windows:~/research-computing/lab/scripts$ time ./iris_diff.sh
real    0m34.631s
user    0m0.522s
sys     0m2.643s

user@phage:~/research-computing/lab/scripts$ time ./iris_diff.sh
real	0m2.116s
user	0m0.730s
sys	0m0.483s
```

In both cases, the script was ended by closing Meld once the differences had 
been displayed.


## Discussion

- Why might we prefer to use a server for our coursework or research versus a
desktop computer (like those in the lab) or a laptop? 
- What if the server was "in the cloud"? 
- What are some reasons why we might prefer a desktop or laptop computer over 
a server?

(There is nothing that you need to turn in for this lab segment.)


## Explore with command-line utilities 

We will be using various tools to explore the structure, features, and 
protocols of the Internet.

A greater understanding of how the Internet works will help you when planning
your data management workflkow and also when troubleshooting network problems.

Most of these utilities are command-line tools, but we will also show how visual 
tools can be created from command-line tools.

Try running these utilities with different domain names. Some 
[examples](https://github.com/brianhigh/visual-tracerouter/blob/master/domains.txt) 
have been provided for you.


## ping

`ping` is an extremely basic (and handy) network troubleshooting tool. It probes
a remote host to see if it is "up" and how long it takes to reach it. Ping uses 
the ICMP network protocol which specifies the data format and communications 
details.

```
C:\> ping www.who.int
Pinging wsd-gen-withapac.service.mirror-image.net [216.38.164.121] 
    with 32 bytes of data:
Reply from 216.38.164.121: bytes=32 time=3ms TTL=54
Reply from 216.38.164.121: bytes=32 time=9ms TTL=54
Reply from 216.38.164.121: bytes=32 time=7ms TTL=54
Reply from 216.38.164.121: bytes=32 time=3ms TTL=54

Ping statistics for 216.38.164.121:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 3ms, Maximum = 9ms, Average = 5ms
```


## traceroute (tracert)

Linux and Unix systems (like OSX) come with the `traceroute` utility. It allows
you to trace an internet route from your computer to a remote host, showing the
hops along the way. Like `ping`, it also reports the time each hop takes.

We will run `traceroute` from `bash` on Phage:

```
$ traceroute -I who.int
```

We use the `-I` option to get through its firewall. Normally, you would not need
this option. `-I` specifies to use ICMP packets.

The DOS command, `tracert` uses ICMP by default:

```
> tracert who.int
```


## whois in Linux or Unix

The `whois` command uses the `NICNAME/WHOIS` protocol to find information about 
network address blocks and Internet domains.

We will run this command on Phage to look up information on `who.int`.


## Output from whois

We will pipe the output of `whois` to `head` to see the first few lines.

```
$ whois who.int | head -11

% IANA WHOIS server
% for more information on IANA, visit http://www.iana.org
% This query returned 1 object

domain:       WHO.INT

organisation: World Health Organization (WHO)
address:      20, Avenue Appia
address:      Geneva 27
address:      Geneva Geneva CH-1211
address:      Switzerland
```


## whois in Windows (GetWhois)

Windows does not come with the `whois` command, though it can be 
[downloaded](https://technet.microsoft.com/en-us/sysinternals/whois.aspx) 
as a third-party DOS utility.

Recent versions of Windows include Powershell, which comes with something like
`whois`. We will save the output to a file and just view the first few lines.

```
PS C:\> $proxy = 'http://www.webservicex.net/whois.asmx?WSDL'
PS C:\> $web = New-WebServiceProxy $proxy
PS C:\> $web.GetWhoIs('who.int') > whois.txt
PS C:\> gc whois.txt | select -first 11
```

As you can see, you have to type a lot more in Powershell to get the same results.


## About your network interface

For you to be able to access hosts on the Internet and local network, your
computer needs to have a network interface. Usually this is either an 
"Ethernet" (wired) interface or a wireless (e.g. "WiFi") interface.

You can find out about the network interfaces on your computer with `ipconfig` 
for Windows (DOS) and `ifconfig` for Linux, Unix, and OSX.

Run this in DOS (or Powershell):

```
> ipconfig /all
```

You will see hostnames, IP addresses, connection status, default gateway, and 
DNS servers. We will learn about all of these today and why they matter.


## The domain name system (DNS)

We have domain names like `udrive.uw.edu` and numerical addresses like 
`128.95.155.222`. How are they connected?

The domain name system (DNS) is a distributed database on the Internet that
provides the ability to look up and translate back and forth between domain
names and numerical IP addresses. Here is a DNS lookup of Phage:

```
$ host phage.deohs.washington.edu
phage.deohs.washington.edu has address 128.95.230.32
```

```
$ host 128.95.230.32
32.230.95.128.in-addr.arpa domain name pointer phage.deohs.washington.edu.
```

Look up the IP address of `udrive.uw.edu` with the `host` command. Do you
see anything interesting?


## DNS lookups with nslookup

Here is an example DNS query from Windows (DOS) using `nslookup`:

```
> nslookup -querytype=any udrive.uw.edu
```

Try this for yourself and see what results you get back.


## DNS lookups with dig

In Linux, Unix, or OSX, assuming `dig` in installed, you could run:

```
$ dig udrive.uw.edu
```

Dig is also available for Windows, but does not come with it pre-installed.

Try looking up DNS information on some other domains. What does this tell
you about them that the other tools did not tell you?


## DNS in practice

When you type a domain name in a web browser,
a DNS lookup will take so that you computer can send packets to the IP address
of the web server. 

Understanding just this much about DNS may help you when troubleshooting
networking problems with your computer. What if you can reach a host by IP
address but not by domain name? What does this tell you? How can you confirm 
this?

We already know how to `ping` internet hosts to verify connectivity. We can
`ping` by DNS hostname or by IP address. And we now know how to look up
one given the other. If any of those tasks fail, we know a little more about
the source of our network troubles. 


## Network routing and gateways

To get to remote hosts, your computer needs to know how to find them. Once
the DNS lookup has provided the IP address, the computer has to determine
how to route the traffic. 

If you only have one network interface, and you
are on a network with only one router, this is simple. 

* If the remote host
is on the same network segment, just send the traffic directly to the host.
* Otherwise, send to the nearest router -- the one on your network segment. 

That "nearest" router is your "default route" or "default gateway".


## View your routing table

`ipconfig` (or `ifconfig`) showed us the address of our default gateway. But
what if we have other options? You can see your computer's routing table with
the `route` command or the `netstat` command.

DOS:

```
> route print
```

On Linux, try `route -nev` or on OSX, try `netstat -nr`.

Do you see your own interface name and your default gateway IP address? If you
had multiple active interfaces, you would see more lines in the routing table.

## Confirm connectivity

Ping your default gateway IP address and your DNS server to confirm you can 
reach them. When you have network problems, sometimes you can reach your 
gateway, but you can't reach beyond that. What does this tell you?

If your home Internet connection wasn't working, and you could not do DNS 
lookups, you would have trouble reaching websites. Yet you might be able to
ping your home Internet router (or DSL or cable modem). This would tell you
that your network device was "up" even though your link to the outside was "down".

On the other hand if you could not even ping your default gateway, your network
device may have lost power or simply need a reboot. What if you can ping various
IP addresses, but you can't ping your DNS server?


## What to turn in

You will be expected to turn in your command history and output into
Canvas, either as pasted text or as a plain-text file (with a `.txt` file
suffix) attachment. We used this same method for completing last week's lab.


## Your R environment

Before we start using R and RStudio, we should note that all of our R examples 
and exercises should work in whatever platform you are using: Windows, Mac OSX,
Linux. Most should work in RStudio server on Phage. The only ones which won't
will be those using the "Shiny" packages and others which run their own 
webserver. So, if you try to run our R examples on your own machine, make sure
that you have a working R and Rstudio installation. The lab PCs have R and 
RStudio, but not Git. We use Git to fetch the code from the web, so Git is
pretty important. You can install Git on your lab PC at the beginning of class
if you prefer not to use the server.


## Visualize with route maps (in R)

You will also be making some network route maps using R. Here is an example: 

![](networking_intro_files/figure-html/unnamed-chunk-1-1.png)\


## What to turn in

***You will be shown*** how to create these maps using
software we have written (in R) for the purposes of this course. 

- [visual-tracerouter](https://github.com/brianhigh/visual-tracerouter)

*Note*: Do not simply upload the example maps provided for you. That would be
too easy.


## Visual Tracert (web app)

You can use [Visual Tracert](http://www.yougetsignal.com/tools/visual-tracert/)
to make a route map in your web browser (without using R).

![](networking_intro_files/figure-html/unnamed-chunk-2-1.png)\


## Making screenshots

To save an image like this, you may choose to make a screenshot. Your saved 
image will need to be a PNG file with a `.png` file suffix or a PDF file. 

You can make a screenshot in Windows using *Alt-PrtScn* and paste from the "clipboard" 
into a program like [MS-Paint](https://en.wikipedia.org/wiki/Paint_%28software%29), 
[IrfanView](http://www.irfanview.com/), [Gimp](https://www.gimp.org/), 
[GimpShop](https://www.gimpshop.com/), [Photoshop](http://www.photoshop.com/), 
etc., to save the image as PNG. 

You can also paste directly from the clipboard
into MS-WordPad or MS-Word, but be sure to export the resulting document as a 
PDF file. Please upload your file to Canvas with your other lab submissions.

*Tip*: IrfanView is free, small, simple, and fast. A 
[PortableApp version](http://portableapps.com/apps/graphics_pictures/irfanview_portable) 
is also available for IrfanView.


## Verbalize your discoveries

- Please also write a short paragraph explaining what you learned in today's 
networking exercises that was new and interesting to you. 
- How has this knowledge changed your view of how the Internet works? 
- How can you apply this knowledge in your work?
- Be prepared to share your insights during a short class discussion.


## What to turn in

Your written paragraph can be entered directly as text into Canvas or you can 
upload a plain text (`.txt`) file or `.pdf` file containing this paragraph.
