Systems Analysis
========================================================

Research Computing and Data Management
-------------------------------------------------------
[http://github.com/brianhigh/research-computing](http://github.com/brianhigh/research-computing)

<small style="font-size:.7em">
This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.<br />
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a>
</small>

Systems Development Life Cycle
========================================================

Systems analysis is an important part of an overall approach to *systems design*.

The life of an information system follows a cycle. The classic development model is called
the Systems Development Life Cycle, or SDLC.

Planning Phase
--------------

The [Planning](http://en.wikipedia.org/wiki/Systems_development_life_cycle#System_investigation)  phase defines the primary issue (*problem* or *goal*) and performs a [feasibility study](http://en.wikipedia.org/wiki/Feasibility_study). Here, you clarify the project scope, compare your best options, and come up with a plan.

Analysis Phase
--------------

The [Analysis](http://en.wikipedia.org/wiki/Systems_development_life_cycle#System_analysis) phase focusses on the issue, defined previously, and studies its role in the current (or proposed) 
system. The system is explored, piece by piece, in light of the project goals, to determine system requirements.

Design Phase
------------

In the [Design](http://en.wikipedia.org/wiki/Systems_development_life_cycle#Design) phase, a detailed model of the proposed system is created. Various components or modules address each of the requirements identified earlier.

Implementation Phase
--------------------

During the [Implementation](http://en.wikipedia.org/wiki/Implementation#Information_Technology_.28IT.29) phase, a working system is built from the design and put into use.

Maintenance Phase
--------------------

The [Maintenance](http://en.wikipedia.org/wiki/Software_maintenance) includes ongoing 
updates and evaluation. As changes are needed, the cycle repeats with more planning, analysis, and so on.

<small style="font-size:.7em">
Source: [Wikipedia](http://en.wikipedia.org/wiki/Systems_development_life_cycle#Phases), [CC BY-SA 3.0](http://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License)
</small>

We will take a closer look at the **[systems analysis](http://en.wikipedia.org/wiki/Systems_analysis)** phase next.


----

![SDLC cycle](http://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/SDLC-Maintenance-Highlighted.png/360px-SDLC-Maintenance-Highlighted.png)

<small style="font-size:.7em">
Source: [Dzonatas, CC BY-SA 3.0, (Wikimedia)](http://commons.wikimedia.org/wiki/File:SDLC-Maintenance-Highlighted.png)
</small>

What will you need?
========================================================

Essentially, in *[Systems analysis](http://en.wikipedia.org/wiki/Systems_analysis)* we answer the question, "*What will you need* to reach your goal?" In other words, **"What are your requirements?"**

A **primary goal** of this course is to help you develop your skills in *[requirements analysis](http://en.wikipedia.org/wiki/Requirements_analysis)*.

[Systems analysis](http://en.wikipedia.org/wiki/Systems_analysis) helps you **clarify your project needs** and **plan ahead** in order to *obtain and allocate* **critical resources**.

The main idea here is ...

> If you don't *know* what you *need*, how can you *ask* for it?

Systems Analysis
========================================================

After completing an initial [feasibility study](http://en.wikipedia.org/wiki/Feasibility_study) to "determine if creating a new or improved system is a viable solution", proposing the project, and gaining approval from [stakeholders](http://en.wikipedia.org/wiki/Project_stakeholder), you may then conduct a [systems analysis](http://en.wikipedia.org/wiki/Systems_analysis). 

[Systems analysis](http://en.wikipedia.org/wiki/Systems_analysis) will involve "[breaking down](http://en.wikipedia.org/wiki/Work_breakdown_structure) the system in different pieces to analyze the situation, **analyzing project goals**, breaking down what needs to be created and attempting to **engage users** so that **[definite requirements](http://en.wikipedia.org/wiki/Requirements_analysis)** can be defined."

<small style="font-size:.7em">
Source: [Wikipedia](http://en.wikipedia.org/wiki/Systems_development_life_cycle#System_investigation), [CC BY-SA 3.0](http://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License)
</small>

Systems Analysis Definition
========================================================

So, what, exactly, *is* "Systems Analysis"?

*Analysis* means "to take apart"<sup style="font-size:.7em">1</sup>

Lonnie D. Bentley, author of *Systems Analysis and Design for the Global Enterprise*, writes:

>[Systems analysis](http://en.wikipedia.org/wiki/Systems_analysis) is a problem solving technique that decomposes a system into its component pieces for the purpose of the studying how well those component parts work and interact to accomplish their purpose.<sup style="font-size:.7em">2</sup>

We will accomplish this analysis by working through a series of [five phases](http://en.wikipedia.org/wiki/Systems_analysis#Information_technology).

<small style="font-size:.7em">
1. Source: [Wikipedia](http://en.wikipedia.org/wiki/Systems_analysis), [CC BY-SA 3.0](http://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License)
</small>
<small style="font-size:.7em">
2. Source: *Systems Analysis and Design for the Global Enterprise 7th ed.*, by Lonnie D. Bentley, as quoted by [Wikipedia](http://en.wikipedia.org/wiki/Systems_analysis)
</small>

Systems Analysis Phases
========================================================

Systems Analysis has its own series of phases. We will look at each of these one by one.

![systems analysis phases](./images/systems_analysis_01.png)

----

During [Scope definition](http://en.wikipedia.org/wiki/Scope_%28project_management%29), we establish our system boundaries. In our [Problem analysis](http://en.wikipedia.org/wiki/Problem_statement) phase, we identify the symptoms and causes. Our [Requirements analysis](http://en.wikipedia.org/wiki/Requirements_analysis) determines our system goals. The [Logical design](http://en.wikipedia.org/wiki/Systems_design#Logical_design) phase models relationships within the system. And our [Decision analysis](http://en.wikipedia.org/wiki/Decision_analysis) evaluates the various alternatives.

<small style="font-size:.7em">
Source: [Wikipedia](http://en.wikipedia.org/wiki/Systems_analysis#Information_technology), [CC BY-SA 3.0](http://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License)
</small>

Scope Definition
========================================================

So, do we mean by *scope*?

> **Scope** involves *getting information* required to start a project, and the *features* the product would have that would meet its *stakeholders requirements*.

Put another way, *project* scope defines the *work to be done* whereas *product* scope is concerned with the *desired features and functions*.

By being careful to define scope *early on*, we can be more watchful for *scope creep*.

> **Scope creep** is [...] the *incremental expansion* of the scope of a project [...], while nevertheless *failing to adjust* schedule and budget.

<small style="font-size:.7em">
Source: [Wikipedia](http://en.wikipedia.org/wiki/Scope_%28project_management%29), [CC BY-SA 3.0](http://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License)
</small>

Problem Analysis
========================================================

Problem analysis is critical. When we say, *problem*, we can also think *goal* or *research question*. If you don't get this right, you can waste a lot of time and money solving the *wrong* problem.

We can summarize the key points of problem analysis (with some help from Jenette Nagy of Kansas University) as:

> Define and clarify the problem

*What exactly are we trying to solve?*

> Determine the problem's importance

*How much does it matter?*

> Assess the feasibility of solving the problem

*Do we have the resources we need?*

> Consider any negative impacts (unintended consequences)

*What could go wrong?*

> Prioritize problems to solve (bottlenecks? low-hanging fruit?)

*What are the most critical issues?*

> Answer: *what*, *why*, *who*, *when*, *where*, and *how much*?

*Drill down into the problem with all kinds of questions to expose dependencies.*

> Find **causes** (especially [root cause](http://en.wikipedia.org/wiki/Root_cause_analysis)) and **symptoms** (effects)

*Are these causes or just symptoms?*

<small style="font-size:.7em">
Source: [Jenette Nagy, Kansas University, CC BY-NC-SA 3.0 US](http://ctb.ku.edu/en/table-of-contents/analyze/analyze-community-problems-and-solutions/define-analyze-problem/main)
</small>

Requirements Analysis
========================================================

* [Elicit, Analyze, and Record (EAR)](http://en.wikipedia.org/wiki/Requirements_analysis#Overview):
  * System and project [requirements](http://en.wikipedia.org/wiki/Requirements_analysis)
* Further elucidate:
  * [Measurable goals](http://en.wikipedia.org/wiki/Requirements_analysis#Measurable_goals)
  * Mission objectives.
* Output: [Requirements specification](http://en.wikipedia.org/wiki/Requirements_specification)

<small style="font-size:.7em">
Source: [Wikipedia](http://en.wikipedia.org/wiki/Requirements_analysis), [CC BY-SA 3.0](http://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License)
</small>

----

[Types of requirements](http://en.wikipedia.org/wiki/Requirements_analysis#Types_of_Requirements):
* Operational
* [Functional](http://en.wikipedia.org/wiki/Functional_requirement)
* [Non-functional](http://en.wikipedia.org/wiki/Non-functional_requirement)
* [Architectural](http://en.wikipedia.org/wiki/Systems_architecture)
* Behavioral
* Performance
* (Others...)

Requirements Modeling: Example
========================================================


**Survey Data System**

Behavioral requirements ...

* **Researcher** *uploads survey*.
* **Subject** *takes survey*.
* **Subject** *uploads results*.
* **Researcher** *downloads results*.

... in **role** *goal* format.

----

[Use Case Diagram](http://en.wikipedia.org/wiki/Use_case)

![research survey data system](https://raw.githubusercontent.com/brianhigh/data-workshop/master/images/research_survey_data_system.png)

<small style="font-size:.7em">
Source: [Brian High, Github](https://github.com/brianhigh/data-workshop/blob/master/images/research_survey_data_system.png), [Public Domain, CC0 1.0](http://creativecommons.org/publicdomain/zero/1.0/)
</small>

Logical Design
========================================================


* Abstract representation
* Data flows, entities, and relationships
* Inputs and outputs
* Graphical modeling:
  * [Data Flow Diagram (DFD)](http://en.wikipedia.org/wiki/Data_flow_diagram)
  * [Entity Relationship Diagram (ERD)](http://en.wikipedia.org/wiki/Entity%E2%80%93relationship_model)

<small style="font-size:.7em">
Source: [Wikipedia](http://en.wikipedia.org/wiki/Systems_design#Logical_design), [CC BY-SA 3.0](http://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License)
</small>

----

[Entity Relationship Diagram](http://en.wikipedia.org/wiki/Entity%E2%80%93relationship_model)

* **Artist** *performs song*

![artist performs song](http://upload.wikimedia.org/wikipedia/commons/thumb/9/91/ERD-artist-performs-song.svg/640px-ERD-artist-performs-song.svg.png)

<small style="font-size:.7em">
Source: [Bignose, Wikimedia](http://commons.wikimedia.org/wiki/File:ERD-artist-performs-song.svg), [Public Domain](http://en.wikipedia.org/wiki/Public_domain)
</small>

Logical Design: Diagrams
========================================================

Several examples of these diagrams can be found in [Systems Analysis and Design](https://github.com/brianhigh/data-workshop/blob/master/Systems_Analysis_and_Design.md).

This [tutorial](https://github.com/brianhigh/data-workshop/blob/master/Systems_Analysis_and_Design.md)<sup style="font-size:.7em">1</sup> ([PDF](https://canvas.uw.edu/courses/951183/modules/items/5479924), [HTML](https://canvas.uw.edu/courses/951183/modules/items/5479962), [MP4](https://canvas.uw.edu/courses/951183/modules/items/5479995)) provides several examples from a fictitious public health research study.

<small style="font-size:.7em">
1. See also: *[Data Management](https://canvas.uw.edu/courses/951183/modules)*, UW Canvas.
</small>

----

![DFD and ERD](https://raw.githubusercontent.com/brianhigh/data-workshop/master/images/analysis_and_design.png)

<small style="font-size:.7em">
Source: [Brian High, Github](https://github.com/brianhigh/data-workshop/blob/master/images/analysis_and_design.png), [Public Domain, CC0 1.0](http://creativecommons.org/publicdomain/zero/1.0/)
</small>

Decision Analysis
========================================================


[Decision analysis](http://en.wikipedia.org/wiki/Decision_analysis) involves ...
* Presentation of alternatives:
  * What to buy or build?
* Evaluation of alternatives:
  * Assess the "pros and cons"
  * Compare against requirements
* Make a recommendation to stakeholders
* Get a decision from stakeholders

<small style="font-size:.7em">
Source: [Wikipedia](http://en.wikipedia.org/wiki/Decision_analysis), [CC BY-SA 3.0](http://en.wikipedia.org/wiki/Wikipedia:Text_of_Creative_Commons_Attribution-ShareAlike_3.0_Unported_License)
</small>
