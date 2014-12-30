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

So, what do computer networks provide? They are a means for a computer system to communicate with another computer system or many computers systems. I intentionally say "computer system" rather than "computer" as it is often the case that it is a system running on a computer that is communicating to peer system, say a specialized  system that performs bank transfers. By extension it allows people to communicate with each other at least for so long as the computers do not rise up and prohibit this. 
  

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

In 1865 -- the age of telegraphy -- the establishment of the International Telecommunications Union (ITU)  signaled the recognition that worldwide communication would not grow and improve unless countries cooperated in defining standards and protocols that would allow national telegram and telephones to interoprate. The ITU is still very much alive today with governing bodies spanning landline telephone communication, wireless telephony, satellite communications and many other areas.

It was not always a given, but now that we are well into the age of the Internet, it is clear that the governing body that has the most to do with how networking and the Internet as we know them operate is the Internet engineering task force or IETF.  The IETF is the governing body that has custody of the overall suite of protocols that define the way that the Internet works.  Most notable in this realm is the suite of Internet protocols that go by the name of TCP/IP.  While not necessarily part of the Internet, many other organizations and institutions operate networks that use the same TCP/IP suite to implement their networks. The core protocols of this suite include transmission control protocol and Internet protocol both of which are featured in the suite's name and which govern routing on what we now call an Internet-based network. The suite includes under its umbrella many other protocols that support operations on an Internet-based network these include protocols to look up names you may – may recognize DNS in that role – and things like time synchronization handled by the protocol NTP or network time protocol.

Many factors are considered in the development of these complicated protocols including what degree of reliability is required what performance is required. Some protocols may include elements that are unreliable by design and are simply called unreliable. It is not an insult but a very practical decision of trade-offs to allow a certain degree of unreliability in the name of better performance and the the converse can be true.

Before looking any more closely at protocols it will help to back up a bit and look at other defining aspect of "internetworking" in the form of the layered model mentioned earlier and at packet switching. Let us look at the basics of packet switching first.

Imagine if you will Charles Dickens sitting at Gad's Hill, Kent writing A Tale of Two Cities one paragraph at a time. He's doing it this way because the only way he has to send his prose to the publisher is on the back of a stack of postcards one card at a time. At a very basic level this represents how a packet switching network operates, by reducing a larger message or text too small postcard sized packets which are then transmitted individually. 

Now, you might ask, how will Dickens postcards get to the publisher in London if one of the bridges over the Thames is out of service, or if a certain post office along the route is closed for the day or has burned down. The logical answer might be that the postcards should be sent over a different bridge and through a different post office. This can be seen to represent another important component of packet switched networking, that of "routing".

Now put yourself in the shoes of the publisher. Hundreds of new postcards have arrived from Dickens but they have come across different bridges and different post offices and it's not really obvious what the orders of order of these postcards are or whether any postcards might be missing. Some of the postcards are off. Obviously damaged or smeared. In fact the first part card reads "A Tale of [illegible] Cities" and the second "it was the winter of our discontent". What is the publisher to make of this text?

These issues are all something that packet switching networking must address. Routing, address resolution, sequencing, and checking for completeness.

This first diagram is a very simple example of network routing that simply shows how traffic may choose another path through the network in the event a device along the path has failed. The second diagram shows pretty clearly and simply how different packets belonging to the same data stream may take different routes through different devices to arrive at the same destination. The protocols that we will talk about a little later are essential to making sure that, regardless of the route, the data transmission is successful and copes with any variables along the way.

There are quite a number of other elements and terms that are essential to routing but I'll mention just a few of them here including hops, latency, congestion, queuing and metrics.  Let's take a quick tour through all five terms.

"Hops" are mostly an indicator of how many network routing devices are given packet must pass through to reach its destination.

"Latency" is a measure of call it lateness – delayed transmission (and its reception) over the network  – especially over long distances.

"Congestion" is more or less a measure of just how much traffic is on the road so to speak. Think of daily traffic on Interstate 5 as it ebbs and flows and slows in response to congestion. Internetworks aren't much different.

"Queuing" is essentially a positive component of most networks that allow data packets (or cars!) To get where they are going by imposing certain rules of queuing and by implementing controls to enforce those rules. Think of the light controlled on ramps on Interstate 5. Of course for queuing to be effective you must have someplace for packets or cars to queue up like the entrance ramp off the 45th 25 N. In the network world devices that participate in routing traffic include queuing capacity by design so that packets have a better chance of reaching their decks destination expeditiously even if there is some delay involved.

"Metrics" are something that are implemented in routing protocols that consider a lot of the other factors we have just discussed -- queuing, congestion, latency, hops -- and make calculated decisions about the best way to send packets on their way. If you had to drive from the UW campus to Edmonds right now, you would have a choice of routes. Take I-5 Or Highway 99? And you would likely consider pretty much the same list of factors as these "routing metrics".


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
