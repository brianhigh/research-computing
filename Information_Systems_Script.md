Information Systems
========================================================
author: Brian High
date: Jan. 4, 2015


Research Computing and Data Management
-------------------------------------------------------
[http://github.com/brianhigh/research-computing](http://github.com/brianhigh/research-computing)

<small style="font-size:.5em">
This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.<br />
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a>
</small>

# Introduction

Your research computing experience will involve using *and* developing 
information systems. We will take a quick look at the various components, 
types, and development models of these systems.

# Information System Components

The primary components of an information system are hardware, software, data, 
and *people* -- the most important component of all! Why? Because 
systems are designed and built *by* people *for* people. If people don't use 
them, or they do not serve the people's needs, then they are worthless! Today 
we will take a closer look at how information systems are designed to help us.

<small style="font-size:.5em">
Source: [Wikipedia](http://en.wikipedia.org/wiki/Information_system#Components), 
[CC BY-SA 3.0](http://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License)
</small>

![personal computer](http://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Personal_computer%2C_exploded_5%2C_unlabeled.svg/446px-Personal_computer%2C_exploded_5%2C_unlabeled.svg.png)

<small style="font-size:.5em">
Source: [Gustavb, CC BY-SA 3.0, (Wikimedia)](http://en.wikipedia.org/wiki/File:Personal_computer,_exploded_5.svg)
</small>

## Hardware

The physical machinery of a computer system is called its 
[hardware](http://en.wikipedia.org/wiki/Computer_hardware). Of course, this 
means the computer itself, its chassis and the parts inside it, including its core 
[integrated circuit](http://en.wikipedia.org/wiki/Integrated_circuit) known as 
the [central processing unit (CPU)](http://en.wikipedia.org/wiki/Central_processing_unit), 
as well as its memory, called "RAM" or Random Access Memory, and any internal 
storage devices like hard disk drives (HDD) and solid state devices (SSD).

Accessories or [peripherals(http://en.wikipedia.org/wiki/Peripheral) are the 
devices you plug into the computer, mostly for input and output.

[Networking equipment](http://en.wikipedia.org/wiki/Networking_hardware) includes 
all of the devices that allow your computer to communicate with other systems. 
Examples are the network cables and the boxes they connect to, such as routers, 
switches, hubs, wireless access points, and modems.

## Software

Software is the name for the instructions we give to computing devices to tell 
them what to do. Software is "soft" because the instructions are not physical 
entities like hardware devices. The instructions may be stored on physical 
media like a hard disk or USB thumbrive, just as a cooking recipe may be 
written on a piece of paper or printed in a book. However, the recipe 
itself is just a *conceptual model* of how to perform a task. Likewise, a 
software program is essentially just a list of instructions (or a 
*logical model* that issues instructions) for the execution of a set of 
desired computing operations.

### Application Software

As you use a computer, the [software](http://en.wikipedia.org/wiki/Software) 
instructions that are executed on your behalf by the CPU, such as 
[programs](http://en.wikipedia.org/wiki/Computer_program) and 
[apps](http://en.wikipedia.org/wiki/Application_software), are called 
[application software](http://en.wikipedia.org/wiki/Application_software). 
Applications are the programs that serve a specific purpose for a computer 
[user](https://en.wikipedia.org/wiki/User_%28computing%29) or are to be used 
for completing certain tasks, such as exploring the Internet, editing a text 
document, or working with data.

### System Software

#### The Operating System

Applications run within a *overall* software environment called the 
[operating system (OS)](http://en.wikipedia.org/wiki/Operating_system). 

Notable examples are the familiar 
[Microsoft Windows](http://en.wikipedia.org/wiki/Microsoft_Windows), 
[OS X](http://en.wikipedia.org/wiki/OS_X), 
[iOS](http://en.wikipedia.org/wiki/IOS), 
[Android](http://en.wikipedia.org/wiki/Android) and 
[Linux](http://en.wikipedia.org/wiki/Linux) operating systems. 

#### Kernel, Drivers, and Firmware

An operating system also has a 
[kernel](http://en.wikipedia.org/wiki/Kernel_(operating_system)), 
which is the central software program that manages the 
[data](http://en.wikipedia.org/wiki/Data_%28computing%29) exchange between the 
CPU and the other components within a computer. The kernel communicates with 
those components using [device drivers](http://en.wikipedia.org/wiki/Device_driver), 
which are small programs that provide a software 
[interface](http://en.wikipedia.org/wiki/Interface_(computing)) to the hardware. 
Devices that contain integrated circuits of their own may store software in 
[firmware](http://en.wikipedia.org/wiki/Firmware) that allows updates through a 
procedure called [flashing](http://en.wikipedia.org/wiki/Firmware#Flashing). 
The computing system will also contain 
[utility software](http://en.wikipedia.org/wiki/Utility_software) such as 
configuration and management tools, plus shared 
[software libraries](http://en.wikipedia.org/wiki/Library_(computing)) used 
by both applications *and* system software. 

## Data

Data refers to all of the information in the system. It may be stored as raw
(unprocessed) values, or may be in the form of summary tables, 
plots, written documents, photographs, music, videos, or just about any other 
form of information which can be digitized. Data can be *at rest*, in which case 
it will probably be saved in some sort of file or may just be occupying some 
bits of system memory. Data may also be *in motion*, flowing between the 
*components* within a single computer system or between *nodes* of a network. 
As the boundaries of an information system will usually extend beyond computer 
systems, data may also reside on scraps of paper or may only exist in a person's 
mind in the form of a thought or idea, waiting to be communicated to the rest 
of the information system.

----

![linked data](http://linkeddata.org/static/images/lod-datasets_2009-07-14_cropped.png)

<small style="font-size:.5em">
Source: [Linked Data, CC BY-SA 3.0](http://linkeddata.org/)
</small>


## People

People are an integral part of the system. We design it, build it, use it, 
maintain it, and adapt it to new uses. Our systems should serve *us*, not the 
other way around. Every aspect of the system should be designed to serve 
people's needs *optimally*. But our needs vary, and so we need various types 
of systems.

----

![paired programming](http://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Pair_programming_1.jpg/640px-Pair_programming_1.jpg)

<small style="font-size:.5em">
Source: [Ted & Ian, CC BY 2,0, (Wikimedia)](http://commons.wikimedia.org/wiki/File:Pair_programming_1.jpg)
</small>

# Information System Types

Most of us are very familiar with web 
[search](http://en.wikipedia.org/wiki/Web_search_engine) 
[engines](http://en.wikipedia.org/wiki/Search_engine_%28computing%29), 
such as [Google Search](http://en.wikipedia.org/wiki/Google_Search), but many 
also use domain-specific search engines like 
[PubMed](http://en.wikipedia.org/wiki/PubMed).

[Spatial](http://en.wikipedia.org/wiki/Geographic_information_system) 
information systems in the form of 
[Geographic information system (GIS)](http://en.wikipedia.org/wiki/Geographic_information_system) 
have become increasingly important in recent years. 
[ArcGIS](http://en.wikipedia.org/wiki/ArcGIS) has dominated this field, with 
the free and open [QGIS](http://en.wikipedia.org/wiki/QGIS) gaining in 
popularity.

[Global](http://en.wikipedia.org/wiki/Global_information_system) informations 
systems (GLIS) are those either developed or used in a global context. Public 
health examples include global health databases such as the 
[UNHCR](http://www.unhcr.org/pages/49c3646c4d6.html) Statistics & Operational 
Data Portals and the WHO's [Global Health Observatory (GHO)](http://www.who.int/gho/en/).

[Enterprise](http://en.wikipedia.org/wiki/Enterprise_systems) systems are 
comprehensive organization-wide applications used for 
[Enterprise Resource Planning (ERP)](http://en.wikipedia.org/wiki/Enterprise_resource_planning).

[Expert](http://en.wikipedia.org/wiki/Expert_systems) systems support such 
specialty domains as diagnosis, forecasting, and delivery scheduling. They 
use artificial intelligence to apply knowledge and reasoning in order to 
solve complex problems.

[Office](http://en.wikipedia.org/wiki/Office_automation) automation systems 
refer to systems which support the everyday business operations of an oganization. 
[Business Process Automation (BPA)](http://en.wikipedia.org/wiki/Business_process_automation) 
uses these systems to improve efficiency by streamlining routine activities.

[Personal](http://en.wikipedia.org/wiki/Personal_information_manager) information 
systems help people manage their individual communications, 
[calendaring](http://en.wikipedia.org/wiki/Calendaring_software), 
note-taking, diet, and fitness.

<small style="font-size:.5em">
Source: [Wikipedia](http://en.wikipedia.org/wiki/Information_system#Types_of_information_systems), 
[CC BY-SA 3.0](http://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License)
</small>

Software Development Process
========================================================

Developers undertake the 
[software development process](http://en.wikipedia.org/wiki/Software_development_process) 
using several different approaches. Let's take a look at a few of the most popular models.

![Software Development Types](http://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Three_software_development_patterns_mashed_together.svg/507px-Three_software_development_patterns_mashed_together.svg.png)

<small style="font-size:.5em">
Source: [Beao Old waterfall: Paul Smith, Public Domain, (Wikimedia)](http://commons.wikimedia.org/wiki/File:Three_software_development_patterns_mashed_together.svg)
</small>

----

Here is a short list of common development models. We have provided links from each 
of these to relevant Wikipedia pages. You are encouraged to read more about them. We'll 
just go through the list quickly to give you a rough idea of the differences between them.

The [Systems development life cycle (SDLC)](http://en.wikipedia.org/wiki/Systems_development_life_cycle) 
is the classic model. It involves lots of up-front planning and is risk averse.

[Waterfall development](http://en.wikipedia.org/wiki/Waterfall_model) is another 
and "old school" favorite, It's ike the SDLC but does not offer any sort of 
feedback loop.

[Prototyping](http://en.wikipedia.org/wiki/Software_prototyping) is a useful 
technique for many models. Good when a small-scale experiment can prove an idea 
without risking heavy investment. 

[Iterative and incremental development](http://en.wikipedia.org/wiki/Iterative_and_incremental_development) 
might evoke the image of "baby steps" or the notion of "try, try, again". There 
is a central loop, between initial planning and final deployment, which repeats 
as needed. Like prototyping, it is a technique which can be used in other models.

Likewise, [Spiral development](http://en.wikipedia.org/wiki/Spiral_model) is 
meant to address evolving requirements through cycles of repeated analysis and 
design, getting closer and closer to the desired product. The idea is that the 
*entire process* is repeated over and over until you are finally satisfied.

[Rapid application development (RAD)](http://en.wikipedia.org/wiki/Rapid_application_development) 
focusses on development more than up-front planning.

[Agile development](http://en.wikipedia.org/wiki/Agile_software_development) is 
a more evolved form of RAD, with more of a focus on user engagement, and gaining 
wide popularity.

[Code and fix](http://en.wikipedia.org/wiki/Cowboy_coding) sounds like what it 
is -- *cowboy coding* -- what most lone programmers do, and what might seem most 
familiar to you as a scientific researcher. This can be quick for easy projects, 
but can be very inefficient and expensive for larger projects, due to 
insufficient planning.

They are all useful methods, though, some more generally than others. The 
approach you take should depend upon your situation. 

We'll look more closely at three of these right now.

<small style="font-size:.5em">
Source: [Wikipedia](http://en.wikipedia.org/wiki/Software_development_process), 
[CC BY-SA 3.0](http://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License)
</small>

Systems Development Life Cycle
========================================================

Since information systems are so complex, it is very helpful to follow a standard 
development model to make sure you take care of all of the little details without 
missing any. 

![SDLC cycle](http://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/SDLC-Maintenance-Highlighted.png/360px-SDLC-Maintenance-Highlighted.png)

<small style="font-size:.5em">
Source: [Dzonatas, CC BY-SA 3.0, (Wikimedia)](http://commons.wikimedia.org/wiki/File:SDLC-Maintenance-Highlighted.png)
</small>

For years, the standard development model was known as the SDLC, or Systems 
Development Life Cycle. It works well for large, complex, expensive projects, 
but can be scaled down as needed. Many of its phases are used in the other 
models as well. Let's take a quick look at them.

----

[Systems development life cycle](http://en.wikipedia.org/wiki/Systems_development_life_cycle) (SDLC) [phases](http://en.wikipedia.org/wiki/Systems_development_life_cycle#Phases):

- [Planning](http://en.wikipedia.org/wiki/Systems_development_life_cycle#System_investigation) ([feasibility study](http://en.wikipedia.org/wiki/Feasibility_study))
    * There is a focus on careful *planning* before any design or coding takes place. The feasibility study explores your options and gaining approval from stakeholders.
- [Analysis](http://en.wikipedia.org/wiki/Systems_development_life_cycle#System_analysis)
    * *Analysis* includes a detailed study of the current system and clearly identifying requirements before designing a new system.
- [Design](http://en.wikipedia.org/wiki/Systems_development_life_cycle#Design)
    * Once you have thoroughly defined the requirements, you can begin to model the new system.
- [Implementation](http://en.wikipedia.org/wiki/Implementation#Information_Technology_.28IT.29)
    * *Implementation* is where the hardware assembly, software coding, testing, and deployment takes place.
- [Maintenance](http://en.wikipedia.org/wiki/Software_maintenance)
    * *Maintenance* may sound boring, but it is essential to ensure that the project is an overall success.

The main idea is that systems development is a cycle -- a continual process. You 
need to allow for maintenance, updates, and new features. The use and upkeep of 
the system provides feedback which goes into planning the next version.

We will spend more time on the SDLC and its early phases in a separate module.


<small style="font-size:.5em">
Source: [Wikipedia](http://en.wikipedia.org/wiki/Systems_development_life_cycle), [CC BY-SA 3.0](http://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License)
</small>

Waterfall Model
========================================================

A related model is the [Waterfall model](http://en.wikipedia.org/wiki/Waterfall_model). 
It has basically same same steps as the SDLC, but visualizes them as cascading stair-steps 
instead of a circle.

![Waterfall model](http://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Waterfall_model.svg/640px-Waterfall_model.svg.png)

<small style="font-size:.5em">
Source: [Peter Kemp / Paul Smith, CC BY 3.0, (Wikimedia)](http://commons.wikimedia.org/wiki/File:Waterfall_model.svg)
</small>

It's basically similar to the SDLC, but without the feedback loop. There are 
cascading stair-steps, where one phase leads to another and the output of one 
phase becomes sthe input of another. Its came from manufactoring where 
after-the-fact changes are expensive or impossible.

<small style="font-size:.5em">
Source: [Wikipedia](http://en.wikipedia.org/wiki/Waterfall_model), 
[CC BY-SA 3.0](http://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License)
</small>

Agile Model
========================================================

[The Agile model](http://en.wikipedia.org/wiki/Agile_software_development) is a 
newer, but very popular, especially among smaller teams within budding organizations. 
Hallmarks of this model include methods such as pair programming, test-driven 
development, and frequent product releases.

![Agile Software Development methodology](http://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Agile_Software_Development_methodology.jpg/387px-Agile_Software_Development_methodology.jpg)

<small style="font-size:.5em">
Source: [VersionOne, Inc., CC BY-SA 3.0, (Wikimedia)](http://commons.wikimedia.org/wiki/File:Agile_Software_Development_methodology.jpg)
</small>

Smaller teams that can meet regularly, ideally face-to-face. Working in pairs, 
with one person coding and other helping "over the shoulder". After you identify 
use cases, then you write tests and then build the system to pass the tests. By 
developing an automated test and build system, releases can be pushed out quickly 
and more often.

<small style="font-size:.5em">
Source: [Wikipedia](http://en.wikipedia.org/wiki/Agile_software_development), 
[CC BY-SA 3.0](http://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License)
</small>

Transparency
========================================================

Information systems vary in the 
[openness](http://en.wikipedia.org/wiki/Open_system_%28computing%29) of the 
their implementations, in terms of both 
[interoperability](http://en.wikipedia.org/wiki/Interoperability) standards and 
specific design details.

You can have *open* systems and 
[standards](http://en.wikipedia.org/wiki/Open_standard), 
[source](http://en.wikipedia.org/wiki/Open_source)), where the technical 
specifications are publicly available. Different organizations may implement them 
in their own way, yet still maintain [interoperability](http://en.wikipedia.org/wiki/Interoperability) with other implementations.

Or systems be *closed*, or 
[proprietary](http://en.wikipedia.org/wiki/Proprietary_software), where an 
organization keeps the details to itself, making it more difficult for 
competitors to interoperate. While this may provide a competetive advantage for
the producer it contributes to what is called [vendor lock-in](http://en.wikipedia.org/wiki/Vendor_lock-in), where a consumer becomes dependent on the vendor, unable to 
switch to another due to the high costs and disruption.

These interoperability aspects will include 
[file formats](http://en.wikipedia.org/wiki/File_format), 
[communications protocols](http://en.wikipedia.org/wiki/Communications_protocol), 
[security](http://en.wikipedia.org/wiki/Information_security) and 
[encryption](http://en.wikipedia.org/wiki/Encryption).

<small style="font-size:.5em">
Source: [Wikipedia](http://en.wikipedia.org/wiki/Software_standard#Open_v._closed_standards), [CC BY-SA 3.0](http://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License)
</small>

All of those are important when you are collaborating, sharing data and files with others, who might be using different platforms. 

By using transparent systems, you not only increase your ease of communication and collaboration, you also contribute to openess in a broader, social context.

Information [transparency](http://en.wikipedia.org/wiki/Transparency_%28behavior%29) 
supports [openness](http://en.wikipedia.org/wiki/Openness) in:

- [Government](http://en.wikipedia.org/wiki/Open_government)
- [Research](http://en.wikipedia.org/wiki/Open_research)
- [Education](http://en.wikipedia.org/wiki/Open_education)
- [Courseware](http://en.wikipedia.org/wiki/OpenCourseWare)
- [Content](http://en.wikipedia.org/wiki/Open_content)
- [Culture](http://en.wikipedia.org/wiki/Free_culture_movement)

We have provided links to several popular movements which are working to increase 
openness and transparency in various aspects of society. You are encouraged to 
spend some time learning about these trends.

So, if you want the benefits of openness in your work and more freedom to make 
changes, consider building your information infrastructure with open technologies.

<small style="font-size:.5em">
Source: [Wikipedia](http://en.wikipedia.org/wiki/Openness), 
[CC BY-SA 3.0](http://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License)
</small>


Transparency Example: This Course
========================================================

As an example, we have assembled a transparent information system to create and 
support this course.

We have developed the course transparently, using an open content review 
process where students, staff and faculty look at the materials and evaluate 
them to determine wehther or not they best meet the course goals.

We have an open content license, the Creative Commons Attribution Share-Alike [CC BY-SA 4.0 International](http://creativecommons.org/licenses/by-sa/4.0/) license.

We have ppen development where our source is freely and publically available on [GitHub](http://github.com/brianhigh/research-computing)).

We are using open file formats ([Markdown](http://en.wikipedia.org/wiki/Markdown), [HTML](http://en.wikipedia.org/wiki/HTML), [CSS](http://en.wikipedia.org/wiki/Cascading_Style_Sheets), [PNG](http://en.wikipedia.org/wiki/Portable_Network_Graphics), [AsciiDoc](http://en.wikipedia.org/wiki/AsciiDoc), [PDF](http://en.wikipedia.org/wiki/Portable_Document_Format)), open source tools tools ([RStudio](http://en.wikipedia.org/wiki/RStudio), [Git](http://en.wikipedia.org/wiki/Git_%28software%29), [Redmine](http://en.wikipedia.org/wiki/Redmine), [Canvas](http://en.wikipedia.org/wiki/Instructure#Canvas), [Linux](http://en.wikipedia.org/wiki/Linux), [Bash](http://en.wikipedia.org/wiki/Bash_%28Unix_shell%29)) and open communications protocol standards ([HTTP/HTTPS](http://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol)).

As you take part in this course, and provide feedback which will go toward 
improving it, we thank *you* for contributing!

Wrap-Up
========================================================

We hope that this brief overview of Information Systems has given you a more clear picture of the what they are and how they are built. 

For more information, please read the related sections in the [Computing Basics Wiki](https://github.com/brianhigh/computing-basics/wiki), particularly, the pages on [hardware](https://github.com/brianhigh/computing-basics/wiki/hardware) and [software](https://github.com/brianhigh/computing-basics/wiki/software).

Next time we will take a closer look at [requirements gathering](http://en.wikipedia.org/wiki/Requirements_elicitation) and [systems analysis](http://en.wikipedia.org/wiki/Systems_analysis), two of the most important topics of this course.
