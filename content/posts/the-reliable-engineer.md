+++ 
draft = true
date = 2020-10-10T19:03:13+02:00
title = "The Reliable Engineer"
description = ""
slug = "" 
tags = ["development"]
categories = ["Development"]
externalLink = ""
series = []
+++

A friend recently told me that he is focusing on becoming a _reliable_
engineer, and wanted my opinion on this topic. _Reliability_ has probably been
my strongest attribute as an employee so I felt somewhat qualified to write
about it.

# What is _Reliability_?
One of the lenses through which I view my job is as a _service_ that I provide
to my _immediate_ manager. This is different from any additional obligations
that I may have to my employer.\
From this lens, I want to provide such a quality of service where my manager is
able to assign a task to me, and ***forget about it***.\
The extent to which I can meet this bar, is _reliability_.

# The Magical Number Seven, Plus or Minus Two
Humans have a limited working memory capacity. In one of the most highly cited
[papers](https://en.wikipedia.org/wiki/The_Magical_Number_Seven,_Plus_or_Minus_Two)
in psychology, cognitive psychologist George A. Miller of Harvard University's
Department of Psychology, argues that the limit is observed to be somewhere
around 7 distinct stimuli.

While the exact number may vary from person to person, the fact remains that our
working memory has a limit. We cannot meaningfully think about 100 things at the
same time.\
This limitation shows up everywhere in software engineering. This limit is the
reason behind a well written function taking only a small number of parameters,
or classes having only a few, closely related, member fields, and good managers
having a small number of direct reports.\
As a manager, to be able to effectively think about your team's overall
objective and direction, you need good _lieutenants_ - people who can take up
and own meaningful chunks, leaving you free to think about the bigger picture.\
The effectiveness of a _lieutenant_ in providing this _service_ determines their
reliability.

# O Captain! My Captain!
How does one become a reliable lieutenant?\
Firstly, let's cover what _not_ to do. The most common mistake that people make
is _demand_ to be deemed reliable - most commonly, based on their tenure at the
company, or in some cases, at their previous employers. This doesn't help their
cause. Just like respect, this is something that cannot be demanded. It has to
be earned.

Becoming a reliable engineer involves 3 areas of development. First and most
important - your relationship with your manager. Second, your attitude or
mindset, and third, your tactical day to day work. Let's unpack these one at a
time.

Your relationship with your manager should be like your relationship with your
priest or psychologist. You should have an open channel of communication with
them, and you should feel comfortable sharing updates about your failures,
without any fear of judgement. If you don't think you have such a relationship
with your manager, you should talk to them about it and come up with a plan that
works for both of you. If you think that this is infeasible or this plan is not
succeeding despite your best efforts - talk to your skip manager, or get a new
manager - either by switching teams or by switching employers. I can't think of
anyone I've met who has been succeeding at their job despite having a bad
relationship with their manager.\
Also, realize that this is a continuous process. Like any relationship, you'll
have to continually work on it to remain effective.

The second most important component is your own mindset. If I can summarize this
in one word, it would be - _ownership_.
The other day, I had a friend from work waiting for me to finish something at
work so that we can go out for the evening. I remember him asking me, "Why do
you need to do this today? Who is asking for it?" I realized that I didn't know
the answer to this question. In fact, this question would have never even
occurred to me in the first place. Because *I am the one asking for it!*.
This is the essence of ownership. When you can say that "the buck stops here",
when you know and feel that the success and failure of your task lies entirely
on you [^1].\
Your manager will never give you tasks they feel you cannot own. It is only
through demonstrating ownership and success with smaller tasks that you can
progress onto bigger tasks. Start by owning implementation of functions and
classes. Move up to owning modules. Over time you will start owning projects
and product areas.

# The Road to Success
Now that we have done the strategic foundational work, how do we plan for the
day to day practical work? While this list is far from exhaustive, here are the
most important tools and attributes that I have found:

#### Regular Status Updates
The only way your manager is going to feel comfortable about "forgetting" your
project is if they feel they know the status of the project at all times. One of
the easiest way of doing this is to set up regular 1:1 meetings with your
manager.\
While the scope of 1:1 meetings is beyond this blog post, the majority of this
time will be status updates from both of you.\
Your status updates can be one of three things:
1. FYI - No action required from your manager. This is just so that your
manager gets a sense of the most complex challenges you have been facing and how
you have been overcoming them. This is your chance to shine!
2. A storm is coming - There is a knotty problem that may or may not need your
manager's attention in the near future. It is _extremely_ important that they
know about this sooner rather than later. I personally consider it to be a
personal failure when an escalation reaches my manager which they were not
already expecting.
3. Fire! - You need immediate help. If it's too urgent, don't even wait for your
1:1 and talk to your manager ASAP.

Your goal should be to be extremely proactive in this communication. If your
manager has to "ask about it", you have failed.

This will also provide you a way to track your own progress. Initially, most of
your updates will be in category #2 and #3. Over time, you should see an
increase in proportion in category #1 updates.

Another important observation will be the content of these updates. Initially,
you would be talking about how you wrote a particular piece of code. Over time,
you should see yourself talking about de-risking projects and resolving external
dependencies.

#### Responsiveness
Your manager will need some information from you now and then. The sooner you
provide an accurate answer, the more reliable you'll become.

#### Ability to say "I don't know"
I once had the misfortune of leading an engineer in my team who never said "I
don't know". He would rather give me a quick, responsive, but wholly inaccurate
answer. Needless to say, it did nothing to increase his reliability.\
Although it can be exciting to give quick answers or embarrassing to admit when
you don't know something, remember that your manager / tech lead has to use the
information you provide, and will know about the accuracy of this information
soon enough. Providing inaccurate, unreliable information is the most effective
way of reducing your reliability.

#### Self Direction
This ties a bit into ownership. One of the hallmarks of a great engineer is
their ability to self direct.\
You should be willing to do everything to keep your task / project on track. It
may involve talking to third parties or external teams or resolving some
internal conflict. While it's OK to ask your manager for help when you're stuck
but they should be able to see that you tried your best before approaching them.

# Profit
I hope this was helpful. Please feel free to comment with your take on the
topic.


[^1]: Sidenote on leadership: The success of a project belongs to your team.
Failure lies on you.