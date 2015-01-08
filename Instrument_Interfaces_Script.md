Instrument Interfaces
========================================================

Research Computing and Data Management
-------------------------------------------------------
[http://github.com/brianhigh/research-computing](http://github.com/brianhigh/research-computing)

<small style="font-size:.5em">
This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.<br />
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a>
</small> 

Introduction 
========================================================

Data is waiting to become information. Through instrument interfaces, and data acquisition software you can transform raw data into useful information.

Input/Output (I/O)
========================================================

Computers and devices are equipped with a variety of inputs, and outputs. Peripherals then interface with the computer via those input and output protocols, ports or connectors, and sometimes wireless technology. These interfaces are typically digital, however some, such as audio, are analog.

Peripherals
========================================================

Peripherals are not limited to monitors and keyboards. They also include sensors, and complex instruments. Each of these devices connects via some interface which could be wired or wireless. Be aware though, that a peripheral may be available in more than one interface type. 

Instrument Interfaces
========================================================

An input/output card expands a computer's I/O options. These can range from a basic USB card, to a GPIB controller.

HPIB evolved into the General Purpose Interface Bus, it's a standarized interface bus used by a wide array of scientific instruments. One nice feature of GPIB, is the ease of converting it into another interface technology such as ethernet or USB.

Ethernet is the most common network interface technology. Many modern instruments have native ethernet support, enabling them to be accessed directly from a desk, instead of via a computer located next to the instrument.

Serial and Parallel are both "legacy" interfaces. Their popularity has been in a decline over the past decade, largely being replaced with USB and Ethernet.

USB is a fairly universal bus technology. It's used to connect everything from keyboards to GPIB interface controllers. It's found on every computer made in the past 10 years, making it a safe choice when compatibility is needed.

* http://en.wikipedia.org/wiki/IEEE-488

Remote Data Aquisition
========================================================

Sensors exist for most everything, from temperature and pressure to particulate detection.

Hackable devices have become popular in the past few years. They are designed to make development of custom devices and sensor packages more accessible to a wider user base. In the past, where a commerically built sensor package would be used, a hackable system may be a suitable replacement.

GPS enables you to quickly and accurately determine location, altitude, and time. By integrating GPS into your field data acquisition, you may be able to partially automate location tracking of sensors and samples.

Mobile devices such as smartphones and tablets can be used for field data acquisition. They can be used to scan barcodes on sample containers and record the location (when equipped with GPS), or used to log notes during an interview.

* http://coverclock.blogspot.com/2012/01/remote-sensing-with-arduino.html

Instrument Data Acquisition Software
========================================================

Instruments require acquisition software. It translates the raw data from the instrument into a useful file format, or provides some additional processing capability. Keep in mind, some software and formats are limited to specific brands of instruments. So, be sure the software you wish to use will work with your equipment and other tools.

LabVIEW is a popular package due to it's unique development language, called G. What sets G a part from others, is the graphical development model. Instead of writing pages of code, you graphically build your acquisition system by dragging and dropping objects on the screen.

ChemStation from Agilent is one of many chromatography packages. Like many instrument acquisition packages, it's a vendor specific software package limited to use with Agilent equipment.

Torrent Suite is a modern sequence analysis package. It's available with an open source license, making it free software.

* http://en.wikipedia.org/wiki/LabVIEW
* http://en.wikipedia.org/wiki/Agilent_ChemStation

Summary
========================================================

To review. Peripherals are typically external input and output devices, such as keyboards, and monitors. There are a number of interface technologies on the market, the latest instruments can be purchased with ethernet builtin, while most older devices will rely on GPIB. As for data acquisition, in the field you can use mobile devices like tablets, and GPS to aid your work. And, in the lab, use software like LabVIEW to process data from an instrument.
