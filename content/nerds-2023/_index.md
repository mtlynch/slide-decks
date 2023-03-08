+++
title = "How to Make Your Code Reviewer Fall in Love with You"
date = 2023-03-18
conference = "NERD Summit"
outputs = ["Reveal"]
+++

<img src="cover.jpg" style="max-height: 30vh">

{{<param conference>}} - March 18, 2023

Michael Lynch ([mtlynch.io](https://mtlynch.io))

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

* Helps
  * Your reviewer
  * Your team
  * You

---

## Learn faster

* Directs your reviewer's attention to important areas
* Elicits more constructive feedback from your reviewer

---

## Make others better

* Sets an example for your colleagues
* Makes your job easier when they send code to you

---

## Minimize team conflicts

* Code reviews a common source of friction
* Conscientious approach minimizes arguments

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

### Review your own code first

<img src="what-idiot.jpg">

---

### Review your own code first

* Put yourself in reviewer's shoes
    * Imagine you don't have context as author
* Use a diff view

---

### Review your own code first

* Your reviewer should **not** see:
    * Debug code you forgot to delete
    * Extra files you accidentally included
    * Unresolved merge conflicts

---

### Review your own code first

* Come back to the code with fresh eyes
    * Review your code after taking a few hours away

---

### Write a clear changelist description

* Everything the reviewer needs should be in the code or the description

---

### Write a clear changelist description

* Explain the **context** around the change
  * The **why** not the **how**

---

### Write a clear changelist description

Example <font color="red">**bad**</font> changelist description

>Change the timeout
>
>This change sets `timeout` in `send.js` from `5` to `30`.

---

### Write a clear changelist description

Example <font color="green">**good**</font> changelist description

>Increase email send timeout to 30s
>
>Originally, In reviewing our logs for the past

---

## Automate the easy stuff

* Review time is valuable
* Don't use human reviewers to:
  * Format code
  * Identify style violations
  * Identify build failures

---

## Automate the easy stuff

<img src="verify-syntax.jpg">

---

## Automate the easy stuff

* Shift heavy lifting to computers with:
  * git pre-commit hooks
  * Integrate linters/formatters
  * Continuous integration (CI)

---

## Answer questions with the code itself

<img src="having-trouble.png">

---

## Answer questions with the code itself

* If your reviewer has this question, others will too

---

#### Answer questions with the code itself

<img src="late-night-question.jpg" style="max-height: 40vh">

---

## Answer questions with the code itself

* Prevent future readers from having the question
  * Refactor code to improve clarity
  * Add code comments for things you can't express with naming/structure

---

### Separate functional and non-functional changes

<img src="buried-change.png" style="max-height: 60vh">

---

### Separate functional and non-functional changes

* How it happens
  * Author makes a small change
  * IDE is configured to auto-format on change
  * Author doesn't notice / care

---

### Separate functional and non-functional changes

<img src="mixed-refactoring.png" style="max-height: 40vh">

---

### Separate functional and non-functional changes

| Changelist | Review difficulty |
|------------|------------|
| One-line change | <font color="green">Easy</font> |
| Whitespace-only change | <font color="green">Easy</font> |
| One-line functional change within 200 lines of whitespace changes | <font color="red">**Painful**</font> |

---

## Respond graciously to critiques

* It's about the code not about you
* Stay objective even if your reviewer is not
* Resist defensiveness

---

## Respond graciously to critiques

<img src="nice-catch.png">

---

## Respond graciously to critiques

* Reviewer catching subtle mistakes is a good sign
  * You've eliminated the easy stuff

---

## Be patient when your reviewer is wrong

<img src="try-actually-reading.png">

---

## Be patient when your reviewer is wrong

* A misunderstand of the code: still a red flag


>There are two ways of constructing a software design. One way is to make it so simple that there are obviously no deficiencies. And the other way is to make it so complicated that there are no obvious deficiencies.
>
>-Tony Hoare

---

## Be patient when your reviewer is wrong

* Can you prevent future readers from misunderstanding?
  * Refactor the code
  * Add comments to clarify intent

---

## Artfully solicit missing information

>**Reviewer**: This function is confusing.

---

## Artfully solicit missing information

>**Reviewer**: This function is confusing.
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

## Award all ties to your reviewer

>**Reviewer**: I think this 8-line function would be better as two 5-line functions.
>
>**Author**: I think it's clearer as a single function.

Who's right?

---

## Award all ties to your reviewer

* **Reviewer** has better perspective reading the code fresh.
* If both participants have equal evidence, defer to reviewer.

---

## Communicate your responses explicitly

<img src="ptal.png">

---

## Communicate your responses explicitly

<img src="reviewable-satisfied.png"  style="max-height: 30vh">

---

## Break up large changelists

Skip?

---

## Minimize lag between rounds of review

Skip?

<img src="effort-graph.jpg">

---

# Review

1. Review your own code first
1. Write a clear changelist description
1. Automate the easy stuff
1. Answer questions with the code itself
1. Separate functional and non-functional changes
1. Respond graciously to critiques
1. Be patient when your reviewer is wrong
1. Communicate your responses explicitly
1. Artfully solicit missing information
1. Award all ties to your reviewer

---

## The golden rule

### Value your reviewer's time

---

# Thanks!

* Full blog post is at https://mtlynch.io/code-review-love/
  * Or Google "code review love"
* Mastodon: [michael@m.mtlynch.io](https://m.mtlynch.io/@michael)
* Twitter: [@deliberatecoder](https://twitter.com/deliberatecoder)
* Email: michael@mtlynch.io
* Slides: https://decks.mtlynch.io/nerds-2023/
