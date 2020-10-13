+++
title = "Manufacturing an Electronic Component"
subtitle = "From Start to Finish"
date = 2020-10-13
conference = "Indie Hackers - October"
outputs = ["Reveal"]
+++

## {{<param title>}}

### {{<param subtitle>}}

{{< param conference >}} 13, 2020

Michael Lynch ([@deliberatecoder](https://twitter.com/deliberatecoder))

https://decks.mtlynch.io/indie-hackers-2020-10/

---

### Background

* Raspberry Pi's annoying power design.

<div>

<img src="pi4-connection.jpg" alt="Photo of USB-C port on Raspberry Pi 4B" style="max-width: 200px">

</div>

* The Pi accepts power on the USB-C port
  * This is the device's only USB-OTG port.

---

### Background

* TinyPilot needs the USB OTG port to connect to a computer's USB port.
  * Computer USB ports output too little power for the Pi.

---

### Background: Y-cables?

* A Y-cable seemed like the answer!

<div>

<img src="y-cable.jpg" alt="Photo of Y-Cable" style="max-width: 200px">

</div>

---

### Background: Y not?

<img src="pi-forums-i-notice.png" alt="Screenshot of Pi Forums post: I notice you're providing a USB 'Y' cable in your kits, how are you dealing with PSU conflicts and backpowering the host PC?" style="max-width: 500px">

---

### Goal

* Split access to the Raspberry Pi's USB-C port
  * Should accept 3 Amps of power.
  * Should also function as a USB port.
  * Prevent incorrect flows of power.
* Need it fast.

---

### Day 1

The engineering firm begins work on the circuit board for the power connector.

It's a simple enough board that they're able to design it and order 100 printed circuit boards from China the same day.

---

### Day 2

* I ask 3D printing lab to design a case for the power board.
* Within hours, they send me a work-in-progress image of the case design.

<img src="case-design-wip.jpg" alt="CAD image of a partially completed case design" caption="Early draft of a 3D printed case for the TinyPilot power connector" style="max-width: 400px">

---

### Day 5

The 3D printing lab completes their design and gets ready to begin printing a few prototype cases.

<img src="case-v1-4.png" alt="3D rendering of case, bottom view, open" style="max-width: 300px">
<img src="case-v1-3.png" alt="3D rendering of case, top view, open" style="max-width: 300px">

<br>

<img src="case-v1-2.png" alt="3D rendering of case, bottom view" style="max-width: 300px">
<img src="case-v1-1.png" alt="3D rendering of case, top view" style="max-width: 300px">

---

### Day 8

The engineering firm receives the bare PCBs from their overseas manufacturer.

<img src="v1-pcbs.jpg" alt="Photo of a panel of uncut, unassembled PCBs" caption="First batch of PCBs for the TinyPilot Power Connector" style="max-width: 300px">

* Still need to solder on the components.
* 3D printing lab produces first two case prototypes.
  * I ship them to the electrical engineers.

---

### Day 9

* Cases fit the boards

<br>

<img src="first-cases.jpg" alt="Photo of a panel of uncut, unassembled PCBs" style="max-width: 460px">
<img src="microusb-gaps.jpg" alt="Photo of a panel of uncut, unassembled PCBs" style="max-width: 300px">

<br>

* Large gaps around the port because 3D printing lab erred on the side of caution.

---

### Day 10

* I receive the first two board prototypes.
  * They're soldered by hand as the engineers build automation
* They work!

---

### Day 13

* 3D printing shop prints their first batch of 30 cases.
* Still a small gap around the microUSB ports, but not a showstopper.

<img src="case-fit.jpg" alt="Photo of 24 completed boards" caption="First batch of completed boards for the TinyPilot Power Connector" style="max-width: 500px">

---

### Day 19

I receive the first completed panel of 24 PCBs from the engineering firm.

<img src="first-batch.jpg" alt="Photo of 24 completed boards" caption="First batch of completed boards for the TinyPilot Power Connector" style="max-width: 200px">

* Manufacturing process was automation + manual fixes.

---

### Day 20

* The 3D printer finishes the remaining 70 cases.
* They include 10 experimental cases.

<img src="power-connector-black.jpg" alt="Photo of black case for power connector" style="max-width: 350px">

I like this new design so much that I switch all future production to black cases.

---

### Day 21

I begin sending out the first completed power connectors as replacements to legacy customers.

<img src="legacy-customers.png" alt="Screenshot of replacement orders in Shopify" style="max-width: 650px">

---

### Day 26

* I receive the remaining 74 completed boards
* With 100 cases and boards ready, the first run of production is complete.

---

### Costs

* Boards: $2,897.70
  * Design: $241.72
  * Materials: $422.16
  * Assembly, testing, packaging: $2,579.04
  * Postage: $76.95
* Cases: $500.00
* **Total**: **$3,297.64**

<div style="background: hotpink; margin: 2rem auto; max-width: 60%;">Per-unit cost: $32.97</div>

Case costs are after 75% subsidy from [MA Innovation Voucher](https://www.uml.edu/research/crf/state-voucher-program.aspx).

---

### What went well

* Luck
  * Almost everything worked well.
* Limited the number of vendors involved
  * Prevented miscommunications, friction.
* Added padding to the time estimates I received

---

### What went well

* Communicated to everyone that I was optimizing for turnaround time
  * I estimated that I lost $50-100 for each day of delay, so I was willing to pay ~$50/day for options to expedite.
* Working in parallel with the 3D printer and electrical engineers

---

### What could have been improved

* Underestimated total number needed
  * After sending out free replacements to ~60 legacy customers, I had only 40 left to sell to new customers.
* PCB assembly time
  * Biggest bottleneck, most costly part.
  * Possible resolution: after prototyping, outsource the assembly and manufacture to two independent PCB manufacturing firms.

---

### What could have been improved

* Functional testing
  * Some units were defective when they arrived to customers.
* Deadline slippage
  * Three week delays happen one day at a time.

---

# Questions?

---

### Bonus: How'd I find vendors?

* Luck
  * For both vendors, I was already in contact with them to discuss other physical improvements to TinyPilot.
* Electrical engineering firm
  * Asked PCB manufacturers for recommendations.
  * [FORGE Mass](https://forgemass.org/): Nonprfit that connects MA startups to manufacturers.
  * **Asked friends for recommendations.**
* 3D Printer
  * Recommendation from a friend.