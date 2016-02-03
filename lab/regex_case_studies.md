---
title: "Regular Expressions - Case Studies"
author: "Brian High"
date: "1/25/2016"
output: html_document
---

Many applications and programming languages have 
[regular expressions](https://en.wikipedia.org/wiki/Regular_expression) support 
built-in. This is a powerful "wildcard" syntax for text matching and replacement.

We have several examples of using regular expressions for data clean-up.

You can test these examples at [http://regexr.com/](http://regexr.com/) and
[https://regex101.com](https://regex101.com).

Sure, these edits could be made by hand on these small example data
sets. But regular expressions scale up way beyond this -- to unimaginably huge 
data sets. And data cleanup with regular expressions will be easier to document 
than manual edits and more reprodicible.

## CDC Fluoridation by State

Example from: [CDC Fluoridation by State](https://github.com/brianhigh/wa-water-quality/blob/master/cdc-fl-example.md)

Task:

Remove extra characters (footnotes) from the end of state names.

R code:

```
cdcfl$State <- sapply(cdcfl$State, function(x) gsub("f[,gh]*$", "", x))
```

Try at [https://regex101.com](https://regex101.com):

* Find: `/f[,gh]*$/gm`
* Replace:

It is common to use a replacement text of "" (empty string) to perform a
removal of text which matches the search expression.

Data Source: [2012 Water Fluoridation Statistics](http://www.cdc.gov/fluoridation/statistics/2012stats.htm)

Sample Data:

```
Alabamaf
Alaska
Arizona
Arkansas
Californiaf,g,h
Coloradof
Connecticut
Delaware
District of Columbia
```

## Amazon Search

Example from: [Amazon Search](https://github.com/brianhigh/amzn-srch/blob/master/amznsrch.py)

Remove parenthetical text from book title.

Python code:

```
bktitle = re.sub('\s*[(\[].*[)\]]', '', bktitle)
```

Try at [https://regex101.com](https://regex101.com):

* Find: `/\s*[(\[].*[)\]]/gm`
* Replace:

Data source: [Amazon.com](http://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Dstripbooks&field-keywords=python)

Sample data:

```
Python: Learn Python in One Day and Learn It Well. Python for Beginners with Hands-on Project. (Learn Coding Fast with Hands-On Project Book 1) 
Python: Academy - The Stress Free Way To Learning Python Inside & Out - Beginners Guide (FREE Books, Python Programming For Beginners, Python For Informatics) Kindle Edition
Python Pocket Reference (Pocket Reference (O'Reilly)) Fifth Edition Edition
Effective Python: 59 Specific Ways to Write Better Python (Effective Software Development Series) 1st Edition
```

## US Crimes by State

Example from: [US Crimes by State](https://github.com/brianhigh/usarrests_choropleth/blob/master/fbi_us_crimes_by_state.md)

Task:

Clean up column names in header. Convert spaces and dashes to the
underscore (_) character.

R code:

```
header <- gsub(pattern = "[ -]", replacement = "_", x = header[[1]])
```

Try at [https://regex101.com](https://regex101.com):

* Find: `/[ -]/g`
* Replace: `_`

Replacing with a fixed string is almost as simple as replacing with the empty
string. 

Data source: [UCR Data Tool](http://www.ucrdatatool.gov)

Example data:

```
Burglary,Larceny-theft,Motor vehicle theft,Violent Crime rate
```

## US CERT Bulletins: Select only valid bulletins from list

Example from: [US CERT Bulletins](https://github.com/brianhigh/us-cert-bulletins/blob/master/us-cert-bulletins.R)

Task:

Remove the list elements which do not begin with valid bulletin IDs. This way,
we can process the resulting list, item by item, assuming all list elements are
valid bulletins.

R code:

```
bulletins <- bulletins[grepl("^SB\\d{2}-\\d{3,}: ", bulletins)]
```

Try at [https://regex101.com](https://regex101.com):

* Find: `/^SB\d{2}-\d{3,}: /gm`

Data source: [US CERT](https://www.us-cert.gov/ncas/bulletins.xml)

Sample data:

```
US-CERT Bulletins
NA
https://www.us-cert.gov/ncas/bullet
Alerts warn about vulnerabilities,
en
NA
SB16-032: Vulnerability Summary for
SB16-025: Vulnerability Summary for
SB16-018: Vulnerability Summary for
SB16-011: Vulnerability Summary for
SB16-004: Vulnerability Summary for
SB15-363: Vulnerability Summary for
SB15-355: Vulnerability Summary for
SB15-348: Vulnerability Summary for
SB15-341: Vulnerability Summary for
SB15-334: Vulnerability Summary for
```

## US CERT Bulletins: Remove extra characters

Example from: [US CERT Bulletins](https://github.com/brianhigh/us-cert-bulletins/blob/master/us-cert-bulletins.R)

Task:

Remove extra characters after CVE number.


R code:

```
bulletin.df$Info <- gsub("(CVE-\\d{4}-\\d+).*", "\\1", bulletin.df$Info)
```

Try at [https://regex101.com](https://regex101.com):

* Find: `/(CVE-\d{4}-\d+).*/gm`
* Replace: `\1`

Data source: [US CERT](https://www.us-cert.gov/ncas/bulletins.xml)

Sample data:

```
CVE-2015-6980CONFIRMAPPLE
CVE-2015-8612MISCCONFIRMCONFIRMMLISTMLISTDEBIAN
CVE-2015-8668BUGTRAQMISC
CVE-2015-8765CERT-VNCONFIRM
CVE-2015-8769CONFIRMBID
CVE-2016-0002MSMS
CVE-2016-0034MS
CVE-2016-0035MS
CVE-2016-0933CONFIRM
CVE-2016-0947CONFIRM
CVE-2016-1499MISCCONFIRM
CVE-2015-6117MS
CVE-2015-7024CONFIRMAPPLE
CVE-2015-7399CONFIRMAIXAPAR
CVE-2015-7706CONFIRMBUGTRAQFULLDISCMISC
CVE-2015-7759CONFIRMSECTRACK
CVE-2015-8331CONFIRM
CVE-2016-0006MS
```

## US CERT Bulletins: Abbreviation

Example from: [US CERT Bulletins](https://github.com/brianhigh/us-cert-bulletins/blob/master/us-cert-bulletins.R)


Task:

Abbreviate the Product variable for plot labels: use first 3 "words".

R code:

```
product.df$Product <- gsub("((?:\\w+[:_ -]+){3}).*", "\\1", product.df$Product))
```

* Find: `/((?:\w+[:_ -]+){3}).*/gm`
* Replace: `\1`

Data source: [US CERT](https://www.us-cert.gov/ncas/bulletins.xml)

Sample data:

```
Adobe: Acrobat
Apache: Subversion
Apple: Mac Os X
Dell: Pre-Boot Authentication Driver
F5: Big-Ip Access Policy Manager
Huawei: Mate 7 Firmware
Microsoft: Windows 10
Microsoft: Excel For Mac
Microsoft: Jscript
Microsoft: Silverlight
Field Group Project: Field Group
Zarafa: Zarafa Collaboration Platform
```

## Border Wait Times

Example from: [Border Wait Times](https://github.com/brianhigh/border-wait-time/blob/master/R/bwt2.R)

Task:

Split fields that had been inadvertently combined with previous XML import step.

R code:

```
dat <- gsub("([A-Za-z])(no|[0-9])", "\\1,\\2", dat)
```

Try at [https://regex101.com](https://regex101.com):

* Find: `/(ay|T)(no|\d)/gm`
* Replace: `\1,\2`

Data source: [US Customs and Border Protection](http://apps.cbp.gov/bwt/display_rss_port.asp?port=250401)

Sample data:

```
San Ysidro
24 hrs/day1/23/2016
N/A
N/A
N/A
25
At 2:00 pm PST65 min delay10 lane(s) open
At 2:00 pm PST60 min delay7 lane(s) open
At 2:00 pm PST15 min delay8 lane(s) open
15
At 2:00 pm PST10 min delay9 lane(s) open
At 2:00 pm PSTno delay5 lane(s) open
```

As you can see, we captured two matching subpatterns to use for replacement.

Note: You might think you could just replace "T" with "T," and "ay" with "ay,",
but this would also separate strings like "Tecate" and "Otay Mesa". Try it.

How would you remove the extra text like " min delay" and " lane(s) open"? You 
might also want to convert "no delay" to 0. 

How would you convert the "am" and "pm" times to 24-hour time?

## TRS Geocoding

Example from: [TRS Geocoding](https://github.com/brianhigh/trsgeocode/blob/master/trsgeocode.R)

R code:

```
## Function trs2blm converts TRS code for WA township sections to BLM API format
trs2blm <- function(trscode) {
    # Assume: state=WA, primary meridian=33, township direction=N
    # Input format: T#R#[EW]#
    # Where T# is Township (Tier) number, R# is Range number,
    # [EW] is range direction and the final # is Section number.
    # Output format: WA,33,#,0,N,#,0,[EW]#,,0 (using TRS #s from above)
    # Example input: T06R32E1
    # Example output: WA,33,06,0,N,32,0,E,1,,0
    # See: http://www.geocommunicator.gov/GeoComm/services.htm#Data
    # And: https://en.wikipedia.org/wiki/Public_Land_Survey_System
    
    regexp <- "^T(\\d+)R(\\d+)([EW]+)(\\d+)$"
    match <- grep(regexp, trscode)
    
    if (length(match) > 0 && match ## 1) {
        return(gsub(regexp, "WA,33,\\1,0,N,\\2,0,\\3,\\4,,0", trscode))
    } else {
        return(NA)
    }
}
```

Try at [https://regex101.com](https://regex101.com):

* Find: `/^T(\d+)R(\d+)([EW]+)(\d+)$/gm`
* Replace: `WA,33,\1,0,N,\2,0,\3,\4,,0`

Data source: [WSDA 2014 Crop Distribution](https://fortress.wa.gov/agr/gis/wsdagis/rest/services/NRAS/2014CropDistribution/MapServer/1)

Sample data:

```
T05R01E31
T05R01E40
T05R01W10
T05R01W11
T30R04W9
T30R05E32a
T30R05W12
T30R24E36
T30R25E25
T30R25E31
T34R03E5
T34R03E6b
T34R03E6d
```

Here we captured four substrings to use for replacement. The output
string looks very different from the original. We use it to query the
BLM geocoding API.

You can geocode your converted TRS codes by using this link:

http://www.geocommunicator.gov/TownshipGeoCoder/TownshipGeoCoder.asmx/GetLatLon?TRS=

... and adding your string (like this: WA,33,05,0,N,01,0,E,31,,0) to the end:

http://www.geocommunicator.gov/TownshipGeoCoder/TownshipGeoCoder.asmx/GetLatLon?TRS=WA,33,05,0,N,01,0,E,31,,0
    
You can see what [location data](GetLatLon?TRS=WA,33,05,0,N,01,0,E,31,,0) 
this example will give you.

## Panopto Linkmaker

Example from: [Panopto Link Maker](https://github.com/brianhigh/panopto-linkmaker)

This function validates a URL as a Panopto video link. We just need to match
or not match. We do not need to replace.

JavaScript code:

```
function validate(url) {
    // Check that input url matches regex pattern for valid url
    var pattern = /^https?:\/\/[\w:/.-]+\/Pages\/Viewer\.aspx\?id=[0-9a-f-]+$/;
    
    if (pattern.test(url) !## true) {
        alert("Link is not valid!");
        return false;
    }
    else {
        return true
    }
}
```

Try at [https://regex101.com](https://regex101.com):

* Find: `/https?:\/\/[\w:\/.-]+\/Pages\/Viewer\.aspx\?id=[0-9a-f-]+$/gm`


Example data:

```
https://panopto.uw.edu/Panopto/Pages/Viewer.aspx?id=2cbd859c-05da-419a-a844-70b933892bf6
https://canvas.uw.edu/courses/1020726/files/33768973/download
https://panopto.uw.edu/Panopto/Pages/Viewer.aspx?id=9c8dc69e-11c7-49ea-8f68-b1d397d0f158
https://www.youtube.com/watch?v=QxpOKbv-KQU
https://uw.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx?id=2cbd859c-05da-419a-a844-70b933892bf6
```

## Whois Demo

Example from: [Whois Demo](https://github.com/brianhigh/visual-tracerouter/blob/master/whois-demo.md)

Change the delimiter, etc.

```
whois.data <- gsub(pattern = ":[[:space:]]+", replacement = "|", x = whois.data)
```

Try at [https://regex101.com](https://regex101.com):

* Find: /:\s+/g
* Replace: `|`

Use the vertical bar symbol (|) as the delimiter instead of colon-and-spaces.

Data source: [IANA](http://www.iana.org/whois?q=who.int)

Example data:

```
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

## Visual Tracerouter

Example from: [Visual Tracerouter](https://github.com/brianhigh/visual-tracerouter/blob/master/visual-traceroute.R)

Task:

Clean up address if it is actually a url instead of a domain name.

R code:

```
addr <- gsub(pattern = "^(?:[a-zA-Z]*:\\/\\/)?([^\\/:]+).*",
        replacement = "\\1", addr)
```

Try at [https://regex101.com](https://regex101.com):

* Find: `/^(?:[a-zA-Z]*:\/\/)?([^\/:\s]+).*/gm`
* Replace: `\1`

Replacing with text captured from the search expression is accomplished
with the use of parenthesis in the "find" string and a numbered variable
in the "replace" string.  Here, \\1 would normally be entered as \1 or $1
in most other applications. R requires that the \ in \1 to be "escaped" with
another \. We will see this a lot when using regular expressions with R.

Example data:

```
www.gov.bm
http://www.nsa.gov
opm.gov.jm
https://www.redcross.org
http://www.bbc.com/earth/uk
https://www.cdc.gov/zika/index.html
www.cubagob.cu
www.gov.bb
http://www.gov.za/latest-speeches
```

## Visual Tracerouter

Example from: [Visual-Tracerouter](https://github.com/brianhigh/visual-tracerouter/blob/master/visual-traceroute.R)

Task:

Extract round-trip-times and IP addresses from the output of the `tracert` command.

R code: (Modified from original to simplify and to run independently of other code.)

```
library(stringr)

addr <- 'who.int'
pattern <- "(?:<?[0-9.]+ ms[ *]+)*(?:[0-9]{1,3}\\.){3}[0-9]{1,3}"

# Windows uses a `tracert` command to trace internet routes.
traceroute <- paste(
    'cmd /c "tracert -d -h 15', addr, '>', "route.txt", '"')
route.string <- paste(readLines("route.txt"), collapse=" ")
route <- unlist(str_extract_all(route.string, pattern))[-1]

library(gsubfn)
rtt <- strapply(route, "([0-9.]+) ms", as.numeric)
addrs <- strapply(route, "(?:[0-9]{1,3}\\.){3}[0-9]{1,3}")
route <- data.frame(unlist(addrs), sapply(rtt, mean), 
                    stringsAsFactors=FALSE)
names(route) <- c("addr", "mean_rtt")
route <- route[complete.cases(route), ]
```

The regex used in the example below was inspired by the code above, but
was heavily modified and simplified for the purposes of the example.

Try at [https://regex101.com](https://regex101.com):

* Find: `/<?(\d+) ms\s+<?(\d+) ms\s+<?(\d+) ms\s+(\d.{7,})/g`
* Replace: `\1 \2 \3 \4`

Match the measurements of round-trip-time (rtt) and IP address (addr).

Example data:

```
Tracing route to who.int [158.232.12.119]
over a maximum of 15 hops:

  1    <1 ms    <1 ms    <1 ms  128.95.230.102
  2    <1 ms    <1 ms    <1 ms  10.132.1.73
  3    <1 ms    <1 ms    <1 ms  10.132.1.75
  4    <1 ms    <1 ms    <1 ms  209.124.181.134
  5     1 ms    <1 ms    <1 ms  64.57.28.53
  6    16 ms    16 ms    16 ms  198.71.45.24
  7    37 ms    36 ms    36 ms  198.71.45.18
  8    47 ms    48 ms    48 ms  198.71.45.14
  9    48 ms    48 ms    48 ms  198.71.46.34
 10   159 ms   153 ms   153 ms  192.91.246.110
 11   156 ms   153 ms   153 ms  192.65.184.58
 12   153 ms   153 ms   153 ms  192.65.184.34
 13     *        *        *     Request timed out.
 14     *        *        *     Request timed out.
 15     *        *        *     Request timed out.

Trace complete.
```

## AIS Navigation Messages

This example demonstrates how complex regular expressions may be documented
in-line with a comment describing each pattern element.

The data was recorded using a VHF marine radio to capture the digital broadcasts.
Some data may have been garbled. These regular expressions were used to validate 
the data and throw out any corrupted data. Also, only certain broadcasts types
were of interest. So, data of any other type were also excluded.

Task:

Match valid [AIS navigation messages](http://www.navcen.uscg.gov/?pageName=AISMessages).

Python code: (Modified from original to simplify and to run independently of other code.)

```
#!/usr/bin/python
# -*- coding: utf-8 -*-

# Given lines of input, only print lines to ouput which match the pattern(s).

import sys
import re

# Define position report pattern
ais_pos_rpt_re_str = \
    """
    ^                                      # beginning of line
    \d{9};                                 #  1:  Nine digits (MMSI num.)
    [^;]+;                                 #  2:  nav. status (freeform)
    \d{3}°';                               #  3:  three digits, deg. min.
    (\s0\.[0-9]|\s[1-9]\.\d|\d\d\.\d) kt;  #  4:  spc 0.0 to 99.9 kt   
    \d{1,3}\.\d{6} [NS];                   #  5:  ###.###### N/S lat.
    \d{1,3}\.\d{6} [EW];                   #  6:  ###.###### E/W long.
    \s{0,2}\d{1,3}\.\d°;                   #  7:  (spc) #.# to ###.# deg.
    \d{3}°;                                #  8:  ### deg.
    \d{2} s;                               #  9:  ## sec.
    \s\d{6}\s\d{6};                        #  10: spc ###### spc ######
    [^;]+                                  #  11: freeform (msg type code)
    $                                      # end of line
    """  # Regular expression string defines valid position report

# Define static report pattern
ais_stc_rpt_re_str = \
    """
    ^                                      # beginning of line
    \d{9};                                 #  1:  Nine digits (MMSI num.)
    \([\d\s]{7}\);                         #  2:  Seven digits in () (IMO)
    \([A-Z0-9\s]{7}\);                     #  3:  Seven AlphaNum in () (Call)
    .{20};                                 #  4:  20 freeform chars (Ves. Name)
    .{11};                                 #  5:  11 freeform chars (Type)
    ->.{33};                               #  6:  -> 33 freeform chars (Dest.)
    \d+\s\d+\s[\d.]+\s\d+\s\d+;            #  7:  Length Width Draught D4 D5
    \s\d{6}\s\d{6};                        #  8:  spc ###### spc ######
    serial\#1\(B\)\[5\][^;]*               #  9:  AIS Msg Type 5 code
    $                                      # end of line
    """  # Regular expression string defines valid static report

# Compile patterns
p1 = re.compile(ais_pos_rpt_re_str, re.VERBOSE)
p2 = re.compile(ais_stc_rpt_re_str, re.VERBOSE)

# Print out test data that matches one or both patterns
try:
    for line in sys.stdin:
        if p1.match(line) or p2.match(line):
            sys.stdout.write(line)
except IOError:
    # code from: http://stackoverflow.com/questions/15793886
    # stdout is closed, no point in continuing
    # Attempt to close them explicitly to prevent cleanup problems:
    try:
        sys.stdout.close()
    except IOError:
        pass
    try:
        sys.stderr.close()
    except IOError:
        pass
```

Sample data:

```
366955010;moored    ;128°'; 0.0kt;47.629150N;122.392022W;207.7°;511°;06s; 090330 000009;serial#1(B)[3]
366173000;under way ;000°'; 0.0kt;47.645957N;122.339948W; 20.4°;225°;05s; 090330 000009;serial#1(B)[1]
367090880;(0000000);(WDC8654);SEGUE               ;Vessel:ples;-> ***00 24:60 ELLIOTT BAY         ;17 6 0.0 10 3; 090330 000011;serial#1(B)[5]
367705000;sailing   ;000°'; 0.0kt;47.667372N;122.390802W;256.7°;091°;08s; 090330 000011;serial#1(B)[1]
369500000;under way ;128°'; 0.1kt;47.572558N;122.355793W;267.6°;511°;09s; 090330 000011;serial#1(B)[1]
000285084;unknown   ;128°'; 0.0kt;47.658838N;122.379432W;353.8°;511°;09s; 090330 000011;serial#1(B)[1]
366709780;under way ;000°'; 0.0kt;47.794837N;122.494253W;304.9°;301°;10s; 090330 000012;serial#1(B)[1]
003669701;Interrogation;  367125320 msg:0 slot:0; 090330 000012;serial#1(B)[15]
366433000;fishing   ;000°'; unk. ;47.648390N;122.331203W; unk. ;159°;12s; 090330 000016;serial#1(B)[1]
369001000;under way ;128°'; 0.0kt;47.633057N;122.328722W;257.4°;511°;15s; 090330 000016;serial#1(B)[1]
303072000;sailing   ;128°'; 0.0kt;47.666545N;122.389553W;354.2°;511°;13s; 090330 000017;serial#1(B)[1]
003669987;Data link management;
  offset:1014 slots:5 timeout:7 increment:225;
  offset:552 slots:11 timeout:5 increment:435; 090330 000043;serial#1(B)[20]
003669987;Interrogation;  367275000 msg:0 slot:0; 090330 000017;serial#1(B)[15]
366749710;under way ;000°';18.7kt;47.602342N;122.477577W;279.7°;282°;15s; 090330 000017;serial#1(B)[1]
368293000;(4368293);(KRCT   );ALASKA OCEAN        ;Vessel:fish;-> Mar29 13:00 SEATTLE             ;124 20 20.0 41 11; 090330 000131;serial#1(B)[5]
369500000;under way ;128°'; 1.5kt;47.572480N;122.355593W;124.1°;511°;29s; 090330 000132;serial#1(B)[1]
367705000;sailing   ;000°'; 0.0kt;47.667363N;122.390798W;219.3°;091°;29s; 090330 000132;serial#1(B)[1]
367083650;under way ;128°'; 0.0kt;47.543038N;122.336678W; 17.6°;511°;30s; 090330 000133;serial#1(B)[1]
366749710;under way ;000°';16.3kt;47.604543N;122.485827W;312.3°;314°;31s; 090330 000133;serial#1(B)[3]
366773110;(0000000);(WK7107 );KLAHOWYA WSF        ;Passenger  ;-> ***00 24:60 WSF TERMINAL        ;120 30 5.0 30 15; 090330 000133;serial#1(B)[5]
003669987;Base station 2009-03-30;00:01:30;47.549167N;122.785548W;fix 7; 090330 000133;serial#1(B)[4]
366940480;under way ;128°'; 0.0kt;47.666373N;122.389378W; 56.8°;511°;31s; 090330 000134;serial#1(B)[1]
```

When sample data is saved as `sample_data.txt` and the sample code is saved
as `regtest.py`, you can run the test (from Bash, DOS, etc.) as:

```
python regtest.py < sample_data.txt 
```

You need to make sure the data file is "utf-8" encoded. You can set this with
the `iconv` command. If you don't, the degree symbol might not match properly.

You can check with `file` and then run `iconv` as needed to do change the 
encoding (from Bash) with:

```
file sample_data_raw.txt
> sample_data_raw.txt: ISO-8859 text

iconv -f "ISO-8859-1" -t "utf-8" -o sample_data.txt sample_data_raw.txt

file sample_data.txt
> sample_data.txt: UTF-8 Unicode text
```

Only the valid report message types should be printed to the screen.

Try at [https://regex101.com](https://regex101.com):

* Find: 
```
/
    ^                                      # beginning of line
    \d{9};                                 #  1:  Nine digits (MMSI num.)
    [^;]+;                                 #  2:  nav. status (freeform)
    \d{3}°';                               #  3:  three digits, deg. min.
    (\s0\.[0-9]|\s[1-9]\.\d|\d\d\.\d) kt;  #  4:  spc 0.0 to 99.9 kt   
    \d{1,3}\.\d{6} [NS];                   #  5:  ###.###### N/S lat.
    \d{1,3}\.\d{6} [EW];                   #  6:  ###.###### E/W long.
    \s{0,2}\d{1,3}\.\d°;                   #  7:  (spc) #.# to ###.# deg.
    \d{3}°;                                #  8:  ### deg.
    \d{2} s;                               #  9:  ## sec.
    \s\d{6}\s\d{6};                        #  10: spc ###### spc ######
    [^;]+                                  #  11: freeform (msg type code)
    $
/gmx   
```

Or:

* Find: 
```
/
    ^                                      # beginning of line
    \d{9};                                 #  1:  Nine digits (MMSI num.)
    \([\d\s]{7}\);                         #  2:  Seven digits in () (IMO)
    \([A-Z0-9\s]{7}\);                     #  3:  Seven AlphaNum in () (Call)
    .{20};                                 #  4:  20 freeform chars (Ves. Name)
    .{11};                                 #  5:  11 freeform chars (Type)
    ->.{33};                               #  6:  -> 33 freeform chars (Dest.)
    \d+\s\d+\s[\d.]+\s\d+\s\d+;            #  7:  Length Width Draught D4 D5
    \s\d{6}\s\d{6};                        #  8:  spc ###### spc ######
    serial\#1\(B\)\[5\][^;]*               #  9:  AIS Msg Type 5 code
    $
/gmx
```