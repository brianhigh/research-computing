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

Introduction
===================

In this day and age, it is rare to use a computer without some sort of networked connection, so learning more about the ins and outs of networking is essential for researchers.

The intent of this 30-minute presentation is to give youa somewhat better undertanding of the basic underpinnings of computer networking as it relates to Research and Data Management.

We'll cover a number of topics including a bit of history of networking, it's purpose, the evolution to contemporary computer networks, and many important technical aspects including networking topologies, protocols and standards, and networking system components.


Networking History
========================================================

Here's an example of an early data network that spanned the length and breadth of France?

Networking History
================================================================

They year was 1792 and the Chappe system used what were called optical telegraphs.

The notion of a communications network goes back some time. Think of smoke signals or drums and later on semaphore and telegraph systems like Chappe's that connected European capitals to their frontier defence posts during Napoleonic times.  Fast forward a bit and you find yourself looking at the electrical telegraph and telephone all of which were technological improvements but which would be considered as "analog"  technologies.  Analog communications all suffered from problems like amiguity -- "Does that flag mean attack or retreat?" --and other limitations depending upon the technology. For example, a semaphore system might only be usable during periods of clear weather, and sound or smoke traveling over long distances might be misinterpreted due to audible or visual degradation.

Moving Along 
================================================================

From the industrial revolution to the early 1900s, things improved considerably. However, communications systems still suffered from the limitations of analog technology. While a tin can telephone is a far cry from the extensive telephone networks that followed, this 1943 switchboard photo depicts a system using the same fundamental technology.

Enter Binary
==================================================================

What we think of as a computer network really could not arise until certain preconditions were met and certain technologies discovered. For one it required the invention of usable computers that employed binary-based "digital" technology to perform calculations. Secondarily, it required a realization that binary/digital technologies could be employed in communication to set the stage for the emergence of computer networks and networking. Specifically, it wasn't until the 1960s that computer networks as we know them really started to take off with something called "packet switching".


Some Binary Basics
==================================================================

The essential elements in the binary world is that only two data states exist - 0 and 1 - yet these can be used to describe incredibly complex information. It's importance cannot be over emphasized. However, its simple use of zeros and of ones can be very difficult for normal mortals to cope with. Consider the following number. Do yuu recognize it?

128.95.112.1

Some of you may recognize this number as the address of a server at the University of Washington that provides so-called domain name services. .

How about this number?:

  10000000010111110111000000000001
  
In fact the first number simply a decimal notation representing the second binary number. 
  
While speaking in binary won't make you the hit of the party it is important to remember that all of our contemporary communications rely completely on this underlying binary math.

Question
==========================================================
Would not Morse code be considered a binary communication protocol?

Computer Networks: What's the Point?
===================================================

So, what do computer networks provide? First, they are a means for a computer system to communicate with another computer system or many computers systems. I intentionally say "computer system" rather than "computer" as it is often the case that it is a system running on a computer that is communicating to peer system, say a specialized  system that performs bank transfer 

Secondarily, networks allow humans to interact with computer systems.

And lastly, networks allow humans to communicate with other humans..... at least for so long as the computers do not rise up and prohibit this. 
  
Contemporary Computer Networks:Key Elements
========================================================

Several characteristics define modern computer networking as we know it today. First is its basis in the binary world that we just reviewed. 

Second is a basis in something we have mentioned but not examined and that is "packet switching". 

The third characteristic is what could generally be called "protocols".

One other crucial element in modern computer networking and applications that run on networked computers is the notion of "layers", We will review what is generally called a "layered model".

Other important elements in computer networking include software and hardware components, network topologies, network speeds, and a number of other elements.

Protocols, Standards and Governing Bodies
===============================================================

In 1865 -- the age of telegraphy -- the establishment of the International Telecommunications Union (ITU)  signaled the recognition that worldwide communication would not grow and improve unless countries cooperated in defining standards and protocols that would allow national telegram and telephones to interoprate. The ITU is still very much alive today with governing bodies spanning landline telephone communication, wireless telephony, satellite communications and many other areas.

It was not always a given, but now that we are well into the age of the Internet, it is clear that the governing body that has the most to do with how networking and the Internet as we know them operate is the Internet engineering task force or IETF.  The IETF is the governing body that has custody of the overall suite of protocols that define the way that the Internet works.  Most notable in this realm is the suite of Internet protocols that go by the name of TCP/IP.  While not necessarily part of the Internet, many other organizations and institutions operate networks that use the same TCP/IP suite to implement their networks. The core protocols of this suite include transmission control protocol and Internet protocol both of which are featured in the suite's name and which govern routing on what we now call an Internet-based network. The suite includes under its umbrella many other protocols that support operations on an Internet-based network these include protocols to look up names you may – may recognize DNS in that role – and things like time synchronization handled by the protocol NTP or network time protocol.

TCP/IP protocols and their changes and enhancements are embodied in documents call RFCs, or Request For Comment. In technical discussions, it is not unusual to hear networking types use phrases like "RFC 1918 addressing" to reference a specific technical subject.

Many factors are considered in the development of these complicated protocols including what degree of reliability is required what performance is required. Some protocols may include elements that are unreliable by design and are simply called unreliable. It is not an insult but a very practical decision of trade-offs to allow a certain degree of unreliability in the name of better performance and the the converse can be true.

To the amusement of some of the key protocols begin with the term "Simple" when they are hardly that.

Before looking any more closely at protocols it will help to back up a bit and look at other defining aspect of "internetworking" in the form of the layered model mentioned earlier and at packet switching. Let us look at the basics of packet switching first.

Question
=============================================================
>How many different protocols are under the TCP/IP umbrella>

>What is ICANN? IANA?

Packet Switching, Routing, and Metrics
===============================================================

Imagine if you will Charles Dickens sitting at Gad's Hill, Kent writing A Tale of Two Cities one paragraph at a time. He's doing it this way because the only way he has to send his prose to the publisher is on the back of a stack of postcards one card at a time. At a very basic level this represents how a packet switching network operates, by reducing a larger message or text to small postcard sized packets which are then transmitted individually. 

Now, you might ask, how will Dickens postcards get to the publisher in London if one of the bridges over the Thames is out of service, or if a certain post office along the route is closed for the day or has burned down. The logical answer might be that the postcards should be sent over a different bridge and through a different post office. This can be seen to represent another important component of packet switched networking, that of "routing".

Now put yourself in the shoes of the publisher. Hundreds of new postcards have arrived from Dickens but they have come across different bridges and different post offices and it's not really obvious what the orders of order of these postcards are or whether any postcards might be missing. Some of the postcards are off. Obviously damaged or smeared. In fact the first part card reads "A Tale of [illegible] Cities" and the second "it was the winter of our discontent". What is the publisher to make of this text?

These issues are all something that packet switched networking must address. Routing, address resolution, sequencing, and checking for completeness.

This first diagram is a very simple example of network routing that simply shows how traffic may choose another path through the network in the event a device along the path has failed. The second diagram shows pretty clearly and simply how different packets belonging to the same data stream may take different routes through different devices to arrive at the same destination. The protocols that we will talk about a little later are essential to making sure that, regardless of the route, the data transmission is successful and copes with any variables along the way.

There are quite a number of other elements and terms that are essential to routing but I'll mention just a few of them here including hops, latency, congestion, queuing and metrics.  Let's take a quick tour through all five terms.

"Hops" are mostly an indicator of how many network routing devices are given packet must pass through to reach its destination.

"Latency" is a measure of call it lateness – delayed transmission (and its reception) over the network  – especially over long distances.

"Congestion" is more or less a measure of just how much traffic is on the road so to speak. Think of daily traffic on Interstate 5 as it ebbs and flows and slows in response to congestion. Internetworks aren't much different.

"Queuing" is essentially a positive component of most networks that allow data packets (or cars!) To get where they are going by imposing certain rules of queuing and by implementing controls to enforce those rules. Think of the light controlled on ramps on Interstate 5. Of course for queuing to be effective you must have someplace for packets or cars to queue up like the entrance ramp off the 45th 25 N. In the network world devices that participate in routing traffic include queuing capacity by design so that packets have a better chance of reaching their destination expeditiously even if there is some delay involved.

"Metrics" are something that are implemented in routing protocols that consider a lot of the other factors we have just discussed -- queuing, congestion, latency, hops -- and make calculated decisions about the best way to send packets on their way. If you had to drive from the UW campus to Edmonds right now, you would have a choice of routes. Take I-5 Or Highway 99? And you would likely consider pretty much the same list of factors as these "routing metrics".

Resolution of Names and Addresses
==============================================================

Protocols and jargon beget more protocols and jargon. If we suggested that you go to 128.95.230.32 to work on RStudio, it might be hard to remember your intended destination. Instead, we are able to say go to "phage" or "phage.deohs.washington.edu. This is made possible by a resolution protocol system called the domain name system or DNS with which many of you are likely familiar. 

Further, resolution is required not simply to that IP address, but to an actual hardware device in the computer and to something called a MAC (media access control) address. This MAC address is something that is equally unfriendly to humans consisting as it does of a string of hexadecimal numbers. Resolving an IP address to a specific computer and its MAC address required another protocol called ARP or address resolution protocol. But we may be drifting into the realm of that protocol called TMI.


The Layerd TCP/IP Model
=============================================================

To bring more conceptual order to this complicated set of protocols, a layered model is used as a reference. Take a look at this diagram. While there are other layered models in the communications world, the TCP/IP model aimed for some simplicity in comparison to others, with only 4 layers (other popular models such as the OSI Model have more). Probably the most frequently referred to protocol in the suite is IP or the Internet protocol which deals with what would be called an IP address and which is also fundamental to the operation of routing across an IP network.

It is not so important for you to remember a lot of details about the great number of protocols employed, but we review this information with an eye towards helping you learn how to troubleshoot problems you may have using a networked computer. More on that later.

Data Flow of the Layered TCP/IP Model
=============================================================

Let's look the flow of data through the layer TCP/IP model. You can see that data originates in the highest level of the model, the application layer and is handed off to the transport layer then next to the Internet layer and then down to the link, or physical layer. After passing across a network, the data is then sent up through the layered model in reverse order. This is how all Internet communications operate.
 
Layers, Protocols, and Encapsulation
=============================================================

The importance of the layered model operation makes a bit more sense when you consider another fundamental operation of IP networks, that of encapsulation. While some of this attractive diagram has not been translated from the Dutch it should be pretty straightforward to see where we have an application layer where information is transformed into packets of binary data  for encapsulation by the transport layer then again encapsulated into the Internet layer format and so on until the data is finally encapsulated for transmission over the link layer of data network.

Using our Charles Dickens example, it would be as if Dickens ran out of postcards but discovered a cache of envelopes. Think of encapsulation as a layer of envelopes around chapters of his long tale.

This diagram also offers a very clear depiction of the protocols associated with each layer.

Types of Networks
=============================================================

Let's quickly review a few other elements. 

The term LAN for "local area network" means pretty much what it says it is the local network that you are connected to and routing does not necessarily occur except to make connections to other LANs. Connections to other computers on the local area network are handled more by protocols like ARP.

The term WAN for "wide area network" refers to a collection of networks tied together across a wide area and where elements like routing become more important.

The distinction is not often absolute.

Question
============================================================
> Is the UW network a WAN?

http://en.wikipedia.org/wiki/Wide_area_network


Network Topologies
===============================================================

Network equipment can be organized in different so-called topologies. Common examples include mesh hub and spoke, and bus. The Internet can be considered the biggest example going of a mesh network. Closer to home and on a LAN a hub and spoke, or star, topology is more likely to be found.

* Mesh Star and Tree arguably more common in this era
* Complex networks can combine elements of multiple topologies.

Link Layer Technologies (Ethernet Rules!)
==============================================================

At this point in the history of computer networking it could seem that ethernet is the only networking protocol that ever existed to supply layer 2 networking and switching. While that is not the case, for practical purposes it might as well be considered so. Competing protocols have come but mostly gone.

Ethernet has continuously evolved, from a bus-based system in the 1980s to ethernet utilizing twisted-pair cabling and the familiar RJ 45 connector, and can connect over a variety of copper, fiber, and wireless/radio media. All brought to us by another important standards body, the Institute of Electrical and Electronics Engineers.

While not restricted to local area network technology, network speeds are referred to in bits per second – bps – with variations based on the speed of the network.  Probably most familiar is the term megabits (million bits) per second – Mbps. Speeds have progressed from 10 Mbps, past 100 Mbps, and now range into "gigabit" or billion bits per second – Gbps.

Take note that the letter B in"bps" is expressed in lower case where a bit is simply one binary digit. Contrast this with "MB" for megabyte where a byte is an unit consisting of 8 bits. This distinction becomes important when trying to calculate the time needed to transfer data over a network where the network speed is expressed and measured in some number of bits per second but the data to be transferred is stated in megabytes


Primary Network Devices
=======================

So, what are the devices that make these complex topologies work?

Two types of devices, perhaps familiar, provide the functionality needed for a packet switched network. The first would be a "switch".  The second is known as a router. The former is typically implemented to support a LAN while the latter is intended to provide routing services for a  WAN.

Another device with which you are probably familiar is a wireless access point.

By design these newer devices may combine functions and be hard to distinguish solely by appearance or size.

Using the Network Effectively
=============================================

First keep in mind that a network is only as good as its weakest or slowest link. Network service can be a performance bottleneck in some situations.

A wired connection to your computer is almost always more reliable than a wireless network connection.

In the case of bottlenecks remember that read and write speed to and from a local hard drive will typically always be faster than the speed of read and write to share or folder on the network.

What are some troubleshooting techniques?

For one start with the component closest to you and work your ways outward. Troubleshooting what seems like an Internet problem may be nonproductive if it is simply the case that someone has unplugged your network cable from the wall.

Learn how to use a simple tool called "ping" to assess whether remote network hosts are reachable by IP address.

Get a grip on name resolution and DNS. Knowing whether a problem is simply a failure  of domain name resolution can save you a lot of time and aggravation.

Learn how to determine your IP address using tools on your computer or web based tools like what is my IP.com.

Whether you are attempting to solve a problem by yourself or wind up seeking help from another party, knowing some of these techniques will help get you back in action much more quickly.

For more look at networking on the computing basics wiki.

Conclusion
==========================================================


