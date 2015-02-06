Information Security
========================================================
author: Jim Hogan
date: 2015-01-06
transition: fade
incremental: true

Research Computing and Data Management
-------------------------------------------------------
[http://github.com/brianhigh/research-computing](http://github.com/brianhigh/research-computing)

<small style="font-size:.5em">
This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.<br />
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a>
</small>


<!-- VIDEO PART ONE -->


Welcome
=================

Welcome to our session on Information Security.  I'd like to start on a positive note by showing you a picture of my buddy Frank's friendly dog "Rex":

----

![Guard Dog](https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Military_dog_barking.JPG/640px-Military_dog_barking.JPG)

We'll spend some time with Rex a little later in the program.  But first....

Introduction and Outline
========================================================

Some terms may be meaningful to you yet, but in this session we'll cover:

* Some philosophical foundations of information security
* The concepts contained in "CIA"
* Risk assessment
* Security controls
* Encryption
* Security best practices

- Philosophies and Foundations 
- CIA (AAA)
- Controls
- Encryption
- Best Practices

Philosophies and Foundations
=========================================================

So why is security in general a good thing?  Some folks manage to form the impression that people who are enthusiastic about "security" are people with some control issues.  While I'm sure you can find some security enthusiasts who might be described as "control freaks", a more fair picture is that mature security professionals are not interested in control anywhere near as much as they are committed to the pursuit of risk management.  We'll come back to that.

So we see security, and Information security, not as an control-freak end in and of itself but rather as a means of identifying and dealing with risk. 

Working for the CIA
===========================

Information Security, often referred to as "InfoSec" uses a number a number of different frameworks to pursue its desired result.  The most commonly-used InfoSec principles revolve around the triad "CIA", standing for confidentiality, integrity, and availability. There are more complex expressions of this concept but for our purposes will stick with CIA.

Confidentiality should be ready self-explanatory: only parties who should have access to information get it. 

Integrity means that the accuracy and consistency of data throughout its life-cycle is assured.  It means that data can't be modified in an unplanned or unauthorized way and that your data is correct at least with respect to your expectation of what the data should be. 

Availability is a lofty term for making sure that you can get your data – that your data management system is built and designed in such a way that it will continue to make your data available to authorized parties and mitigate against threats to availability whether they be computer failure, network failure, a malicious exploit, or something else.

What does CIA address? (Examples)
=====================================

It should be easy to think of some reasons why these three concepts are important. Let's take the example of a research study that you are working on. It has been funded to the tune of $5 million over five years, and there is the possibility of renewal. By chance, the  study collects and stores some private health information. 

Possible results of a failure to assure data confidentiality should be obvious these days. Harm to study subjects, lawsuits against the sponsoring institution, disciplinary actions, loss of funding… The list goes on.

Integrity, and a failure to maintain it, are probably easiest to think of with an example like a large study that spent millions of dollars, collected lots of data, but then discovered at some point that the data was more or less corrupt, incorrect, inconsistent, invalid. Possible harms? Incorrect conclusions making their way into the scientific literature would be one. Withdrawal of funding would be another on top of damage to professional reputations.

Availability would seem more straightforward, but also requires considerable thought and planning. What good is confidentiality and integrity if all of your study data was lost in a fire or stolen from an airport lounge? How good are your backups?

CIA is a mainstay of good Information Security practice, but there are many additional elements that form a more complete InfoSec framework.  Let's start with a vignette:

Frederick II the Great
===========================

![Freddie](http://upload.wikimedia.org/wikipedia/commons/4/46/Frederick2.jpg)

-------

> "He who defends everything defends nothing.""


There is a quote, attributed to Frederick the great, that posits "he who defends everything defends nothing". Which is popular among some security professionals.  Frederick was talking about war and the need to manage limited resources and logistics to achieve a strategic victory. This does have bearing in information security as the resources that any one organization can bring to bear to secure the organization are limited. The contrary assertion"He who does not defend everything defends nothing" matters a lot in the "InfoSec" world, where the failure to secure even innocent – looking assets could lead to a much greater compromise of the organization's information.  This is something we'll talk about when we cover the concept of "privilege escalation".

Allocating Resources for Information Security
==============================================
So what is one to do? How do you decide where to spend your finite, Limited resources and time to protect your data and information?

One cornerstone of good information security practices is that of risk management. While it might sound rather dull, a risk management approach is key to making decisions that optimize the application of your resources to secure your information and the organization.

Risk Assessment Methods
============================
The field of risk assessment covers a lot of territory and can have many different emphases. This can range from a billionaire commodities trader trying to assess the risk of a small drop in the price of precious metals all the way to my Buddy Frank trying to judge the likelihood that thieves may break into his house in Ballard and steal his sole possessions, a collectible Atari video console and a well-used 70-inch plasma TV.   Frank may not realize it, but he is attempting to estimate something called "Single Loss Expectancy" and which is calculated in the formula:
  
  ![SLE](http://upload.wikimedia.org/math/f/7/6/f76081ec21b408d1f1e1488fb335e2d7.png)

Let's not belabor this but suffice it to say that Frank will calculate the asset value of the Atari and aging TV and the "exposure factor" (how much of his stuff the robbers might haul off) to arrive at this "SLE".

Okay, Frank thinks he could sell the TV on Craigslist for $500, but knows he could sell the Atari on eBay for $2000.  It would be nearly impossible for thieves to haul off the big TV, but the Atari would be a cinch to steal.  So his total Asset Value is $2500 but his Exposure Factor would be .80, reflecting that Atari would be stolen while the TV remained.  So his Single Loss Expectancy is $2000.  This is a simple example and might seem a bit circular, but it is the basis for more complicated estimates.    


One truism that most information security professionals would agree with is that "There is no silver bullet.", meaning that there is no single technology or technique or philosophy that will adequately protect information in a complex world. Most every information security plan will require a multifaceted approach that combines defensive methods along with procedures that mitigate the adverse effects of security exploits and breaches. If you ever hear someone proclaim "We are okay. We have a firewall!" You are probably looking through a window into a future information security disaster. successful security practice is implemented in multiple layers, of "layered defense".

With other topics remaining to be discussed we may be forced to give risk management short shrift. It is an area that could consume hours days months years, and to which some people have devoted their entire careers. That being said, at the beginning of any project and more usefully before it is even launched (or funded!), It is essential to devote some time to an assessment of the projects risks.

This is not cut and dried. While it might be easy to identify all risk such as losing data on a laptop that gets stolen, other risks might be less tangible yet important. For example, what if the lost data on that laptop leads to the cancellation of a project or an unsuccessful grant renewal?

Paradoxically an asset can be a risk. For example think about the very bright data analyst you hired for the project and who is the only person in the project who truly understands some of your statistical methods. They are an asset to the project until they take a new, highly paid position in Paris. In impersonal terms, they were always a risk really.

One risk is that you could spend too much time on risk assessment!



CIA (AAA)
========================================================

Some key tenets of information security are often described using the term "CIA". In its simplest form this stands for confidentiality, integrity, and availability. 

- Confidentiality
- Integrity
- Availability
- Accounting
- Accountability

Controls
========================================================

A successful information security and data management LAN will address specific risks by means of specific controls. These can be looked at in a few different ways. One main way is the type of control. Several important types along with some examples include:

– administrative (for example written policies)
– logical (computer accounts are the most common example)
– physical (door locks and access cards for example)

Another primary way to look at security controls is whether they attempt to prevent the occurrence of a risk event, reduce the impact of a risk event if it does occur, or restore your systems and information when a risk event occurs with full impact.

Let's look at a simple example of domestic burglary risk management.

A loud barking dog in the front yard would primarily be a preventative control as might a sticker or sign that says "this premises has an alarm system". If the burglar feeds your dog a handful of tranquilizers, then the burglar may gain access to your premises and then the alarm system could come into play this time as a mitigating control, wherein the amount of loot the burglar can haul away is reduced by the approach of police sirens responding to the alarm. But let's say the burglar hauls away everything including your most valuable possessions, photos of your family and of Elvis Presley. If you have been prudent data manager and digitized all of those family and Elvis photos then stored them on a hard drive in a safe deposit box, then you have implemented a strong restorative control.

- Administrative (policies)
- Logical (accounts)
- Physical (door locks)

Access control
========================================================

- Identification
- Authentication
- Authorization

A key element to securing data is the concept of access control. This includes the requirement that a party successfully identify themselves and that is followed by a requirement to authenticate this identification. Authentication can take a number of distant different forms including a stored secret that is known only to you or device like a smart card. You are probably familiar with recent discussions about a move to so-called "multifactor" authentication systems in payment card systems and ATMs where a combination of password plus physical device are required.

Authorization relies on successful authentication but provides a different service – that of granting rights to individual parties based on membership in defined groups or roles. A very simple example from our department: two edit some particular pages on the department's website, you need to be a member of the group "web team".. 

Further assurance for your stored data
========================================================

Remember that controls can operate in different realms, sometimes at the same time.

For example backups may not be a completely successful preventative tool in deterring the risk of some of your data – let's say that a the day's worth of your data was lost due to an equipment failure for someone's failure to save their work. However, those same backup controls could be an excellent preventative control when looking at the risk of losing your business or a grant renewal or contract.

Typically backups are tailored to capture data that is still in active use in a business. At some point it may become prohibitively expensive to continue to back up data that is not in active use. This is the point at which a business would consider storing legacy data in some type of lower-cost archive. Archives can be critical control measures depending on the circumstances including things like regulatory and contract compliance.

We should mention in passing that some systems, like ours, have the ability to take so-called "snapshots" of stored data at desired intervals. This provides a mechanism to do a previous version of a stored file and more or less "rollback" the document or data. Some advanced data systems have this rollback built in and use concepts such as journaling to be able to look at state of the data at any moment in time.

Probably much more important and of much more utility to average folks managing average data is the concept of versioning and version control. version control is useful on a number of different levels. Most commonly associated with the control of programming source code, version control is essential especially when multiple parties are collaborating on the same programming tasks. The version control offers great benefits even for an individual user, and even managing the versioning of things like documents or evolving data sets. Formal version control systems use a defined repository to store versioned data. We have implemented one here in the department using the software called "git"and that repository is integrated with our Redmine system.

- Backups
- Snapshots
- Archives
- Version control

Encryption
========================================================

- Codes/cyphers
- Keys (length)
- Standards
- Protocols
- PKI: Public Key Infrastructure

Encryption software
========================================================

Stream/Session based:

- Web, SSH, SFTP (SSL/TLS)
- Lock Symbol
- Certificates
- Negotiation

----

File based:

- 7-Zip
- TrueCrypt
- PDF
- PGP

![Public Key Encryption](https://upload.wikimedia.org/wikipedia/commons/f/f9/Public_key_encryption.svg)

Encryption Standards
========================================================

National standards (NIST):

- DES
- 3DES
- AES


Some Basic Security Tips
========================================================

Question: If I have set a password on my laptop, is the data on my laptop secure?


* Security on personal computers and devices is easily subverted.

* Internet-connected devices are under attack day and night.

* Anti-virus software is not updated fast enough to keep up.

Best practices
========================================================

List and discuss data security best practices.

Some practical resources on network/Internet security:

Krebs on Security http://http://krebsonsecurity.com/

More to work in
=======================
Privilege escalation



