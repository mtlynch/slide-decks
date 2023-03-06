+++
title = "How to Make Your Code Reviewer Fall in Love with You"
date = 2023-03-18
conference = "NERD Summit"
outputs = ["Reveal"]
+++

<img src="cover.jpg" style="max-height: 30vh">

{{<param conference>}} - March 18, 2023

Michael Lynch ([@deliberatecoder](https://twitter.com/deliberatecoder))

https://decks.mtlynch.io/nerds-2023/

---

## Improve code reviews as the author

* You're half of the review
* You have a significant impact on the outcome
* Too few developers think about it

---

# Goal

* Become so good at code reviews that...

---

# Your code reviewer will fall in love with you

{{% fragment %}}Literally{{% /fragment %}}

---

## But I don’t want my reviewer to fall in love with me

---

#### They're going to fall in love with you

{{% fragment %}}## Deal with it{{% /fragment %}}

---

## Why improve your code reviews?

Helps:

* Your reviewer
* Your team
* You

---

## Learn faster

* Directs your reviewer's attention to important areas
* Elicits more constructive feedback from your reviewer

---

## Make others better

* Good technique as reviewer sets an example for your colleagues
* Makes your job easier when they send code to you

---

## Minimize team conflicts

* Code reviews are a common source of friction
* A conscientious approach minimizes arguments

---

## The golden rule

{{% fragment %}}
### Value your reviewer's time
{{% /fragment %}}

---

### Value your reviewer's time

* Easiest thing to do is a lazy review
* A quality review is a gift
* Reward them for putting in the time

---

### What is a code review?

<div>
<img src="what-is-1.png" style="max-height: 25vh">
</div>

* Consists of **author** and **reviewer**
* Author sends a **changelist** to reviewer

---

### What is a code review?

<div>
<img src="what-is-2.png" style="max-height: 25vh">
</div>

* Review happens in **rounds**
  * Author sends changelist
  * Reviewer gives feedback

---

### What is a code review?

<div>
<img src="what-is-3.png" style="max-height: 25vh">
</div>

* Review ends when reviewer **approves** the changelist

---

### Review your own code first

<img src="what-idiot.jpg">

---

### Review your own code first

* Put yourself in their mindset
    * Think of how you'd read the code without additional context
* Use a diff view

---

### Review your own code first

* Your reviewer should not be seeing
    * Debug code you forgot to delete
    * Extra files you accidentally included
    * Unresolved merged conflicts

---

## Write a clear changelist description

* Everything the reviewer needs should be in the code or the description

---

## Write a clear changelist description

* Explaing the context around the change
* The **why** not the **how**

---

## Automate the easy stuff

<img src="verify-syntax.jpg">

---

## Automate the easy stuff

* git pre-commit hooks
* Integrate linters/formatters
* Continuous integration (CI)

---

## Answer questions with the code itself

<img src="having-trouble.png">

---

## Answer questions with the code itself

* If your reviewer has this question, others will likely have the same question

---

#### Answer questions with the code itself

<img src="late-night-question.jpg" style="max-height: 40vh">

---

### Separate functional and non-functional changes

<img src="buried-change.png" style="max-height: 60vh">

---

##### Separate functional and non-functional changes

<img src="mixed-refactoring.png" style="max-height: 45vh">

---

##### Separate functional and non-functional changes

- One-line change
  - Easy to review
- Whitespace-only change
  - Easy to review
- One-line functional change within 200 lines of whitespace changes
  - *Painful* to review

---

## Be patient when your reviewer is wrong

<img src="try-actually-reading.png">

---

## Artfully solicit missing information

>**Reviewer**: This function is confusing

---

## Artfully solicit missing information

>**Reviewer**: This function is confusing
>
>**Author**: What changes would be helpful?

---

## Artfully solicit missing information

* Take a stab at it
  * Find *something* to improve about your code

---

## Award all ties to your reviewer

<img src="usta.png">

---

## Respond graciously to critiques

<img src="nice-catch.png">

---

## Respond graciously to critiques

* Reviewer catching subtle mistakes is a good sign
  * You've eliminated the easy stuff

---

## Break up large changelists

Skip?

---

## Communicate your responses explicitly

Skip?

<img src="ptal.png">

---

Skip?

## Communicate your responses explicitly

<img src="reviewable-satisfied.png">

---

## Minimize lag between rounds of review

Skip?

<img src="effort-graph.jpg">

---

# Thanks!

* Full blog post is at https://mtlynch.io/code-review-love/
  * Or Google "code review love"
* Mastodon: [michael@m.mtlynch.io](https://m.mtlynch.io/@michael)
* Twitter: [@deliberatecoder](https://twitter.com/deliberatecoder)
* Email: michael@mtlynch.io
* Slides: https://decks.mtlynch.io/nerds-2023/
