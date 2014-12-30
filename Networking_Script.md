Computer Networking
========================================================
author: Jim Hogan
date: 2014-12-23
transition: fade

Research Computing and Data Management
-------------------------------------------------------
[http://github.com/brianhigh/research-computing](http://github.com/brianhigh/research-computing)

<small style="font-size:.5em">
This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.<br />
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a>
</small>

Networking Script
===================
- [Cue Also Sprach Zarathustra]

Intro
-------

The intent of this 30-minute presentation is to give students a somewhat better undertanding of the basic underpinnings of computer networking as it relates to Research and Data Management.

We'll cover a number of topics including a bit of history of networking, it's purpose, the evolution to contemporary computer networks, and many important technical aspects including networking topologies, protocols and standards, and networking system components.


Slide 1
-----------

The notion of a communications network goes back some time. Think of smoke signals or drums and later on in history the arrival of some semaphore systems that connected European capitals to their frontier defence posts during Napoleonic times.  Fast forward a bit and you find yourself looking at the telegraph and telephone all of which were technological improvements but which would be considered as "analog"  technologies.  As such these all suffered from the problems like amiguity -- "Does that flag mean attack or retreat?"  other limitations depending upon the technology. For example, a semaphore system might only be usable during periods of clear weather, and sound or smoke traveling over long distances might be misinterpreted due to audible or visual degradation.

What we think of as a computer network really could not arise until certain preconditions were met and certain technologies discovered. For one it required the invention of usable computers that employed binary-based "digital" technology to perform calculations. Secondarily, it required a realization that binary/digital technologies could be employed in communication to set the stage for the emergence of computer networks and networking. Specifically, it wasn't until the 1960s that computer networks as we know them really started to take off with something called "packet switching".

Question: would not Morse code be considered a binary communication protocol?

Some binary basics

The essential elements in the binary world is that only two data states exist - 0 and 1 - yet these can be used to describe incredibly complex information. It's importance cannot be over emphasized. However, its simple use of zeros and of ones can be very difficult for normal mortals to cope with. Consider the following number:

128.95.112.1

Some of you may recognize this number as the address of a server at the University of Washington that provides so-called domain name services. In fact this number is simply a decimal notation representing the following binary number.

  10000000010111110111000000000001
  
While speaking in binary won't make you the hit of the party it is important to remember that all of our contemporary communications rely on this underlying binary math.

So, what do computer networks provide? They are a means for a computer system to communicate with another computer system or many computers systems. I intentionally say "computer system" rather than "computer" as it often the case that it is a system running on a computer that is communicating to peer system, say a specialized  system that performs bank transfers. By extension it allows people to communicate with each other at least for so long as the computers do not rise up and prohibit this. 
  

Computer Networks
========================================================

- Computer networks:
  * Provide a means for devices to communicate
- Computing devices: 
  * Communicate by exchanging data

Networking
========================================================

Several characteristics define modern computer networking as we know it today. First is its basis in the binary world that we just reviewed. Second is a basis in something we have mentioned but not examined and that is "packet switching". The third characteristic is what could generally be called "protocols".

One other crucial element in modern computer networking and applications that run on networked computers is the notion of "layers", We will review what is generally called a "layered model".

Other important elements in computer networking include software and hardware components, network topologies, network speeds, and a number of other elements.

Protocols and standards

In 1865 -- the age of telegraphy -- the establishment of the International Telecommunications Union (ITU)  signaled the recognition that worldwide communication would not grow and improve unless countries cooperated in defining standards and protocols that would allow national telegram and telephones to interoprate The ITU is still very much alive today with governing bodies spanning landline telephone communication, wireless telephony, satellite communications and many other areas.

It was not always a given, but now that we are well into the age of the Internet, it is clear that the governing body that has the most to do with how networking and the Internet as we know them operates is the Internet engineering task force or IETF.  The IETF is the governing body that has custody of the overall suite of protocols that define the way that the Internet works.  Most notable in this realm is the suite of Internet protocols that go by the name of TCP/IP.  While not necessarily part of the Internet, many other organizations and institutions operate networks that use the same TCP/IP suite to implement their networks. The core protocols of this suite include transmission control protocol and Internet protocol both of which are featured in the suite's name and which govern routing is will now call it in an Internet-based network. The suite includes under its umbrella many other protocols that support operations on an Internet-based network these include protocols to look up names you may – may recognize DNS in that role – and things like time synchronization handled by the protocol NTP or network time protocol.

Many factors are considered in the development of these complicated protocols including what degree of reliability is required what performance is required. Some protocols may include elements that are unreliable by design are simply called unreliable. It is not an insult but a very practical decision of trade-offs to allow a certain degree of rope unreliability in the name of better performance and the the converse can be true.

Before looking any more closely at protocols it will help to back up a bit and look at other defining aspect of "internetworking" in the form of the layered model mentioned earlier and packet switching.


- Internet
- Components
- Topologies
- Layers
- Protocols
- Speeds


Internet
========================================================

- History
- Components
- Structure ("Cloud")


Components
========================================================

- Nodes
  * hosts
  * switches
  * routers
- Links


Topologies
========================================================

- Bus
- Star
- Ring
- Mesh
- tree
- Line
- Fully connected

Network Layers
========================================================

- Link
- Internet
- Transport
- Application

Protocols/addressing
========================================================

- Ethernet
- TCP/IP
- DNS
- HTTP
- SMTP
- IMAP
- RDP

Common Network Speeds
========================================================

- Home
- Small business
- Campus
