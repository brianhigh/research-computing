Computer Networking
========================================================
author: Jim Hogan
date: 2015-01-14
transition: fade
incremental: true

Research Computing and Data Management
-------------------------------------------------------
[http://github.com/brianhigh/research-computing](http://github.com/brianhigh/research-computing)

<small style="font-size:.5em">
This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.<br />
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a>
</small>

Introduction
========================================================


* A 30-minute introduction
* Some historical background
* The purpose
* Evolution to contemporary computer networks
* Key technical aspects including:
  + networking topologies
  + protocols and standards 
  + networking system components
  
Networking History
================================================================
 
![Chappe Network](http://upload.wikimedia.org/wikipedia/commons/a/a7/Reseau_chappe77.png)

Networking History
================================================================

### 1792

![Chappe Network](http://upload.wikimedia.org/wikipedia/commons/a/a7/Reseau_chappe77.png)

----

### Chappe Telegraph

![Chappe System](http://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Rees%27s_Cyclopaedia_Chappe_telegraph.png/800px-Rees%27s_Cyclopaedia_Chappe_telegraph.png)]



Moving Along 
================================================================

### 1889

![Early Networking](http://upload.wikimedia.org/wikipedia/commons/0/0a/Tr%C3%A5dtelefon-illustration.png)

-----

### 1943

![Bell Switchboard](http://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Photograph_of_Women_Working_at_a_Bell_System_Telephone_Switchboard_%283660047829%29.jpg/732px-Photograph_of_Women_Working_at_a_Bell_System_Telephone_Switchboard_%283660047829%29.jpg)

Enter Binary
======================================================

## 10000000010111110111000000000001

Some Binary Basics
=======================================================

Recognize this number?

  128.95.112.1
  
How about this one?

  10000000010111110111000000000001

Question
==================================================================

>Would not Morse code be considered a binary communication protocol?

Computer Networks: What's the Point?
========================================================

1. Allow a computer system/device to communicate with another computer system by exchanging data
2. Allow humans to interact with computer systems
3. Allow humans to interact with other humans. 

 
Contemporary Computer Networks: Key Elements
==================================================================

* Binary Operation
* Packet Switching
* Protocols

Another biggie:

* Layered Model

And some other bits:

* software and hardware components
* network topologies
* network speeds
* more...

Protocols, Standards and Governing Bodies
=============================================================
![International Telecommunications Union](images/itu_logo.png) International Telecommunicatios Union

![Internet Engineering Task Force](images/ietf-logo.png) Internet Engineering Task Force



The TCP/IP Protocol Suite
==============================================================

* Embodied in documents called "RFCs" (Request For Comment)
* Many design decisions around factors like efficiency and reliability
* Some protocols humorously start with the word "Simple" or "Lightweight"."


Questions
==============================================================
> How many different protocols are under the TCP/IP umbrella?

> What is ICANN?  IANA?



Packet Switching and Routing Metrics
=============================================================
* Hops
* Latency
* Congestion
* Queuing

![Routing example](http://upload.wikimedia.org/wikipedia/commons/thumb/4/43/CPT-internet-packetswitching-reroute.svg/500px-CPT-internet-packetswitching-reroute.svg.png)

Routing: a Traceroute Example
=============================================================
          
http://www.monitis.com/traceroute/

Resolution of Names and Addresses
==============================================================

* DNS: phage.deohs.washington.edu => 128.95.230.32
* ARP: 128.95.230.32 => 26:a5:b7:20:f0:35

Question
=============================================================
> What were the design goals of ARPANET?


Data Flow of the Layered TCP/IP Model
=============================================================

![TCP/IP Model](http://upload.wikimedia.org/wikipedia/commons/b/b2/Data_Flow_of_the_Internet_Protocol_Suite.PNG)

[The Internet Protocol Suite Wikipedia Page](http://en.wikipedia.org/wiki/Internet_protocol_suite)

Layers, Protocols, and Encapsulation
=============================================================
(Not translated from the Dutch)

![encapsulation](https://upload.wikimedia.org/wikipedia/commons/5/54/Inkapseling_bij_tcp-ip-nl.svg)

Types of Networks
=============================================================

* LAN - Local Area Network
* WAN - Wide Area Network

* LAN - less need for routing
* WAN - more need for routing


Topologies and the Networking Layer
=============================================================

![Topologies](https://upload.wikimedia.org/wikipedia/commons/9/97/NetworkTopologies.svg) 

* Mesh, Star and Tree arguably more common in this era 
* Complex networks can combine elements of several topologies

Link Layer Technologies (Ethernet Rules!)
==============================================================

From bus-based in the 80s 

![10Base2](https://upload.wikimedia.org/wikipedia/commons/9/92/10base2_t-piece.png)

To the familiar RJ45

![RJ-45](https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/CAT5e-RJ45.jpg/299px-CAT5e-RJ45.jpg)

----
Over copper and fiber media

![copper and fiber](images/copper-fiber.jpg)

All standards thanks to

![IEEE](images/IEEE_logo.png)

Network Speeds
=======================================================

Familiar Speeds in Common Use:

10 Mbps - Ethernet 10BaseT - outmoded

100 Mbps - "Fast Ethernet" - still very common

1000 Mbps - "Gigabit Ethernet or 1Gbps" - typical in new devices

Faster speeds possible but expensive. 

Primary Networking Devices
========================================================

* switches
* router

* access point

----
Devices may combine functions and be hard to distinguish by appearance.

![Switch](images/switch.png)


Using the Network Effectively
========================================================

* network could be performance bottleneck
* wired connection more reliable than wireless
* read and write speed to local disk always faster
* troubleshooting: 
  + start with closest component
  + learn how to use simple tool "ping"
  + get a grip on name resolution/DNS
  + know how to determine your IP address
  
[Networking on Computing Basics Wiki](https://github.com/brianhigh/computing-basics/wiki/networking)
