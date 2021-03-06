# OpenLawOffice

Status: Development

## What?
OpenLawOffice is a web based system for management of law firm assets including matters, billing and tasking.

## Why?

### Why the project?
The only task more difficult than managing a law office without software dedicated to that purpose is swallowing the pricetag hanging on the existing systems.  Worse yet, some public sector lawyers are overworked and underpaid.  OpenLawOffice will step into this field to provide the software to assist these lawyers and support staff to help prevent errors, manage tasks and allow the directors of the departments to put more of the budget in their employee's pockets.  OpenLawOffice is open source software that is freely available to anyone, period.  

### Why your involvement?
It's the new Pro-Bono!  Legal services are expensive, no question.  One large factor in the cost to market for these services is technology.  Almost all aspects of a law department can now be virtualized using technology.  We simply mean to increase the availability of reduced total cost of ownership technology for law office management so these firms and departments can deliver the same or higher quality services to their clients at a lower total cost.


## How?

### Will you stay afloat offering free software?
Contributions and value added services.  For instance, who better to perform your site analysis, setup your servers and bring OpenLawOffice active in your environment than the people writing the program?  As we freely give our time and intellectual property to the development of OpenLawOffice, we simply ask that your installation and support issues get directed to us so we can keep the lights on for the project.

## Can We (I) Help?
Absolutely!  There is much to be done.  If you would like to assist, simply contact Lucas Nodine [github](https://github.com/lucasnodine) or [linkedin](http://www.linkedin.com/profile/view?id=15557533) or if you prefer non-social media sites, please visit the [Nodine Legal](http://www.nodinelegal.com/) website for multiple direct contact methods.  Please only contact us if you are serious about contributing to the project.

## Installation
### Step 1 - Prerequisites
The below are currently considered the prerequisites and this software is only tested within the Visual Studio (R) 2013 IDE with Postgres 9.2 all on Windows 8.

* .NET Framework v4.5
* MVC 5.2.3
* Postgresql

### Step 2 - Database
Create a database within your postgresql server.  It doesn't matter what you call it, you can change the name in the web.config disucssed later.

### Step 3 - Webapp (web.config)
* Modify your connection string
* Modify the elements of the openLawOffice section

That should be all you must do in order to configure the system for installation.

### Step 4 - Installation
Launch the site and run the web-based installation.

### Step 5 - Let me know
If you find problems with installation, file an issue and let me know.


## Quick Feature List
Below is a list of some of the more commonly used features.

### Matter Management
* Jurisdiction, Case Number
* Lead Attorney
* Who is billed for the matter
* Billing rates for the matter (based on matter specific rates or employee specific rates)
* Support basic expense tracking and billing
* Support basic fee tracking and billing (copies, flat fee basis, etc.)
* Tracks billed, unbilled and billable times
* Notes

### Task Management
* Assignment of responsible contacts and users
* Due date
* Dashboard shows todo list with highlighting of tasks past due and due today
* Notes
* Tracking of billable and non-billable time

### Contact Management
* Storage for contact data
* Contacts can be related to matters with assigned roles
* Conflict lists for conflict checking

### Billing
* Daily Time - view start/stop times on each matter with durations for any employee on any date
* Groups - commonly used for situations in which an attorney accepts multiple cases and receives a set monthly fee for those cases
* Rates - setup billing rates
* Supports flat fees on a per matter basis
* Basic expense tracking
* Display matters with any billable time, expenses or fees
* Invoice generation

### Invoicing
* Generate invoices based on logged time, expenses and fees
* Detailed time records
* Pull rates from matter rates or employee rates
* Selectable date ranges
* Track external invoice numbers (handy for pairing with Quickbooks or other accounting software)
* Overridable details for each entry
* Overridable rate or amount for each entry
* Support for group billing (useful for appointment contracts)
* Printable invoices with timesheets and summaries