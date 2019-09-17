---
layout: post
title: "Lab #2: Programming Literature"
author: rccordell
permalink: /Programming-Lit/
---

> every figure of speech, snowclone, cliché, joke, proposition, statement, and practically every linguistic structure that can be turned into a template is easily explored with a bot. Every work of literature, every writer’s body of work, every literary movement, national literature, and textual corpus is waiting to be analyzed with a Markov chain or other textual generation technique…Social interactions, conversations, calls and responses, platform-defined  interactions (retweets, favorites, and so on) are all ready to be codified into algorithms and explored via bot.
> 
> Leonardo Flores, ["I ♥ Bots"](http://iloveepoetry.org/?p=11221)

## Acknowledgment

This lab was developed from the sterling model created by [Élika Ortega](https://elikaortega.net/), with whom I was privileged to teach a summer course in 2019. The [slides from her bots workshop](https://dsg.neu.edu/wp-content/uploads/2017/04/BotsWorkshop.pdf) are useful if you need additional help while working through this lab.

## Required Software

+ A [Twitter](https://twitter.com) account for your bot
+ [Tracery](http://tracery.io/) (You can also edit this text with a desktop text editor, like the one you use for Markdown)
+ [Cheap Bots, Done Quick](https://cheapbotsdonequick.com/)
+ You may also choose use and adapt these [corpora from Darius Kazemi](https://github.com/dariusk/corpora/tree/master/data)

## Why Write Literary Bots?

We all know about bots on Twitter. In fact, Twitter [stopped tallying the number of bots in its service a few years ago](https://www.buzzfeed.com/williamalden/twitter-has-stopped-updating-its-public-tally-of-bots), but estimates suggest a large proportion of twitter accounts are automated. Many of these are designed to push particular viewpoints or harass particular users (or particular kinds of users), though recently folks have started building bots [to push back against online abuse](https://www.washingtonpost.com/news/monkey-cage/wp/2016/11/17/this-researcher-programmed-bots-to-fight-racism-on-twitter-it-worked/). I think Samuel Woolley, danah boyd, and Meredity Broussard's ["How to Think About Bots"](https://motherboard.vice.com/en_us/article/qkzpdm/how-to-think-about-bots) provides a nice overview of the potential and pitfalls of online bot culture.

In [the midst of all these wilds](http://lithub.com/encountering-literary-bots-in-the-wilds-of-twitter/), why do I teach students to build *literary* bots in my classes? Well: on the one hand, it's a lot of fun, *and* it can help us understand more about the basics of programming languages, working with APIs (application programming interfaces), and the hidden workings of web services like Twitter. More than that, however, building bots offers a way of seeing literary objects anew and engaging creatively, [provocatively, or even combatively](https://medium.com/@samplereality/a-protest-bot-is-a-bot-so-specific-you-cant-mistake-it-for-bullshit-90fe10b7fbaa) with digital objects and online culture. Breaking down a poem for "mad libs" word substitution, for instance, forces us to think about the building blocks of poems.

Today, we will think about digital literacy as we learn to write one kind of twitterbot: a "mad libs" style bot that takes a predefined text—in our case, a snippet of poetry—and substitutes random words based on a predefined dictionary. 

## Some Favorite Examples

+ [@TwoHeadlines](https://twitter.com/TwoHeadlines) by Darius Kazemi
+ [@ProfJocular](https://twitter.com/ProfJocular) by Darius Kazemi
+ [@StudiesBot](https://twitter.com/studiesbot) by Mark Sample
+ [@everyword](https://twitter.com/everyword) by Alisson Parrish
+ [@ClearCongress](https://twitter.com/ClearCongress) by Zach Whalen
+ [@pentametron](https://twitter.com/pentametron) by Ranjit Bhatnagar
+ [@infinitedeserts](https://twitter.com/infinitedeserts) by @getdizzzy
+ [@tiny_star_field](https://twitter.com/tiny_star_field) by katie rose
+ [@StealthMountain](https://twitter.com/stealthmountain)
+ [@DroptheIbot](https://twitter.com/DroptheIbot) by Patrick Hogan and Jorge Rivas

## Working with Tracery

We will be writing our Twitterbots using [Tracery](http://tracery.io/) a tool created by [Kate Compton](http://www.galaxykate.com/) that uses JSON data to generate text. We will be creating a JSON file, which consists of a series of attribute-value pairs, such as this:

```
"name":["Ryan", "Evelyn", "Cadence", "Emerson", "Rorik", "Jonas", "Jude"]

```

In tracery, the example `name` is a `symbol`, and the list of names that follow it are values attached to that `symbol`. We will create symbols for each element of our poem that we wish to substitute. We will then use the reserved symbol `origin` to combine random values with existing text. I will illustrate a short Tracery "mad-libs" style substitution below, using the most famous line from Edgar Allan Poe's "The Raven." Here's the original line:
 
> Quoth the Raven “Nevermore.”

And here's how we might do a simple substitution in Tracery. Try copying the text below (from the first `{` to the closing `}` into the [Tracery editor](http://tracery.io/editor/) and see what happens. 

```
{
"noun":["cow","anvil","flower","tuba","parsley"],
"past-verb":["extrapolated","devoured","hypothesized","exploded","cha-cha slid"],
"interjection":["gadzooks!","zounds!","hogwash!","aaarrrggghhh!","achoo"],
"origin":["#past-verb# the #noun#, #interjection#"]
}

``` 

When you wish to call randomized content from a symbol, you simply type the name of the symbol within hashtags, as in `#noun#`. There are some basic modifiers that can be useful for building up more complex texts, as well. These are added to the end of a given symbol (within the hashtags):

+ `.s` for plural
+ `.ed` to make verbs past tense
+ `.capitalize` and `.capitalizeAll` to capitalize one or more words, respectively
+ `.a` to add a/an before a word

How is the code below different from what we used before? Copy and paste it into Tracery to see:

```
{
"noun":["cow","anvil","flower","tuba","parsley"],
"verb":["extrapolate","devour","hypothesize","explode","cha-cha slide"],
"interjection":["gadzooks!","zounds!","hogwash!","aaarrrggghhh!","achoo"],
"origin":["#verb.ed.capitalize# the #noun.s#, #interjection#"]
}

``` 

Those are the basics, though Tracery can get much more complicated from these building blocks alone. Tracery's symbols can be nested (lists within lists!) and combined with non-textual elements. In addition, Tracery can [interact with HTML, SVG graphics, and Javascript](http://www.galaxykate.com/pdfs/galaxykate-zine-tracery.pdf) to extend its capabilities. Check out the different example code available in the pull-down menu of the Tracery editor to explore some of these possibilities. If you need additional help or ideas, [this tutorial](http://www.crystalcodepalace.com/traceryTut.html) at Crystal Code Palace is quite helpful. For those with some programming experience, Tracery has also been implemented in a number of common languages: check out the bottom of [its homepage](http://tracery.io/) to see if your favorite is there.

As you get started, you might think "man, there's a lot of typing involved here!" and that might be true. To help out, however, you may also choose use and adapt these [corpora created by Darius Kazemi](https://github.com/dariusk/corpora/tree/master/data) for bot making.

## Next steps

We will walk through this together, but once you have your Tracery code working as you wish, we will need to get it running and posting to Twitter. You need to sign up for a [Twitter account](https://twitter.com) for your bot and make sure you're signed into that account, rather than any personal accounts you might use. We will then use [Cheap Bots, Done Quick](https://cheapbotsdonequick.com/) to get our bots posting regularly to their accounts. 

