---
author: Ben Madley
github: FleaRex
title: How To Get Nothing Done - The Talk Retrospective
---

Almost two years ago, I wrote a [blog post about getting nothing done](/2020/12/30/gettingNothingDone.html) and I was pretty happy with it. It was born out of frustration with systems that value the act of working over getting things done. Particularly, starting lots of tasks and not finishing them. Then, when DevOps Days London announced its first conference back after a COVID break, I instantly knew I would submit it to the CFP. Thankfully, _How to Get Nothing Done_ was accepted. I had a great time speaking at DevOps Days and I'm sure I will submit a talk next year.

## Quick Links

- The talk - _Link to talk recording to appear soon_
- [The slides](/assets/pdfs/DevOpsDaysLondonIgnite2022-slides.pdf)
- [The script](/assets/pdfs/DevOpsDaysLondonIgnite2022-script.pdf)

## Writing the talk

The CFP closed in May 2022 and I was contacted in July. This gave me just under three months to fully develop the talk. I'd chosen to submit an ignite talk:
- 5 minutes
- 20 auto-advancing slides
- 15 seconds per slide

This format is great for limiting scope (e.g. only 5 minutes, no choice of format) and less great for stress (e.g. low levels of control, no speaker notes).

Having a draft post didn't save as much work as I thought it would. It was, however, massively useful to have a draft of the talk early. It meant that I was practicing the talk from the beginning. I was shocked at how many changes I wanted to make when doing practices (even to something that I'd previously deemed publishable). There was plenty of phrases I didn't like hearing out loud or I never managed read correctly. In the end, less than a third of my original blog post made it into the talk. I think I got a lucky escape doing practices and editing so early.

I recorded myself a lot. I have 22 audio recordings and a further 6 videos. This was really useful to share and get feedback. I got absolutely great feedback. From Sophie one of the DevOps Days London organisers, from my partner, from my manager and from other people. The biggest help was:
- Asking people about what they took from the talk
  - Someone who thought they got it, actually got the wrong idea because I hadn't explained something very well
- The suggestion to adopt a _more_ tongue in cheek approach [like Jon Smart's Certified Really Agile Practitioner](https://www.youtube.com/watch?v=cwbiSCgiZNA&t=1s)
  - Before this suggestion, I was almost apologetic about the style of the talk.
- Simplifying slides
  - Slides only got text on them if I was going to give some silent time to take them in or explain directly
- Removing a third of the talk 
- I also read [Everything I Know about Life I Learned from PowerPoint](https://www.waterstones.com/book/everything-i-know-about-life-i-learned-from-powerpoint/russell-davies/9781788167376) which had a ton of useful stuff about presentations.

I'm no talk expert (this was my first conference talk), but these were my takeaways:
- **Big** font on your slides if you want something to be readable. If you don't want it to be readable, then don't have it at all. 
- Remove content. Don't have content that you can't explain properly.
- Start doing practices early. Practices are part of the writing process.
- Take an audience focused approach.
  - What do you want the audience to come away with?
  - What do they know already?
  - Is there a way to make this apply to more of the audience?
- Scripting a talk is surprisingly good.
  - In the past when I've done an internal talk, I've always done it without a script, but I probably won't again. Unless it's _really_ casual.

And for Ignite talks specifically:
- Know what you're cutting on the fly. 
  - It seemed universal among ignite speakers, that we had to cut content during the talk. In an ignite talk, you can't hold onto a slide for longer, so have a plan of what can go.
  - My plan was to have all the content after the first sentence on the slide be optional. 
- Don't cram in content.
  - Around the middle of the practice period, I realised I was jamming too many words into the time (and the irony wasn't lost on me).
  - It made the talk much harder to perform as everything needed to go well. Removing content gave me a lot more wiggle room for things going wrong.
  - It probably also made it a lot more understandable.

## What got cut

After all this talk of removing content, I'd like to talk about some of what hit the cutting room floor.

### General Interference with Organizations and Production of Simple Sabotage Field Manual

I wanted to mention [General Interference with Organizations and Production of Simple Sabotage Field Manual, by Office of Strategic Services](https://www.gutenberg.org/files/26184/26184-h/26184-h.htm) which was released in 1944 with advice on citizen sabotage during the Second World War. Section 11 in particular talks about sabotage in the workplace and has gems such as _(1) Insist on doing everything through “channels.” Never permit short-cuts to be taken in order to expedite decisions_ and _(7) Advocate “caution.” Be “reasonable” and urge your fellow-conferees to be “reasonable” and avoid haste which might result in embarrassments or difficulties later on._ It is an extremely eye-opening read.

### Non-project tasks as extra distractions

I also wanted to mention using non-project related tasks as extra tasks to take on. Even people who are normally really focused are quite happy to multitask project work alongside their annual review for instance. This causes both your annual review and your project tasks to take a hit.

### The time you're not working

I had an idea to talk about what to do in time that you weren't working on tasks, if you decided to not follow the "Always be working" principle, but I left it out to avoid watering down the persona. If you are interested, my top suggestions are
- [Blub studies](https://www.benkuhn.net/blub/)
- [Practicing](https://youtu.be/33fAzjOTaDE)
- Helping others
- Cleaning up your codebase (30 minutes could be one concrete bit of cleaning)

### Queuing theory

Arguably the whole talk could be summarised in a single graph, that you may be familiar with if you've read _The Phoenix Project_:

{% picture Wait time vs Utilisation from www.zhiqiangqiao.com |https://www.zhiqiangqiao.com/static/0a0bbf2b7535552f9abbd83b60a90aff/1c1a4/wait-time-busy-idle-phoenix.png %}

The more utilised a resource is (in a system with variable inputs), the longer the wait time will be. When we want to be 100% busy, we push our lead times way up. 

I dropped the graph because I couldn't do it justice within the time I was willing to give it and I wanted to show what this phenomenon looked like from a day to day point of view. After all, it's really counter-intuitive that if I've staffed a project/department to be at 95% capacity, that my lead times wouldn't be completely fine. I don't think a graph would change that intuition.