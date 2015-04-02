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
========================================================
Welcome to our session on Information Security.   

You may ask "Why should I care about information security?"

To help answer that question let's try a short, meditative exercise.  Hit the video "pause" button and consider the following questions:

- What information do I care about? Personal information like bank account numbers and credit histories?  Documents you have created as part of class assignments?  Data you are responsible for as part of a laboratory experiment or research study?

- Foe the kinds of data that you are responsible for and care about, give some thought to what might result if that data was:

- Lost when a laptop was stolen
- Obtained by a criminal
- Disclosed to the world over the Internet
- Found to have a host of errors
- Subtly altered in a way that would not be noticed for 5 years

OK, if you have given that a few minutes thought, now press the "play" button.


Outline
==========
Some terms may be meaningful to you yet, but in this session we'll cover material in 5 main areas:

* Part 1: Some philosophical foundations of information security
* Part 2: Risk assessment
* Part 3: Security controls
* Part 4: Encryption
* Part 5: Security best practices

Part 1: Philosphies and Foundations
========================================

Why Security?
=========================================================

So why is security in general a good thing?  Some folks manage to form the impression that people who are enthusiastic about "security" are people with some control issues.  While I'm sure you can find some security enthusiasts who might be described as "control freaks", a more fair picture is that mature security professionals are not interested in control anywhere near as much as they are committed to the pursuit of risk management.
So we see security, and Information security, not as an control-freak end in and of itself but rather as a means of identifying and dealing with risk.

You might still ask "What does security matter to me?  Why should I care?"   With luck the Welcome meditation wil make it less difficult to identify examples of how security, or the lack of it, can have a profound impact on your work and career.  We'll see a few examples in he next sections.

Working for the CIA
===========================

Information Security, often referred to as "InfoSec" uses a number of different frameworks to pursue its desired result.  The most commonly-used InfoSec principles revolve around the triad "CIA", standing for confidentiality, integrity, and availability. There are more complex expressions of this concept but for our purposes will stick with CIA.

Confidentiality should be really self-explanatory: only parties who should have access to information get it. 

Integrity means that the accuracy and consistency of data throughout its life-cycle is assured.  It means that data can't be modified in an unplanned or unauthorized way and that your data is correct at least with respect to your expectation of what the data should be. 

Availability is a lofty term for making sure that you can get your data – that your data management system is built and designed in such a way that it will continue to make your data available to authorized parties and mitigate against threats to availability whether they be computer failure, network failure, a malicious exploit, or something else.

What does CIA address? (Examples)
=====================================

It should be easy to think of some reasons why these three concepts are important. Let's take the example of a research study that you are working on. It has been funded to the tune of $5 million over five years, and there is the possibility of renewal. By chance, the  study collects and stores some private health information (PHI). 

Possible results of a failure to assure data confidentiality should be obvious these days. Harm to study subjects, lawsuits against the sponsoring institution, disciplinary actions, loss of funding… The list goes on.

Integrity, and a failure to maintain it, are probably easiest to think of with an example like a large study that spent millions of dollars, collected lots of data, but then discovered at some point that the data was more or less corrupt, incorrect, inconsistent, invalid. Possible harms? Incorrect conclusions making their way into the scientific literature would be one. Withdrawal of funding would be another on top of damage to professional reputations.

Availability would seem more straightforward, but also requires considerable thought and planning. What good is confidentiality and integrity if all of your study data was lost in a fire or stolen from your laptop in an airport lounge? How good are your backups?

CIA is a mainstay of good Information Security practice, but there are many additional elements that form a more complete InfoSec framework. 


<!-- VIDEO PART TWO -->


Part 2: Risk Assessment and Management
========================================

Frederick II the Great
===========================

![Freddie](images/fred2.png)

-------

>"He who defends everything defends nothing."


There is a quote, attributed to Frederick the Great, that posits "He who defends everything defends nothing". The saying is popular among some security professionals.  Frederick was talking about war and the need to manage limited resources and logistics to achieve a strategic victory, so the application to InfoSec can get pretty strained. Still, it does have bearing in information security as the resources that any one organization can bring to bear to secure the organization are limited. A contrary assertion -- "He who does not defend everything defends nothing" -- also matters a in the InfoSec world, where the failure to secure even innocent–looking assets could lead to a much greater compromise of the organization's information.  This is something we'll talk about when we cover the concept of "privilege escalation".


Allocating Resources for Information Security
==============================================
So what is one to do? How do you decide where to spend your finite, Limited resources and time to protect your data and information?

One cornerstone of good information security practices is that of risk management. While it might sound rather dull, a risk management approach is key to making decisions that optimize the application of your resources to secure your information and the organization.

Risk Assessment Methods
============================
The field of risk assessment covers a lot of territory and can have many different emphases. This can range from a billionaire commodities trader trying to assess the risk of a small drop in the price of precious metals all the way to you trying to judge how much insurance coverage to obtain for your car or home.  Let's say you have only 2 valuable possessions, a brand-new laptop that cost $2000 and a used 70-inch LED TV that cost $1200.    You might approach the task of determining the the right insurance coverage by calculating something called "Single Loss Expectancy".  SLE is calculated in the formula:
  
  ![SLE](http://upload.wikimedia.org/math/f/7/6/f76081ec21b408d1f1e1488fb335e2d7.png)

To arrive at SLE you would calculate the asset values of the Laptop and the TV and the so-called "exposure factor" (how much of this stuff some burglars might haul off).

Okay, when you look at these two assets you realize that while the laptop would be a cinch to pinch, it would be nearly impossible for thieves  to get your TV out of your 3rd-floor walk-up. So, while your total Asset Value is $3200 but your Exposure Factor would be .625 reflecting that the laptop would likely be stolen while the TV remained.  So his Single Loss Expectancy is $2000.  This is a very simple example and might seem a bit circular, but it is the basis for more complicated estimates.    

- Asset Value = Laptop ($2000) + TV ($1200)
- Exposure? Laptop, YES. TV, NO.
- Exposure Factor = 0.625
- Single Loss Expectancy = $2000

"Exposure" is not limited to a specific object, but can be an expression of likelihoods and probabilities.  Example: You might use the annual probability of 8.0+ earthquakes in Seattle to estimate the chance of your TV being destroyed by a natural disaster.

<!-- VIDEO PART THREE -->

Part 3: Controls
========================================================

What is a Control?
====================

To paraphrase conflicting definitions, "Security controls are safeguards or countermeasures to avoid, counteract, minimize and/or recover from risks and threats related to security".

Types of Controls
===================

A successful information security and data management plan will address specific identified risks by means of specific measures or "controls". These can be looked at in a few different ways. One main way is the type of control. Several important types along with some examples include:

– administrative (for example written policies that are enforced)
– logical (required computer accounts are the most common example)
– physical (door locks and access cards for example)

Another primary way to look at security controls is whether they attempt to prevent the occurrence of a risk event, reduce the impact of a risk event if it does occur, or restore your systems and information when a risk event occurs with full impact.  So, we have controls that are:

- preventative
- corrective or mitigating
- restorative

Example Controls
==================
![Security Camera (Dummy)](images/dummy-camera.png)
![Guard Dog (Rex)](images/rex320.jpg)
![Concertina Wire](images/320concertina.jpg)
----
![Electronic Keypad Lock](images/185-electronic_lock.jpg)
![Biometric Lock](images/265biometric.jpg)

An excercise in Risk Mangement Calculation and Control selection
======================

Let's look at some domestic burglary risk management and decision-making about controls.  We'll use the previous scenario where you want to secure your laptop and the information on it from theft.

Having a German Sheppard patrol the front yard would definitely be a preventative control, as might the "Protected by ADT" event if you didn't have an alarm. But keeping a mean guard dog has its own risks.

A real alarm system for your house would also be preventative, but, also, since it could summon the police before the perp escapes with your laptop, it could also be a mitigating/restorative control. But an alarm would also be expensive and it raises the question of continuing cost.  Would it be better to pay once for better locks that will last 20 years? 

A restorative control might be harder to identify.  While you might back up the data on your laptop as a restorative control, the chances of ever seeing that laptop again are tiny and the main restorative control would likely be homeowners insurance.


How does this apply to Information Security?
===============================================
One truism that most information security professionals would agree with is that "There is no silver bullet.", meaning that there is no single technology or technique or philosophy that will adequately protect information in a complex world. They recognize that somebody might give your faithful guard dog some tranquilizers or enter your house through a window in the back

Most every decent information security plan will require a multifaceted approach that combines preventative/defensive methods along with procedures that mitigate the adverse effects of security exploits and breaches. From time to time, you will hear someone say something like "We are okay. We have a firewall!" Fixation on any single measure or technology is a recipe for future information security disaster. Successful security practice is implemented in multiple layers, or a "layered defense".

With other topics remaining to be discussed we may be forced to give risk management short shrift. It is an area that could consume hours days months years, and to which some people have devoted their entire careers. That being said, at the beginning of any project and more usefully before it is even launched (or funded!), It is essential to devote some time to an assessment of the projects risks so as to develop adequate controls.

This is not cut and dried. While it might be easy to identify a risk such as losing data on a laptop that gets stolen, other risks might be less tangible yet important. For example, what if the lost data on that laptop leads to the cancellation of a project or an unsuccessful grant renewal?

Paradoxically an asset can be a risk. For example think about the very bright data analyst you hired for the project and who is the only person in the project who truly understands some of your statistical methods. The data analyst is a great asset to the project until they take a new, highly-paid position in Paris. In impersonal terms, they were always a risk, really.

One risk is that you could spend too much time on risk assessment!

Typical Risks and Threats in Information Security
==================================================

There is a danger in saying "typical" in this context, as risk profiles can cover a lot of different areas across different environments.   A company located in the Swiss Alps may need to account for the risk of avalaches while their subsidiary in the Phillipines will need to pay attention to the dangers of the Monsoon season.  

In this day and age, however, most of the threats that we see highlighted on the nightly news are ones that are specifically malicious and leverage access to computers over the Internet.  Many of these threats may target a range of networked computers including general-purpose computers along with more specialized machines such as those operating Web servers.   Threats will also vary based on whether a computer system is the primary target of criminals, say a bank system or a large retailier, or whether the threat is intended to have a more general target and result, like pulling PCs into a so-called "Botnet"" or getting Web servers to serve malicious material and scripts,  An attack against a high value target like a retailer could combine all of the above to execute an attack and compromise the retailer's critical systems.

Common Internet and Web-borne Threats and Terms
===================================================
![Trojan Horse](images/trojan.png)

Let's quickly revies a number of common threats and terms: 

----

* Social Engineering
* Trojans
* Phishing
* Spear Phishing
* Brute Force Attack
* Escalation of Privilege
* Advance Persistent Threat
* Zero-Day Exploits
* SQL Injection
* DoS/DDoS


Threat: Social Engineering
=============================
This refers to using psychological mean to manipulate people into performing certain actions or divulging confidential information.  It is the crux of many gumshoe detective novels and is not confined to information security in the computing and systems sense.  Think of a detective telling a receptionist "Your boss said I need to fix his telephone right away!" when really all the detective wants is to look in boss man's file cabinet for evidence.  It is a lynchpin of man other threats and techniques. 

Threat: Trojans
=================
A Trojan (from Trogan Horse) is a exploit most commonly delivered over a network (bit not always. USB keys have been used).  The key to a Trojan is that it does something different than what you might be made to believe and it requires an action on the part of the recipient to open the hatch, more or less, and let all of the Greeks out.

Threat: Phishing
=====================
This should be familiar. The technique of sending formatted emails made to look like they are from an institution like a bank.  All in order to trick people into divulging personal information like passwords and credit card number.  You've seen them: emails saying that your checking account at Wells Fargo is being shut down unless you CLICK HERE.  But you don't have a Wells Fargo account!

Spear Phishing is a variation that is much more targeted.  Where the perpetrators know that a group of people have certain assets, positions or information and craft a much more customized message with more realism.  An example might be an email to all of the stockbrokers at Bank X from the bank president inviting to sign up for the annual meeting in Hawaii (which does exist).

Threats can also be mixed. like Spear phishing emails that also bear a trojan.

Threat: Brute Force Attack
=====================
Imagine you forgot the 4-digit code to the bathrooms in Roosevelt.  Everyone else has gone home.  So you start entering a sequnce of 4 digit codes as fast as you can to see if one matches.  That is brute force.  Thankfully, brute force attacks can often be spotted and mitigated, but not so when they are used off-line to try to discover actual passwords from encrypted password hashes

Threat: Escalation of Privilege
=================================
This is the technique, oten exploratory in nature, by which a perpetrator gains increased privileges on a computer system over time.  We've made an analogy for this in a separate short feature. 

Threat: Advanced Persistent Threat
==================================
An APT is a combination of sophisticated techniques being used in an attack to the point that the threat elements persist on the system after an initial attack and may be difficult or even impossible to remove.

Threat: Zero-Day Exploits
============================
A so-called "zero-day" is an exploit against software and/or systems that becomes know to the word at large before the author, publisher, or manufacturer has even one day to try to fix it and issue a patch.  So, a zero-day

Threat: SQL Injection
========================
"Sequel" injection is an attack method aimed specifically at relational database systems and most often through forms on Web sites that ise a SQL-based data story.  They work when an poorly-designed/coded Web page or form allow an attacker to append SQL commands to a Web site URL such that the injected query gets processed.  This is just one of a number of Web-specific attacks, but perhaps the most common. 

Threat: DoS/DDoS
================
These stand for Denial of Service and Distributed Denial of Service.  The latter has become increasingy common, whereby a large number of computers are employed to overload another computer by sending vast numbers of requests to that computer over an internet. 




Typical Controls in information Security
=========================================

* Access Control
   + Physical
   + Logical
   + Network 
* Software
   + Anti-Virus
   + Browser configuration and add-ins
  
* Alarm Systems and Monitoring
   + Intrusion Detection (physical and logical)
   + Server hardware health 
   + Environmental conditions (temp, smoke, fire)
* Redundancy
* Backups


Access controls
========================================================

* Identification
* Authentication
* Authorization

A key element to securing data is the concept of access control. This includes the requirement that a party successfully identify themselves and that is followed by a requirement to authenticate this identification. Authentication can take a number of distant different forms including a stored secret that is known only to you or device like a smart card. You are probably familiar with recent discussions about a move to so-called "multifactor" authentication systems in payment card systems and ATMs where a combination of password plus physical device are required.

Authorization relies on successful authentication but provides a different service – that of granting rights to individual parties based on membership in defined groups or roles. A very simple example from our department: to edit some particular pages on the department's website, you need to be a member of the group "web team".. 

Further assurance for your stored data
========================================================

Remember that controls can operate in different realms, sometimes at the same time.

For example backups may not be a completely successful preventative tool in deterring the risk of some of your data – let's say that a the day's worth of your data was lost due to an equipment failure for someone's failure to save their work. However, those same backup controls could be an excellent preventative control when looking at the risk of losing your business or a grant renewal or contract.

Typically backups are tailored to capture data that is still in active use in a business. At some point it may become prohibitively expensive to continue to back up data that is not in active use. This is the point at which a business would consider storing legacy data in some type of lower-cost archive. Archives can be critical control measures depending on the circumstances including things like regulatory and contract compliance.

We should mention in passing that some systems, like ours, have the ability to take so-called "snapshots" of stored data at desired intervals. This provides a mechanism to do a previous version of a stored file and more or less "rollback" the document or data. Some advanced data systems have this rollback built in and use concepts such as journaling to be able to look at state of the data at any moment in time.

Probably much more important and of much more utility to average folks managing average data is the concept of versioning and version control. version control is useful on a number of different levels. Most commonly associated with the control of programming source code, version control is essential especially when multiple parties are collaborating on the same programming tasks. The version control offers great benefits even for an individual user, and even managing the versioning of things like documents or evolving data sets. Formal version control systems use a defined repository to store versioned data. We have implemented one here in the department using the software called "git"and that repository is integrated with our Redmine system.

* Backups
* Snapshots
* Archives
* Version control

<!-- VIDEO PART FOUR -->

Part 4: Encryption Technologies
====================================
Wikipedia says "In cryptography, encryption is the process of encoding messages or information in such a way that only authorized parties can read it."  That sounds about right.

Cryptography itself goes back in some form to ancient times but "crypto" and encryption based on sophisticated mathematical algorithms really started to emerge in the 20th century.  Late in that century the emergence of the Internet helped propel the use of ecryption and standards for its use.

Modern cryptography is based on so-called keys of differing types.

A Key
===========================
Here's an example of a pretty much randomly generated key:

-----BEGIN RSA PRIVATE KEY-----
Proc-Type: 4,ENCRYPTED
DEK-Info: DES-EDE3-CBC,568B9A3A3399B91F

tE+eI4cCX5iAHL34MEnTV+AmA+iWmRx+RRUWF5aJ4EX+A/zWNnIexwJEL0aWecA/
PQzqkEj5b22MGD/Y4sVmuQPMaJFpEGwHpn1voT+uUhAzC5ne3njCQtaPZF6XIRh6
36tTELNI6uJfd6o/VNC+ya4HfvI3iQlMZn6IP0wrEMSDk/1a3dc90POXFXERgkS0
N020tQ69zRkJnw1IMGAkIXqOOjMlkBARFMW94HWkfiZ0vA+v6mg34MdUQqln0ibc
y9xLaI2XakyIZN65z+ZzU3VPqAnDSN/vOUPuzr6PJSLg1UkKL6u8oxaZZZgUEIyB
G1TYbA9sLrScONJF8eBW/fI+7yK/a0wWnzsCJ59zNeno6Dg+6jFasJmjMhYpWOjm
uX99QJWhIaE4evI75h0vGSc/psTw2X4ppYyj6TnbORc2+HiIoNpKyeq3ovcRpPmN
x97fGBYI6GzaCF1u7q2EN85IVaydCCNLzA4p3NJPriw0M21sGu+MXrqPKKtd46O6
t27pYf/9Gm1QtOkwpOyKn2pVVEKGZoFfxKi+gYxyrJFUBtVpuhs+jW35IA7mCUeo
IS/0vtPU0vlQs4xsz7yOv4h4iozPCmzKSXvQ0J4Az6z/rsrwjcoS3f6bwWVLzMaM
kYqQpT4h0PdCtHBygBQFpPnoc6ocsZmGIkzibOJ3z0EVncMFTKHTtMKMYqFuJRgo
Xq+WsYqlOrBfusGLt1ReGJ0fVPQmWAbCDvoEn4BSfv8nQZqwFFxH1ev1YD1E/nYg
e84JT4dnzAzZ/k1I9TlZOvzAn3+2qP33CWXgMoful1bqr9oSvSX9Pw==
-----END RSA PRIVATE KEY-----

All keys appear to be this meaningless!

Main Uses of Encryption 
===========================
These uses genrally fall into two main classes:

- Encryption of data in motion - in transport "streams"
- Encryption that is more or less file-based


Encryption software
========================================================

# Stream/Session based:

* Protocols and tools like SSH, SFTP (SSL/TLS)
* Secure Web using SSL and represented by Lock Symbol
* Digital Certificates mostly for Web sites but also applications
* Negotiation 

----

# File based:

* 7-Zip
* TrueCrypt
* PDF
* PGP

Other Encryption Elements and Factors
========================================================

* Codes/cyphers: the mathematics continue to evolve to defeat code breakers 
* Keys: Length is a "key" factor in strength
* Standards include NIST standards like 
   + DES
   + 3DES
   + AES

A Public Key Encryption Diagram
=================================

![Public Key Encryption](https://upload.wikimedia.org/wikipedia/commons/f/f9/Public_key_encryption.svg)


<!-- VIDEO PART FIVE -->

Part 5: Security Best Pracices
====================================

Some Basic Security Tips
========================================================

* Security on personal computers and devices is easily subverted.

* Internet-connected devices are under attack day and night.

* Anti-virus software is not updated fast enough to keep up.


Best practices
========================================================
Least Privilege

Defaul Deny-All Policies and explicit permissions

Characterize and understand the baseline security environment and leverage it. Don't reinvent and risk possibly making things more complicated.

Subscribe to relevant security announcement lists

Use widely adopted industry standards like OWASP

[Web application security: OWASP Top 10](https://www.owasp.org/index.php/Top_10_2013-Top_10)




Other links and some recent real-life examples
=========================================

[Krebs on Security Blog](http://krebsonsecurity.com/)
[Wikipedia "History of Cryptography](http://en.wikipedia.org/wiki/History_of_cryptography)
[Wikipedia on Single Loss Expectancy](http://en.wikipedia.org/wiki/Single_loss_expectancy)
[DDoS on GitHub](http://arstechnica.com/security/2015/03/massive-denial-of-service-attack-on-github-tied-to-chinese-government/]
[Purchase Uber Logins Online!](http://arstechnica.com/tech-policy/2015/03/dark-web-vendors-offer-up-thousands-of-uber-logins-starting-at-1-each/)
[UW Professor encounters Ransomwear (in class)]







