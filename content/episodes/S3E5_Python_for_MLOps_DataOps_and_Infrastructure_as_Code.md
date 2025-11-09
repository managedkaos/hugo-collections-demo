---
title: "S3E5: Python for MLOps DataOps and Infrastructure as Code"
season: 3
episode: 5
date: 2025-11-05T23:21:04-08:00
draft: false
status: "completed"
tags: ["hugo", "static-sites", "web-development"]
categories: ["tutorials"]
technologies: ["hugo", "markdown", "git"]
featured: false
description: "A brief description for SEO and social sharing"
image: "https://storage.googleapis.com/g.managedkaos.com/from-cover-to-code/S3E5_Python_for_MLOps_DataOps_and_Infrastructure_as_Code/S3E5_Python_for_MLOps_DataOps_and_Infrastructure_as_Code.png"
youtube: "https://www.youtube.com/watch?v=68tNRRQ0c9o"
spotify: "https://open.spotify.com/episode/0BTH2vUPfdoXovyvkKjVEU"
---

Angela Andrews and Michael Jenkins continue their journey through *Hands-On Python for DevOps* with a deep dive into Chapters 11 and 12 — exploring how Python bridges the gap between data science, operations, and infrastructure management.

This episode connects the dots between MLOps, DataOps, and Infrastructure as Code (IaC) — showing how Python’s simplicity and versatility make it an essential tool for automating data workflows, deploying machine learning models, and defining infrastructure reproducibly.

Expect lively discussion, insightful quotes, and practical takeaways from real-world DevOps experience.

Book Chapters Covered

- Chapter 11: MLOps and DataOps
- Chapter 12: Python and Infrastructure as Code (IaC)

Video & Podcast Chapters

00:00 Welcome and Episode Setup
03:00 The Future Is Now – AI and Career Differentiation
06:30 Why Python Dominates DataOps and MLOps
10:45 Working with Data and the Power of Pandas
14:15 The Three V’s of Data Complexity: Velocity, Volume & Variety
19:30 Streaming Data and Real-Time Processing with Flink and Pandas
25:00 AI Evolution and How Tech Books Keep Up
32:30 Understanding Infrastructure as Code (IaC)
36:00 Salt vs Ansible vs Terraform SDK – Python in IaC Tools
43:30 Community Shout-Outs and Next Episode Preview

Key Takeaways

- Python is the universal connector between DevOps, DataOps, and MLOps — powering automation, analytics, and infrastructure.
- The Three V’s (Velocity, Volume, Variety) define modern data challenges; Python libraries like Pandas and Flink help manage them efficiently.
- Infrastructure as Code (IaC) transforms how teams manage cloud resources — codifying provisioning, replication, and scaling for AWS, Azure, and GCP.
- Tools like Terraform + Ansible deliver the perfect one-two punch for deployment and configuration.
- Even as AI-assisted coding evolves, foundational knowledge still matters.  Understanding the “nuts and bolts” ensures better troubleshooting and design.
- The hosts reflect on enduring classics like "UNIX in a Nutshell" and discuss how agile digital publishing keeps technical learning relevant.

🔗 Resource Links

📘 The Book — "Hands-On Python for DevOps": https://www.oreilly.com/library/view/hands-on-python-for/9781835081167/B21320_01.xhtml

💻 The Code Repository: https://github.com/PacktPublishing/Hands-On-Python-for-DevOps/tree/main

- BITCon: https://bitcon.blacksintechnology.net/
- Afrotech: https://afrotechconference.com/
- RenderATL: https://www.renderatl.com/

🎧 Your Hosts

Angela Andrews – @scooterphoenix
Michael Jenkins – @managedkaos

🙌 Join the Conversation

Don’t forget to like, subscribe, and comment to share your own experiences with Python, MLOps, and IaC.
Follow the hashtag #CoverToCode on LinkedIn and YouTube to catch upcoming discussions — next up: *“The Tools to Take Your DevOps to the Next Level.”*

## Transcript

00:00
Angela Andrews
Oh, you keep saying minions, and I just. I'm laughing every time because, yeah, stuff makes me laugh.

00:07
Michael Jenkins
So, yeah, we know minions as cartoon characters, but they can also be servers.

00:15
Announcer
Welcome to From Cover to Code, the technology book club. Join us as we Discuss artificial intelligence, DevOps, software development, cloud computing, and more with your hosts, Angela Andrews and Michael Jenkins. The next episode of From Cover to Code starts now.

01:01
Michael Jenkins
And we are back in the building once again for another episode of From Cover to Code. How are you doing today, Angela?

01:09
Angela Andrews
I am doing. It is a Wednesday kind of Wednesday, and I'm doing my best here.

01:15
Michael Jenkins
Okay, well, hang in there.

01:17
Angela Andrews
How about you? How about you?

01:19
Michael Jenkins
I'm doing pretty good. I've just got back. I feel like I just got back into town from some travel over the weekend. So, yeah, even though today is Wednesday, it really feels like a Monday almost to me. So I am ripping and running from one thing to another, sweating as I run into the studio today to get ready for our discussion. But I'm here, I'm ready to go and. And ready to jump into this.

01:42
Angela Andrews
I love it. All right, well, let's. Let's do this. Let's get into it.

01:46
Michael Jenkins
Yeah.

01:46
Angela Andrews
We are back. We are back. We are discussing Hands On Python.

01:52
Michael Jenkins
Hands on Python for DevOps by Anchor Roy is the book that we're covering in this season. We're almost done with this thing.

02:01
Angela Andrews
Yeah, we are.

02:02
Michael Jenkins
Yeah.

02:02
Angela Andrews
We're landing this plane just about.

02:04
Michael Jenkins
Yeah, we are approaching. We're in descent mode. Right.

02:09
Angela Andrews
Tables up.

02:10
Michael Jenkins
Yeah, exactly. Put your. Put your seat backs up. Put your tray tables up. You know you're going to come along to collect whatever infrastructure is code you got left you didn't want to know. Take with you whatever. I say that because we're talking about infrastructure as code. Yes, we are. ML Ops and Data Ops, and in this particular discussion, chapters 11 and 12 of the book.

02:31
Angela Andrews
All right.

02:32
Michael Jenkins
Yeah. And before we get too far in the material, I mean, welcome to everybody. If you're joining us live for the discussion, shout out where you're from. Shout out the ML Ops or Data Ops or cli. I don't know, just shout out what.

02:47
Angela Andrews
Everyone just shout us out. That's it. We want to know you there. That's all.

02:50
Michael Jenkins
Exactly. It makes it so much more engaging for us to know that you're here, rocking with us and join in to discussion. If you got questions, comments or whatever, bring them and we'll address them as we go.

03:03
Angela Andrews
Fantastic.

03:05
Michael Jenkins
So, yeah, let's. Let's go ahead and jump into chapter 11. I think you. Angela called out the quote in last episode, so I'm going to defer to you for the quote for this one and I'll pick up the quote for chapter 12.

03:18
Angela Andrews
Yes. Okay. So I said it was one of the best comedians of all times. It is George Carlin, definitely one of the best, in my personal opinion. Talking about having your finger on the pulse like always. And this quote for this chapter is a perfect pairing. So shout out to Ankaroy for finding something that really embodies what ML ops, data ops, the whole aimlab wave that we're on. And the quote reads, the future will soon be a thing of the past, and we are literally in the future right now. We are robots, we are talking computers. We are all the things that we thought were so far off into the future. We are living in IT right now. And it's a fabulous time to be in technology. The.

04:15
Angela Andrews
The sheer amount of change that's happening, it's almost like anybody can get on it, like anybody can join in. It's. It's so ripe for the picking and, you know, depending on what your role is or what you're doing, you may not have a choice but to embrace AI and ML in your work, as in your daily work. So I have to say this quickly. I know quite a few people who are getting the Learn ML, learn AI learn. Like they're getting. This is the time. So this could be the great differentiate differentiator as well. If you find that what your company is starting to do, it's starting to talk more about aiml, it's starting to get. Get it, you know, use cases and pocs. It behooves you. I like that word.

05:14
Angela Andrews
It behooves you to get on board because we all know that the economic climate, the job climate is so tenuous right now. So many people that your friend on LinkedIn, my friend, they are going through it and unable to find jobs they can go for months without finding. I think this is what the equalizer is. This will be your differentiator. And I think a lot of people believe that now. So it's very timely that we're kind of going to glance on it. But that quote is so on the nose right now. So. Yeah, that's it.

05:53
Michael Jenkins
Yeah, indeed. No, that. That nails it. And the only thing I would add is like the thing of the past part is because AI is moving so fast that even today, for in the future, indeed, it's going to be a thing of the past tomorrow because something new is going to Come out and we got to catch up with that. So you got to be on top of the game to even stay up with AI as it is and the ML Ops, Data ops and so on.

06:22
Michael Jenkins
But getting into the discussion, one of the first things that I picked up is the author said very early in the chapter, most people and development environments for data usually default to Python these days because the existence of the necessary tools for data processing and analysis, most effective data ops workloads will use Python in some capacity. And that just resonated with me because anytime I'm picking up data to work with something, I'm a Pythonista at heart and I lean strongly towards Python. But I'm almost always reaching for Python before I reach for something else. It's just in my nature to say, okay, I'm working with data, let me go see what I can do with this with Python. I totally resonate with that.

07:09
Angela Andrews
Awesome. Well, where do we want to start? We got our quotes, we got our feelings of where the state of these technologies are. Let's just start at the beginning. He talked about what Data Ops and MLOps IS and the fact that you mentioned, when you talk about tools for manipulating using data, Python is that girl. We're talking about mlops helping deliver and optimize machine learning models and algorithms. These are ripe technologies where Python and R and a couple others are really at the center of it. So yeah, the time is so right. I do like the fact that he set the technical requirements back.

08:01
Michael Jenkins
Yes, he did.

08:02
Angela Andrews
There in the beginning of the chapter, he didn't mention. Well, I guess he didn't have to. There was one little oh, we're using this tool again and it wasn't mentioned in the technical requirements. But that's a small thing. You have to have a Google Colab. You can access the code from his GitHub repo. And if you've been following along or if you're learning Python or use it in your day to day, you probably already have your Python environment set up and a nice cup of your favorite beverage, which I have some mix water. Absolutely loving it. So yeah, I am totally prepared today.

08:42
Michael Jenkins
Okay, I am ready. Well, I, I guess I, I've got Gatorade in a can. That's what I'm sipping on. And he first started talking about how do you differentiate ML ops and data ops from regular old DevOps? At least in my interpretation of what the author wrote, there was no real major opinion given other than MLOps and DataOps is still DevOps. But you're just focused on the machine learning environment or the data itself. And I really liked the way he broke down. We'll get to this in a minute. When you're dealing with data, the three V's, I don't want to spoil that. If you're following along, you haven't read it yet or you're spoiler alert, we're going to talk about the three V's of dealing with data. I really like that discussion. Some of the demos, they were okay.

09:34
Michael Jenkins
I thought they were appropriate for what he got into. But yeah, MLOps, DataOps and DevOps, they're all pretty much the same. It's just they are specific and targeted to a certain type of development or a certain type of operation.

09:52
Angela Andrews
That's true.

09:54
Michael Jenkins
We can jump right into the first Data Ops demo. He broke down Data Ops, Mo Ops and then he went into some of the Working with data, the 3B's demo. In the Data Ops, he started out saying that Python has native JSON capabilities built in. I was like, okay, that's cool. I guess that is a good thing to know if you're going to be working with data, that you can have native capabilities of working with different data formats. I want to say there's a native CSV library built in as well. I have to fact check myself on that. But there's also the Pandas library is just so prevalent in Data Ops because it's got so many capabilities built into the library itself. You import Pandas and you got tons of stuff going. It's basically like Excel in your Python script.

10:48
Michael Jenkins
You can do all sorts of formulas, data manipulation work in rows and columns, and all of the sorts of operations you can do with Pandas.

10:56
Angela Andrews
Hold your wad because Pandas are coming.

11:01
Michael Jenkins
Okay. Watch out for the pandas.

11:06
Angela Andrews
Yes, it's later in this chapter.

11:07
Michael Jenkins
It's later in this chapter indeed. Yeah, I think I did make a note for that as well. The demo that he gave was using the Pipe operator to concatenate data. And I thought that was kind of simple. I mean, it's a good demonstration of how you can natively work with data. And so it was kind of very quick one off way to demonstrate some Data Ops I would hope for.

11:32
Angela Andrews
I, I thought it was appropriate, pertinent and use.

11:36
Michael Jenkins
Yeah, I mean, again, for me I wanted a little bit more, but I thought it was good. Yeah, I would have dived a little bit deeper into that. But again, you know, I'm not writing a book on Python for DevOps, so if that's what he wanted to share. That's Anoy's prerogative.

11:53
Angela Andrews
But should you.

11:55
Michael Jenkins
I probably should, yeah.

11:58
Angela Andrews
Yeah, we're going to leave that there.

12:01
Michael Jenkins
Yeah, Save that for next time. All right. The ML Ops demo, he talked about overclocking a gpu and I thought that was. It was an interesting use case, but I was kind of like the Python there. It was a script runner. It was like our script wrapper.

12:22
Angela Andrews
Exactly.

12:23
Michael Jenkins
Yeah. It wasn't too much. It wasn't a good demonstration of what Python could do in this particular space.

12:29
Angela Andrews
It was one of those examples where the tool is right there. It's right there. But he used it as a wrapper to go ahead and call the Nvidia CLI program. And at the very end, when you wanted to undo, you know, turn off overclocking, it was basically back to the. The Nvidia tool to.

12:54
Michael Jenkins
Yeah, he just ran the command.

12:56
Angela Andrews
Exactly.

12:57
Michael Jenkins
Forward. Yeah. So, yeah, the two things that I, Or I guess the notes that I have for this particular demo or discussion, it would. He did have. He used the sub process library to run the Nvidia command. Okay. I thought that was cool because you demonstrate how you have your Python process running your main script and then you can run sub process commands from within that script. That was cool. I thought it would have been crazy cool if he also used the threading library, which I have used before. Basically, you can run multi threaded sub processes from your Python script if you could set it up so that you're on your system use. I'm trying to think of some of the other libraries. I can't recall right off top of my head, but get information about the system that you're running on.

13:44
Michael Jenkins
Determine how many CPUs or GPUs you have, and then overclock specific ones and then target those with a thread. That would have been a crazy, like, you know, substantial example. I think so.

13:57
Angela Andrews
Put a pin in it.

13:58
Michael Jenkins
Oh, yeah. Second edition.

14:01
Angela Andrews
Second edition, yeah.

14:03
Michael Jenkins
Anchor. You can have that one for free.

14:04
Angela Andrews
This second edition is going to be fire.

14:07
Michael Jenkins
Yeah, it's going to be lit, I will tell you.

14:11
Angela Andrews
Are we now at the three V's?

14:13
Michael Jenkins
The three V's, Yeah, that was the next one dealing with velocity, volume and variety. And I will quote the author. He says the three ways in which the complexity of data can scale are velocity, volume, and variety. Each of these represents a singularly unique problem when dealing with data where velocity is the speed of data coming in over a period of time, volume is the amount of data, and variety is the diversity of the data. Being presented. I've got notes on each one of these, but I'll pause there to see if you had any.

14:47
Angela Andrews
I don't have a lot of notes other than reading the section that you just mentioned. The fact that Python is a great data tool when it comes to big data and being able to parse and move through. When I think big data in my personal experience, I think splunk, I think reading logs, I think like just trying to find a needle in a haystack. And the fact that Python is such a great tool to be able to parse, basically parsing data. Like, I'm not a data scientist, but to do something, the very simplest way possible, it's usually just picking up a Python script to. To do what you need to do. Now, I do like this first example. We're back to using Makaroo, which is a site that helps you build kind of like just data. Just. What do we, what are we calling?

15:49
Angela Andrews
Data sets? Yeah, how much data? You can pick what the data looks like. And the data set that the author produced isn't like the screen print above, which I would have liked to have gotten more information, but he did say it was 20 fields, so maybe it's. I haven't. Now, what I haven't checked is the repo this week. It could very well be there because that's absolutely a lot of data. Really large fields with a thousand rows.

16:21
Michael Jenkins
So I did check the repo. I don't think the data is there, but I'm going to just Google or take a look at it as you are following along. Yeah, the data is not there, but yeah, it's all gravy.

16:39
Angela Andrews
All right, that's it. That was my take on the volume example, but I'll let you have it.

16:49
Michael Jenkins
Yeah, the one thing that I liked about this demo was that he did process a large data set. And the way that he did it was processing the data one row at a time to preserve memory. And that's a trick that I learned years ago in Perl because, I mean, back 20 years ago, we didn't have all the gigs of RAM that we had on systems, so you had to read large sets of data one line at a time because the system couldn't handle it by default. A lot of people say, okay, I'm going to process this file and like file open file name, and you read all that file content into memory. If you're reading a four gig file and you've got two gigs of ram, guess what? Do the math Something's got to give, right?

17:33
Michael Jenkins
So to get around that, you read one line at a time and you do your processing and then you hold that result of the processing, which may only be a few or a few kb or a few megs at the most or whatever. So that's one way that you can kind of get around these, you know, processing big data on a system that has constrained memory. So I really appreciated that he introduced that concept.

17:56
Angela Andrews
Yeah, indeed. I have no more takeaways. Cool. This was a, this was a. Not a terrible example.

18:03
Michael Jenkins
Yeah, yeah.

18:04
Angela Andrews
The power of parsing data. I definitely give it a plus one on that. What about Velocity?

18:12
Michael Jenkins
Velocity, for the sake of the discussion, Velocity is talking about dealing with streaming data as opposed to batch processing, which you got your CSV file, the data is all there. You could process it either if you got enough ram, read that all in the memory, process it one line at a time. But all the data is present. But with streaming data, that data is coming continuously and more than likely you're processing it in real time, but you don't know when that data is going to end. It's just always coming. It's streaming. You have to have techniques that you can process in real time as the data is coming in and generate your analysis basically on the fly. It was good to differentiate streaming data from batch processing.

18:58
Angela Andrews
That was a good example, to be honest. That's another plus one for the examples. I know we've been kind of, you know. No, but this example in particular just shows the power of what you can do. That's just, that's more data than you could. You, like you said, you don't know when it's going to end. It's constantly coming in. And the fact that Python has native libraries where you can, well, not native, but you can install these libraries like Apache Flink, which is a stream and batch processing framework. And then of course, Pandas.

19:36
Michael Jenkins
Yeah, Pandas. Yeah. And that's. I think this was the one. In this example he used both Apache Flink and Pandas. He did Flink to catch the streaming data. And I guess in this case the data itself wasn't streaming. I will say it's difficult to set up an example that produces streaming data for. At scale, you know, so the simple example that he gave where he just had a JSON piece of data and use Flink to process that JSON and then Pandas to write it as a CSV table, that was good enough. If you understand the process, then you could apply it to a Scenario where you've got actual streaming data coming in. I was happy with that.

20:22
Angela Andrews
I thought so too.

20:24
Michael Jenkins
The one thing I will say, I guess I had a couple notes for the people who may be listening to this in the future. You want to check out this particular chapter. The code was available for chapter 11, but the Flink demo code wasn't in the repo. Just FYI, if you pick up this chapter and you want to try it out, I had to copy the code from the book to actually mess around with it. Just watch out for that pothole as you start driving down this chapter. Okay, Moving on to variety. As you mentioned, Variety is dealing with different types of data. This was an okay demo. I had hoped for a little bit more. Basically, the demo shows how to use UTF8 encoding to get better results from your data processing. He used an emoji.

21:16
Michael Jenkins
He was like, hey, your data could have emojis in it. If you don't encode it properly, the data is going to look like this, which will result in further processing down the line. I understand. What I had hoped for was particularly from an mlops perspective, or rather, I guess Data Ops more specifically is using Python to clean data because there's so many other tools and capabilities that you have inside Python that you could use when you're getting data that is maybe missing values or has characters that you don't want. Like, say if you don't want emojis, then you need to strip all those out. Or if you need tokenize text to process it down the line, there's all kinds of Python libraries that you could use for that.

22:10
Michael Jenkins
I think that might have been a better demonstration of Python's capabilities, but encoding is important, so I'll let it slide for this one.

22:19
Angela Andrews
Yeah, again, it was a very simple, very simple example. I don't know if I understand the use of COLAB for this one.

22:34
Michael Jenkins
Yeah, I think you just use it as an interface. To be honest. You could have done the same thing from your cli.

22:39
Angela Andrews
That's what I was doing. I, I maybe just wanted to introduce it again because it was introduced earlier in one of the chapters and one of my things was like, oh, we're creating all these accounts for these one offs. So maybe it was a nod back to, well, let's try it here just to keep the variety going. I, I, I won't comment too much on that. As far as the example, it is a solid example, but there's, you, you even mentioned there's A bunch of different examples. So I thought it interesting that he went into a section about chat GPT. Of course it was coming. She's always there. She's lurking in the background. And yeah, it was almost like, you know, if you don't know, let me explain it to you type of thing. I thought that wasn't bad.

23:38
Angela Andrews
But I, I think it's interesting when he picks his moments to be introductory into certain topics. So again, I'm glad that he did, you know, do that introductory. And there was this line in here that I. It made me laugh. And why do you. No one laughs when they read things like this. I find everything absolutely hysterical. That is the story of my life.

24:07
Michael Jenkins
He.

24:08
Angela Andrews
One of the lines was, however, the newest LLMs have been made so that they can talk about pretty much anything with slight knowledge specialization in certain fields. And I thought about my time on this other podcast where I just knew a little bit about a whole bunch of things. And it was like, I am my own LLM. I can just talk about anything. It doesn't matter what the topic is. I could probably add some context. And I just. That made me laugh. So, yes, I laugh at some of the stupidest things. And I put a little smiley face.

24:43
Michael Jenkins
In here because that's good. That's good.

24:47
Angela Andrews
But good analogy. Good analogy that he wrote.

24:51
Michael Jenkins
Yeah, I appreciate that he brought it in. And I mean, I think it attributes itself to the quote that he used at the beginning of the chapter talking about the future is going to be the past. Because when he mentions this, at the time this book was written, he was talking about chat or he's talking about GPT 3.5.

25:08
Angela Andrews
Yes.

25:08
Michael Jenkins
And we're so many more models ahead of that time. And I mean, AI is changing so fast, who knows what an update of this book, like what version we will be on then? So this was like, I think the best place to kind of bring that quote home to say, hey, if you're working on it now, it's probably going to be out of date down the road. You got to stay up to date.

25:30
Angela Andrews
So the idea of capturing technology, this is just a weird little aside. I'm going to take the idea of capturing technology topics in books, right? He wrote this book and he was referencing a particular version. And now where we are maybe two or three years later, we're way beyond that. Do you think this medium will become less prevalent as we move forward? Since technology is moving really fast, do you think authors will be less inclined to give us this because it's like act's gonna be out of date in no time. Like, what. What are your thoughts on that? I know that's an aside, but yeah, it's totally.

26:16
Michael Jenkins
Sorry. But hey, let's. Let's get into it. Let's chop it up.

26:18
Angela Andrews
A book club. We need more Father.

26:21
Michael Jenkins
Exactly. I don't, I don't think so. I think we as authors and readers will continue to, as authors want to create and capture and create the content, capture and create the knowledge. And as readers consume it, I think the mediums might change. I think maybe we get to more quote unquote soft books so their PDFs, their markdown, so that they can be more easily updated to stay up to date with the times.

26:53
Angela Andrews
Okay.

26:54
Michael Jenkins
But I think, like, there's always a place for that knowledge that's never going to change or it will rarely change over time. Because I say never change, but I mean, stuff always changes, right?

27:08
Angela Andrews
Yeah. Changes come.

27:09
Michael Jenkins
Change is the only constant. Right. So there could be fundamentals that it doesn't matter what language you're using or what time of year, decade you're reading it's always going to be something useful that you can apply to whatever it is you're working on.

27:24
Angela Andrews
I agree. I 100 agree. Let me tell you something. I got some of these books up here that have been written. Let me tell. Said an awk.

27:33
Michael Jenkins
Yes.

27:33
Angela Andrews
That girl is not going anywhere.

27:36
Michael Jenkins
Nowhere.

27:37
Angela Andrews
I will pull her out. There's a couple. Like you said, some things remain constant that they're the underpinnings of so much that we do. You can't change your foundation.

27:52
Michael Jenkins
Yeah.

27:52
Angela Andrews
Right. You just have to build from it. So. You're right. You're right. I hope, I hope it never comes to that. But your assessment of maybe the formatting needs to change a little bit to be able to stay up to date is definitely going to be key because I love to read a good book.

28:12
Michael Jenkins
Yeah. Right. So, all right, I'll throw one in there too. UNIX in a nutshell was my go to when I first got out of college. I read UNIX in a nutshell from Cover to cover. That's how I learned them. That's how I learned all of my CLI commands. And that is like a just like field manual that I still turn to this day if I need to find something. So UNIX in a nutshell for sure.

28:37
Angela Andrews
There are. There were a few of those books that I used throughout my time as a sysadmin that didn't matter. That technology had changed. It didn't matter. Those books are still. I hear I saw on LinkedIn someone had just bought this book. Now mind you, it has not been updated, but it is such a bible. It's like, it's the book about Linux that has like the ship on the front and it has all these words on it. It says something about systems administration. I got rid of my copy. I feel terrible that I did. But it's so funny that someone just bought this book and I was just like, see that? Will the underpinnings never change? So it's great that people can go back and kind of pick up and bring it forward.

29:28
Michael Jenkins
So, yes, indeed, on that note, we will continue to move forward into chapter 12, how Python integrates with infrastructure as code concepts. I was excited for this chapter. I got some good stuff out of it.

29:44
Angela Andrews
Oh, good.

29:45
Michael Jenkins
Yeah. So I'm okay. Ish happy with this. And I'll just start with a quote. I've got notes all over the place here, but good. The quote for this one is, never measure the height of a mountain until you have reached the top. Then you will see how low it was. And this is from Dag Hammerskold, a Swedish econ. Economic economist. Economist. I can't read today, folks. A Swedish economist and diplomat who served as the second secretary general of the United nations from April 1953 until September 1961.

30:20
Angela Andrews
Right.

30:21
Michael Jenkins
So we kind of had some discourse before we jumped into the studio about what this quote means. And I kind of took it to mean, I mean, a couple different things. Maybe some people might not want to get into infrastructure as code, so they kind of see it as this mountain that they have to climb, but once they start using it, they're like, oh, man, my life is so much better now that I have all of my resources codified and I can apply them in different ways in different environments, and I can tear it down, I can build it back up again, and it's easy. So that mountain was. Wasn't so high after all.

30:56
Angela Andrews
That's a great synopsis of the quote. I agree, I agree with you. Remember I said, I was like, I'm not sure. I mean, I get what he's saying. And then you explained it. I'm like, okay, I. I feel that. I feel that. All right.

31:12
Michael Jenkins
Yeah. One. Another thing, I'll quote the author on this as. As he got started on the chapter and he captured one of my favorite words, penultimate. And I think you should never, ever miss an opportunity to use penultimate, which means next to last. Basically, that's all it means. But that is such a chapter. It's the penultimate chapter of the book, and that's what he says. So as we approach this penultimate chapter, we get to this topic of infrastructure as code. So I never miss an opportunity to use the word penultimate if I possibly can, if it makes sense to the conversation. So if you hear me, folks that are listening, if you catch me in conversation and I say penultimate, just look at me sideways because I'm just trying to use a word that I rarely ever get a chance to use. That's.

31:59
Michael Jenkins
That's what it is.

32:00
Angela Andrews
You know what my word is?

32:02
Michael Jenkins
What's that?

32:03
Angela Andrews
Crestfallen.

32:04
Michael Jenkins
Crestfallen. That's a good one, too.

32:06
Angela Andrews
I never miss an opportunity to use that word.

32:10
Michael Jenkins
Yeah, yeah.

32:12
Angela Andrews
If you have a word, put it in the chat I'd like so I can add it to my lexicon. Gone. Let me. Everybody has that one word or two.

32:20
Michael Jenkins
Words, one, where they love to use, but they never, you know, rarely if ever, get a chance to pull it up. Okay, but anyway, back to the subject at hand. Let's see. Well, I mean, I guess bringing, I guess some definition to infrastructure is code. And quoting the author here, he's saying it's resource creation, provisioning, and updating that are standardized in the form of code with constants and variables arranged in organized way. So you can standardize the replication of resources, making things such as backups, failovers, redeployments, and a whole lot of other operations activities easier. I love it. Yeah, it's code, but it's the stuff. It's not the software, it's the hardware. If you want to think about it like that in some configuration. Well, I guess we can kind of get into that with some of the examples that he has.

33:13
Michael Jenkins
But I appreciate infrastructure as code for standing up all my resources in clouds, Google Cloud, aws, Azure. So I'm not clicking around in the console. I can just run a couple commands on the CLI and bam. I got my servers, my databases, my load balancers, buckets, APIs, anything. You name it, you can code it up and you got it.

33:37
Angela Andrews
Now, with the advent of Amazon Q or any other AI tool that you can plug into your code editor, writing AIC has become so easy. It has become. Now, I will say this, and I'm going to let you get back to this chapter because you had more notes on it than I did, but when it comes to using AI as a tool, it is just that. But be sure to use it As a teacher, don't let it be just, oh, I'm just gonna drop this in and it's gonna work and I'm not gonna understand the underpinnings or whatever. I always said that some you have to know the nuts and bolts, not just the framework but the underpinnings because if something goes wrong, you.

34:28
Angela Andrews
You have gained the knowledge to figure it out and understand it and troubleshoot it as opposed to not going really deep in something. So again, I am waxing poetic.

34:41
Michael Jenkins
I totally agree.

34:42
Angela Andrews
Have a lot of thoughts that this chapter just brings to mind, that's all. But I'm gonna let you have it.

34:47
Michael Jenkins
Yeah, no doubt. So he goes into a discussion for either Python libraries or tools that can be used for infrastructure as code. Salt or Salt Stack, Ansible and Terraform SDK out of these three tools I'm very familiar with Ansible, very familiar with Terraform, not necessarily the Terraform SDK. I've heard about Salt and Saltstack, but I never applied it. I always worked in environments that used Chef or Puppet which are Ruby based configuration management tools. Salt being similar type of tool, configuration management and provisioning tool, but Python based. I did work through the examples that he gave. I had to do some a little bit, I guess funkier install for my SALT setup. It wasn't as simple as saying apt install salt or whatever it was. I had to add some libraries and updates and whatever on a Ubuntu server.

35:51
Michael Jenkins
But I got it to run and everything was working. I didn't use a minion, I just used one server that was my management server and my minion. And I guess that's one difference that I will call out between these two tools, SALT and Ansible, which are very similar, both Python based configuration management tools. But SALT requires a management server to interact with minions that are registered to the server so that they talk over this service. Right. Whereas Ansible is. It doesn't require a management server. You can have the concept yeah. Of a management server, but yes it is agentless it because it talks over SSH or maybe even some other protocol.

36:30
Angela Andrews
Winr Windows.

36:32
Michael Jenkins
Yes, exactly. So it doesn't require the target system to have any sort of configuration on it to be a part of its management capability. Love Ansible for that. That's been my go to for systems that require configuration after they're deployed. Honestly, one of my just go to approaches, One of my MOs is to deploy stuff with Terraform and Terraform proper like full on HCL code and then once I've got All my resources there use Ansible to configure them. And that's just like, you know, it's. Yeah, it's like the one, two punch, right? You know, it's. It's a total knockout.

37:16
Angela Andrews
Yes. Yeah, you already know my opinions about those things. I. I always said Terraform and Ansible are better together.

37:28
Michael Jenkins
Yes.

37:28
Angela Andrews
Full stop. Full stop. Yes. I'm sorry. Oh, you keep saying Minions and I just. I'm laughing every time because, yeah, good stuff makes me laugh. So.

37:40
Michael Jenkins
Yeah, yeah, we know Minions as cartoon characters, but they can also be servers. So. Yeah, it. It's cool. Salt Stack. The example that he gave it was a. I'm trying to think if he wrote a custom thing for. I guess I could go back to the chapter and check. He did write a custom module for Ansible through that example. There were. Let's see, what were the. There were some issues that I had with this one. First of all, there's no code for chapter 12 in the repository. There's code in the book. There is not a folder for chapter 12 in the repo. Maybe it didn't make it. I don't know what the case is. I had to either cut and paste or just type it in or where the case was. For the Ansible demonstration, there was a Playbook call for the custom module.

38:31
Michael Jenkins
So basically walks you through the steps to write a custom module for Ansible using Python. Totally cool. Yeah, yeah, it made sense for it. However, the Playbook code and the script name don't align, so it's like maybe one was written before or after the other. And the quick fix there is just to make the Playbook agree with the script or make the script agree with the Playbook. And so once I got that fixed, I was able to get it going. So, yeah, they were both good examples. Salt. I had to do a little bit of some command line gymnastics to get Salt installed. After that, everything was great. Ansible. I just had to copy the code from the book directly and then make the Playbook match. After that, everything was good. The Terraform CDK example, it was straightforward, fairly straightforward.

39:22
Michael Jenkins
I think I might have had to do some installations. He did say you had to have Terraform installed. You had to have some other stuff installed for that. Then even when you do the CDK TF INIT for Python, it requires its own dependencies on the PIP env, so you have to go back and install that thing. Once I got all that done, I did the init. I didn't deploy anything with this example. I just Ran the CDK TF deploy just to see how it worked. If you don't have any resources in a Terraform thing, it's going to say, hey, this run was successful because I didn't deploy anything or you didn't ask me to deploy anything. It's fine. I hesitated to do anything with this because I'm more inclined to just write HCL for my Terraform.

40:09
Michael Jenkins
I'm not going to code it up in Python, to be honest. The only, I guess, approach that I could think of, so I appreciated the example and demonstration for what it was, is, and I think we talked about this in a previous episode where if you have some stupid crazy business case where you have to do something dynamically or like totally different, where it's based on some sort of business logic code and so you're codifying decisions in your deployment, maybe then I could say, okay, I'll let me use Python to do it, because you can't. Terraform is not a dynamic language. It's very deterministic in the point that you tell it, hey, I want this many servers, this many databases, and I want them to look like this.

40:55
Michael Jenkins
You don't dynamically say, well, if today is Wednesday and I'm deploying, then I only want three servers. But you could do that if you're doing it in Python. If it's something funky like that. Maybe I would use like a software development kit for Terraform through Python. Otherwise I would probably just leave it alone, to be honest.

41:17
Angela Andrews
The right tool for the job.

41:18
Michael Jenkins
Yeah, right tool for the job.

41:21
Angela Andrews
Well.

41:21
Michael Jenkins
Oh, no, please go ahead.

41:23
Angela Andrews
I was going to say how he tied up the end of the chapter and he did mention that this was a more serious chapter than maybe some we had seen in the past. Because infrastructure as code is such a serious topic. And that's what he said. It's powerful and it can be the solution to a lot of problems in the application of DevOps principles. That was very spot on. I thought he tied that up very well. Again, this chapter could have been much more. This book could have been a tome had he expanded on some of these examples. But, you know, not the worst examples I've seen. I like that. It would have been nice if they were included in the repo.

42:14
Angela Andrews
Maybe he'll get a chance to put those in there at some point because that's an easy way to keep things up to date. But other than that, yeah, I, I didn't hate chapter 12. I thought it was it did what it did. It explained what it explained and yeah, we got through it.

42:31
Michael Jenkins
We did Indeed. So, yeah, MLAPs, data ops and Infrastructure as code.

42:36
Angela Andrews
Yeah.

42:36
Michael Jenkins
With or without Python, it's up to you. But Python touches a lot of these different areas with the tools and that's the takeaway. Yeah.

42:45
Angela Andrews
Really, throughout this book. Does it have to be Python? No, but the sheer fact that it can be. Yes, that's impressive.

42:54
Michael Jenkins
Yes, indeed, that's impressive. But, yeah. So as we, I guess, wind thing down, I wanted to just shout out a couple folks that commented. We didn't capture any comments as were going through live, so I just wanted to shout out the folks that were following us live. We got Mike joining us from Dallas, Texas. Thank you, sir, for joining us. Shout out to Tech coach Ralph letting us know it's a. Definitely a good afternoon. And then we got D.B. Darrell joining us as well. I love that name, my man. I know, right? All about the databases and then random LinkedIn user. Sorry that the tool didn't capture your name. I know, but yeah, were glad that you joined us as well. Oh, okay. Thanks for joining us, Lanai. Appreciate it. And let's see, D.B.

43:41
Michael Jenkins
Darrell, were talking about the AI models, talking about Chat GPT and he's saying Claude is sitting on the bench. Put me in, coach, I could do it. Right.

43:52
Angela Andrews
And the other LinkedIn user, his name is Lauren and he is.

43:55
Michael Jenkins
Okay. All right, Lauren, thanks for joining us.

43:59
Angela Andrews
Always talking about.

44:01
Michael Jenkins
Yeah, said and all still look like hieroglyphs to me. Let me tell you, if you can read and interpret regular expressions as they apply to Sid, Auk and Pearl, you are on a whole nother level. Yes. Yeah, regular expressions, sometimes those look bananas to me. But AI is also another good tool that you can lean on to say, hey, AI, I need to process data that looks like this. Can you please write me a regular expression that I can use? Yeah. As a starting point because nobody got time to be writing all these regexes.

44:40
Angela Andrews
But again, I say sometimes knowing the. The fundamentals is not a bad thing. But I will.

44:46
Michael Jenkins
Yeah.

44:46
Angela Andrews
Chat GPT slash, perplexity slash. I will be all girl, Help me out, please.

44:55
Michael Jenkins
No doubt.

44:56
Angela Andrews
It is a tool. It is definitely a tool. So what are we going. What do we got next?

45:02
Michael Jenkins
Next up is chapter 13, the tools to take your DevOps to the next level. So the author is saying we're going to take everything that we've learned from the previous chapters and raise it to a higher level. So again, I'm excited to see what we got setting up for us, and I'll be ready to dive into the code. Maybe we'll get a couple examples out of it.

45:26
Angela Andrews
Okay.

45:27
Michael Jenkins
And, yeah, we'll see what we got.

45:29
Angela Andrews
Level up. I'm excited about next week. And unfortunately, that's the end of the book.

45:35
Michael Jenkins
Yes.

45:36
Angela Andrews
What's up, bro?

45:37
Michael Jenkins
Yeah. Yeah, that will be the. Because this is the penultimate episode. It's the penultimate chapter that we just went through. See what I did there? Yeah. We will be landing this season in the next episode. If you're joining us live. We're taking a break next week. We're actually going to be. Not next week proper, but the week after that, because you might see me at Afrotech next week. So if you're in Houston, Texas, holler at your boy and maybe we can connect there.

46:11
Angela Andrews
Sadly, I won't be there this year.

46:13
Michael Jenkins
Oh, man. Yeah. I'm gonna miss you. All right, maybe. Maybe render. Render ATL in 2026. Maybe I'll catch you there.

46:21
Angela Andrews
Maybe. Maybe the tickets are on sale. I don't know.

46:24
Michael Jenkins
They are.

46:24
Angela Andrews
Maybe.

46:25
Michael Jenkins
They are indeed. Yeah, we'll have to put those links in the. In the show notes, too, for the folks that want to catch up. But, yeah, in the meantime, you can catch us on YouTube. Cover the code. Catch us on LinkedIn. Hashtag, cover the code. We are all over the place, y', all. And I just enjoy chopping up with you, Angela. Chopping it up with the folks that join us live. And so I will be chomping at the bit to get back here into the studio and talk about the. The last chapter in this book.

46:53
Angela Andrews
I am so excited. This is definitely. I love this. We have so much fun here. I love the interaction in the chat, even when people are. Oh, I saw. You know, I like when you talk about this. Even if they're watching it after the fact, someone will message me or something. So I do appreciate each and every one of y' all that just rides with us weekend and week out. Depend. Doesn't matter the book, because, you know, what we're doing is coming from a place of love and fun and because, you know, we like what we're doing here. But thank you. Thank you for joining us.

47:31
Michael Jenkins
Yes, indeed. Thanks for joining us. And we will see you all next time.

47:34
Angela Andrews
Awesome.

47:35
Michael Jenkins
Bye.

47:37
Angela Andrews
See y'. All.

## SRT Transcript

00:00:00,080 --> 00:00:02,000
Angela Andrews: Oh, you keep saying minions, and I just.

2
00:00:02,080 --> 00:00:07,040
Angela Andrews: I'm laughing every time because, yeah, stuff makes me laugh.

3
00:00:07,040 --> 00:00:11,600
Michael Jenkins: So, yeah, we know minions as cartoon characters, but they can also be servers.

4
00:00:15,600 --> 00:00:20,000
Announcer: Welcome to From Cover to Code, the technology book club.

5
00:00:21,120 --> 00:00:46,890
Announcer: Join us as we Discuss artificial intelligence, DevOps, software development, cloud computing, and more with your hosts, Angela Andrews and Michael Jenkins.

6
00:00:53,450 --> 00:01:01,110
Announcer: The next episode of From Cover to Code starts now.

7
00:01:01,670 --> 00:01:07,190
Michael Jenkins: And we are back in the building once again for another episode of From Cover to Code.

8
00:01:07,430 --> 00:01:09,510
Michael Jenkins: How are you doing today, Angela?

9
00:01:09,830 --> 00:01:10,710
Angela Andrews: I am doing.

10
00:01:10,950 --> 00:01:15,670
Angela Andrews: It is a Wednesday kind of Wednesday, and I'm doing my best here.

11
00:01:15,990 --> 00:01:17,590
Michael Jenkins: Okay, well, hang in there.

12
00:01:17,670 --> 00:01:18,470
Angela Andrews: How about you?

13
00:01:18,470 --> 00:01:19,190
Angela Andrews: How about you?

14
00:01:19,350 --> 00:01:20,550
Michael Jenkins: I'm doing pretty good.

15
00:01:21,190 --> 00:01:22,550
Michael Jenkins: I've just got back.

16
00:01:22,550 --> 00:01:25,630
Michael Jenkins: I feel like I just got back into town from some travel over the weekend.

17
00:01:25,630 --> 00:01:30,280
Michael Jenkins: So, yeah, even though today is Wednesday, it really feels like a Monday almost to me.

18
00:01:31,160 --> 00:01:38,640
Michael Jenkins: So I am ripping and running from one thing to another, sweating as I run into the studio today to get ready for our discussion.

19
00:01:38,640 --> 00:01:40,840
Michael Jenkins: But I'm here, I'm ready to go and.

20
00:01:40,840 --> 00:01:42,200
Michael Jenkins: And ready to jump into this.

21
00:01:42,600 --> 00:01:43,400
Angela Andrews: I love it.

22
00:01:43,640 --> 00:01:45,000
Angela Andrews: All right, well, let's.

23
00:01:45,080 --> 00:01:45,840
Angela Andrews: Let's do this.

24
00:01:45,840 --> 00:01:46,600
Angela Andrews: Let's get into it.

25
00:01:46,600 --> 00:01:46,960
Michael Jenkins: Yeah.

26
00:01:46,960 --> 00:01:47,960
Angela Andrews: We are back.

27
00:01:48,440 --> 00:01:49,160
Angela Andrews: We are back.

28
00:01:49,160 --> 00:01:52,690
Angela Andrews: We are discussing Hands On Python.

29
00:01:52,930 --> 00:01:58,930
Michael Jenkins: Hands on Python for DevOps by Anchor Roy is the book that we're covering in this season.

30
00:01:59,650 --> 00:02:01,250
Michael Jenkins: We're almost done with this thing.

31
00:02:01,250 --> 00:02:01,970
Angela Andrews: Yeah, we are.

32
00:02:02,050 --> 00:02:02,410
Michael Jenkins: Yeah.

33
00:02:02,410 --> 00:02:04,930
Angela Andrews: We're landing this plane just about.

34
00:02:04,930 --> 00:02:06,530
Michael Jenkins: Yeah, we are approaching.

35
00:02:06,930 --> 00:02:08,090
Michael Jenkins: We're in descent mode.

36
00:02:08,090 --> 00:02:08,370
Michael Jenkins: Right.

37
00:02:09,490 --> 00:02:10,289
Angela Andrews: Tables up.

38
00:02:10,690 --> 00:02:11,810
Michael Jenkins: Yeah, exactly.

39
00:02:11,810 --> 00:02:12,250
Michael Jenkins: Put your.

40
00:02:12,250 --> 00:02:13,570
Michael Jenkins: Put your seat backs up.

41
00:02:13,570 --> 00:02:15,010
Michael Jenkins: Put your tray tables up.

42
00:02:15,010 --> 00:02:19,970
Michael Jenkins: You know you're going to come along to collect whatever infrastructure is code you got left you didn't want to know.

43
00:02:19,970 --> 00:02:20,890
Michael Jenkins: Take with you whatever.

44
00:02:21,850 --> 00:02:24,050
Michael Jenkins: I say that because we're talking about infrastructure as code.

45
00:02:24,050 --> 00:02:24,650
Michael Jenkins: Yes, we are.

46
00:02:24,970 --> 00:02:30,970
Michael Jenkins: ML Ops and Data Ops, and in this particular discussion, chapters 11 and 12 of the book.

47
00:02:31,930 --> 00:02:32,490
Angela Andrews: All right.

48
00:02:32,810 --> 00:02:33,370
Michael Jenkins: Yeah.

49
00:02:33,770 --> 00:02:37,690
Michael Jenkins: And before we get too far in the material, I mean, welcome to everybody.

50
00:02:37,850 --> 00:02:42,170
Michael Jenkins: If you're joining us live for the discussion, shout out where you're from.

51
00:02:42,490 --> 00:02:46,810
Michael Jenkins: Shout out the ML Ops or Data Ops or cli.

52
00:02:46,970 --> 00:02:47,930
Michael Jenkins: I don't know, just shout out what.

53
00:02:47,930 --> 00:02:49,050
Angela Andrews: Everyone just shout us out.

54
00:02:49,050 --> 00:02:49,410
Angela Andrews: That's it.

55
00:02:49,410 --> 00:02:50,410
Angela Andrews: We want to know you there.

56
00:02:50,410 --> 00:02:50,970
Angela Andrews: That's all.

57
00:02:50,970 --> 00:02:51,600
Michael Jenkins: Exactly.

58
00:02:51,990 --> 00:02:58,670
Michael Jenkins: It makes it so much more engaging for us to know that you're here, rocking with us and join in to discussion.

59
00:02:58,670 --> 00:03:03,030
Michael Jenkins: If you got questions, comments or whatever, bring them and we'll address them as we go.

60
00:03:03,910 --> 00:03:04,790
Angela Andrews: Fantastic.

61
00:03:05,270 --> 00:03:06,150
Michael Jenkins: So, yeah, let's.

62
00:03:06,150 --> 00:03:07,910
Michael Jenkins: Let's go ahead and jump into chapter 11.

63
00:03:09,190 --> 00:03:09,990
Michael Jenkins: I think you.

64
00:03:10,070 --> 00:03:18,310
Michael Jenkins: Angela called out the quote in last episode, so I'm going to defer to you for the quote for this one and I'll pick up the quote for chapter 12.

65
00:03:18,390 --> 00:03:18,950
Angela Andrews: Yes.

66
00:03:19,030 --> 00:03:19,670
Angela Andrews: Okay.

67
00:03:19,670 --> 00:03:22,870
Angela Andrews: So I said it was one of the best comedians of all times.

68
00:03:23,270 --> 00:03:27,990
Angela Andrews: It is George Carlin, definitely one of the best, in my personal opinion.

69
00:03:28,630 --> 00:03:32,630
Angela Andrews: Talking about having your finger on the pulse like always.

70
00:03:33,110 --> 00:03:37,070
Angela Andrews: And this quote for this chapter is a perfect pairing.

71
00:03:37,070 --> 00:03:49,990
Angela Andrews: So shout out to Ankaroy for finding something that really embodies what ML ops, data ops, the whole aimlab wave that we're on.

72
00:03:49,990 --> 00:03:59,150
Angela Andrews: And the quote reads, the future will soon be a thing of the past, and we are literally in the future right now.

73
00:03:59,630 --> 00:04:03,590
Angela Andrews: We are robots, we are talking computers.

74
00:04:03,590 --> 00:04:09,150
Angela Andrews: We are all the things that we thought were so far off into the future.

75
00:04:09,310 --> 00:04:11,310
Angela Andrews: We are living in IT right now.

76
00:04:11,630 --> 00:04:14,510
Angela Andrews: And it's a fabulous time to be in technology.

77
00:04:15,660 --> 00:04:15,860
Angela Andrews: The.

78
00:04:15,860 --> 00:04:25,380
Angela Andrews: The sheer amount of change that's happening, it's almost like anybody can get on it, like anybody can join in.

79
00:04:25,380 --> 00:04:25,700
Angela Andrews: It's.

80
00:04:25,700 --> 00:04:41,020
Angela Andrews: It's so ripe for the picking and, you know, depending on what your role is or what you're doing, you may not have a choice but to embrace AI and ML in your work, as in your daily work.

81
00:04:41,020 --> 00:04:43,040
Angela Andrews: So I have to say this quickly.

82
00:04:44,240 --> 00:04:50,480
Angela Andrews: I know quite a few people who are getting the Learn ML, learn AI learn.

83
00:04:50,480 --> 00:04:51,120
Angela Andrews: Like they're getting.

84
00:04:52,720 --> 00:04:53,760
Angela Andrews: This is the time.

85
00:04:54,080 --> 00:04:58,720
Angela Andrews: So this could be the great differentiate differentiator as well.

86
00:04:59,280 --> 00:05:07,720
Angela Andrews: If you find that what your company is starting to do, it's starting to talk more about aiml, it's starting to get.

87
00:05:07,720 --> 00:05:10,700
Angela Andrews: Get it, you know, use cases and pocs.

88
00:05:10,860 --> 00:05:12,460
Angela Andrews: It behooves you.

89
00:05:13,660 --> 00:05:14,700
Angela Andrews: I like that word.

90
00:05:14,860 --> 00:05:23,820
Angela Andrews: It behooves you to get on board because we all know that the economic climate, the job climate is so tenuous right now.

91
00:05:24,460 --> 00:05:34,140
Angela Andrews: So many people that your friend on LinkedIn, my friend, they are going through it and unable to find jobs they can go for months without finding.

92
00:05:34,780 --> 00:05:36,980
Angela Andrews: I think this is what the equalizer is.

93
00:05:36,980 --> 00:05:38,780
Angela Andrews: This will be your differentiator.

94
00:05:38,940 --> 00:05:42,300
Angela Andrews: And I think a lot of people believe that now.

95
00:05:42,620 --> 00:05:46,500
Angela Andrews: So it's very timely that we're kind of going to glance on it.

96
00:05:46,500 --> 00:05:52,060
Angela Andrews: But that quote is so on the nose right now.

97
00:05:52,220 --> 00:05:52,580
Angela Andrews: So.

98
00:05:52,580 --> 00:05:53,740
Angela Andrews: Yeah, that's it.

99
00:05:53,740 --> 00:05:54,380
Michael Jenkins: Yeah, indeed.

100
00:05:56,780 --> 00:05:57,860
Michael Jenkins: No, that.

101
00:05:57,860 --> 00:05:58,660
Michael Jenkins: That nails it.

102
00:05:58,660 --> 00:06:13,050
Michael Jenkins: And the only thing I would add is like the thing of the past part is because AI is moving so fast that even today, for in the future, indeed, it's going to be a thing of the past tomorrow because something new is going to Come out and we got to catch up with that.

103
00:06:13,050 --> 00:06:21,850
Michael Jenkins: So you got to be on top of the game to even stay up with AI as it is and the ML Ops, Data ops and so on.

104
00:06:22,010 --> 00:06:44,320
Michael Jenkins: But getting into the discussion, one of the first things that I picked up is the author said very early in the chapter, most people and development environments for data usually default to Python these days because the existence of the necessary tools for data processing and analysis, most effective data ops workloads will use Python in some capacity.

105
00:06:44,400 --> 00:06:54,920
Michael Jenkins: And that just resonated with me because anytime I'm picking up data to work with something, I'm a Pythonista at heart and I lean strongly towards Python.

106
00:06:54,920 --> 00:06:59,710
Michael Jenkins: But I'm almost always reaching for Python before I reach for something else.

107
00:06:59,790 --> 00:07:05,790
Michael Jenkins: It's just in my nature to say, okay, I'm working with data, let me go see what I can do with this with Python.

108
00:07:06,270 --> 00:07:07,790
Michael Jenkins: I totally resonate with that.

109
00:07:09,230 --> 00:07:09,790
Angela Andrews: Awesome.

110
00:07:10,510 --> 00:07:13,310
Angela Andrews: Well, where do we want to start?

111
00:07:13,550 --> 00:07:19,710
Angela Andrews: We got our quotes, we got our feelings of where the state of these technologies are.

112
00:07:20,670 --> 00:07:22,110
Angela Andrews: Let's just start at the beginning.

113
00:07:23,410 --> 00:07:38,130
Angela Andrews: He talked about what Data Ops and MLOps IS and the fact that you mentioned, when you talk about tools for manipulating using data, Python is that girl.

114
00:07:40,370 --> 00:07:45,970
Angela Andrews: We're talking about mlops helping deliver and optimize machine learning models and algorithms.

115
00:07:48,050 --> 00:07:54,450
Angela Andrews: These are ripe technologies where Python and R and a couple others are really at the center of it.

116
00:07:55,620 --> 00:07:58,220
Angela Andrews: So yeah, the time is so right.

117
00:07:58,220 --> 00:08:01,220
Angela Andrews: I do like the fact that he set the technical requirements back.

118
00:08:01,380 --> 00:08:02,140
Michael Jenkins: Yes, he did.

119
00:08:02,140 --> 00:08:06,180
Angela Andrews: There in the beginning of the chapter, he didn't mention.

120
00:08:06,420 --> 00:08:08,180
Angela Andrews: Well, I guess he didn't have to.

121
00:08:08,740 --> 00:08:13,700
Angela Andrews: There was one little oh, we're using this tool again and it wasn't mentioned in the technical requirements.

122
00:08:13,700 --> 00:08:15,700
Angela Andrews: But that's a small thing.

123
00:08:16,740 --> 00:08:19,060
Angela Andrews: You have to have a Google Colab.

124
00:08:19,540 --> 00:08:22,100
Angela Andrews: You can access the code from his GitHub repo.

125
00:08:22,750 --> 00:08:38,110
Angela Andrews: And if you've been following along or if you're learning Python or use it in your day to day, you probably already have your Python environment set up and a nice cup of your favorite beverage, which I have some mix water.

126
00:08:38,110 --> 00:08:39,470
Angela Andrews: Absolutely loving it.

127
00:08:40,110 --> 00:08:41,950
Angela Andrews: So yeah, I am totally prepared today.

128
00:08:42,429 --> 00:08:44,150
Michael Jenkins: Okay, I am ready.

129
00:08:44,150 --> 00:08:47,470
Michael Jenkins: Well, I, I guess I, I've got Gatorade in a can.

130
00:08:48,040 --> 00:08:48,920
Michael Jenkins: That's what I'm sipping on.

131
00:08:49,720 --> 00:08:57,080
Michael Jenkins: And he first started talking about how do you differentiate ML ops and data ops from regular old DevOps?

132
00:08:58,520 --> 00:09:09,360
Michael Jenkins: At least in my interpretation of what the author wrote, there was no real major opinion given other than MLOps and DataOps is still DevOps.

133
00:09:09,360 --> 00:09:13,960
Michael Jenkins: But you're just focused on the machine learning environment or the data itself.

134
00:09:14,440 --> 00:09:16,680
Michael Jenkins: And I really liked the way he broke down.

135
00:09:16,920 --> 00:09:18,200
Michael Jenkins: We'll get to this in a minute.

136
00:09:18,520 --> 00:09:22,840
Michael Jenkins: When you're dealing with data, the three V's, I don't want to spoil that.

137
00:09:23,000 --> 00:09:29,160
Michael Jenkins: If you're following along, you haven't read it yet or you're spoiler alert, we're going to talk about the three V's of dealing with data.

138
00:09:30,199 --> 00:09:31,800
Michael Jenkins: I really like that discussion.

139
00:09:32,280 --> 00:09:34,200
Michael Jenkins: Some of the demos, they were okay.

140
00:09:34,200 --> 00:09:37,080
Michael Jenkins: I thought they were appropriate for what he got into.

141
00:09:37,720 --> 00:09:42,190
Michael Jenkins: But yeah, MLOps, DataOps and DevOps, they're all pretty much the same.

142
00:09:42,190 --> 00:09:50,430
Michael Jenkins: It's just they are specific and targeted to a certain type of development or a certain type of operation.

143
00:09:52,030 --> 00:09:52,750
Angela Andrews: That's true.

144
00:09:54,510 --> 00:09:57,310
Michael Jenkins: We can jump right into the first Data Ops demo.

145
00:09:57,630 --> 00:10:03,790
Michael Jenkins: He broke down Data Ops, Mo Ops and then he went into some of the Working with data, the 3B's demo.

146
00:10:04,430 --> 00:10:10,910
Michael Jenkins: In the Data Ops, he started out saying that Python has native JSON capabilities built in.

147
00:10:11,150 --> 00:10:12,830
Michael Jenkins: I was like, okay, that's cool.

148
00:10:13,390 --> 00:10:22,430
Michael Jenkins: I guess that is a good thing to know if you're going to be working with data, that you can have native capabilities of working with different data formats.

149
00:10:23,150 --> 00:10:27,990
Michael Jenkins: I want to say there's a native CSV library built in as well.

150
00:10:27,990 --> 00:10:29,950
Michael Jenkins: I have to fact check myself on that.

151
00:10:30,670 --> 00:10:41,270
Michael Jenkins: But there's also the Pandas library is just so prevalent in Data Ops because it's got so many capabilities built into the library itself.

152
00:10:41,350 --> 00:10:44,630
Michael Jenkins: You import Pandas and you got tons of stuff going.

153
00:10:44,630 --> 00:10:48,230
Michael Jenkins: It's basically like Excel in your Python script.

154
00:10:48,390 --> 00:10:56,670
Michael Jenkins: You can do all sorts of formulas, data manipulation work in rows and columns, and all of the sorts of operations you can do with Pandas.

155
00:10:56,670 --> 00:11:00,390
Angela Andrews: Hold your wad because Pandas are coming.

156
00:11:01,920 --> 00:11:02,320
Michael Jenkins: Okay.

157
00:11:02,800 --> 00:11:04,160
Michael Jenkins: Watch out for the pandas.

158
00:11:06,320 --> 00:11:07,920
Angela Andrews: Yes, it's later in this chapter.

159
00:11:07,920 --> 00:11:10,000
Michael Jenkins: It's later in this chapter indeed.

160
00:11:10,400 --> 00:11:13,440
Michael Jenkins: Yeah, I think I did make a note for that as well.

161
00:11:15,280 --> 00:11:19,680
Michael Jenkins: The demo that he gave was using the Pipe operator to concatenate data.

162
00:11:20,400 --> 00:11:21,840
Michael Jenkins: And I thought that was kind of simple.

163
00:11:21,840 --> 00:11:25,680
Michael Jenkins: I mean, it's a good demonstration of how you can natively work with data.

164
00:11:26,080 --> 00:11:31,910
Michael Jenkins: And so it was kind of very quick one off way to demonstrate some Data Ops I would hope for.

165
00:11:32,310 --> 00:11:36,150
Angela Andrews: I, I thought it was appropriate, pertinent and use.

166
00:11:36,150 --> 00:11:40,790
Michael Jenkins: Yeah, I mean, again, for me I wanted a little bit more, but I thought it was good.

167
00:11:41,110 --> 00:11:43,549
Michael Jenkins: Yeah, I would have dived a little bit deeper into that.

168
00:11:43,549 --> 00:11:50,230
Michael Jenkins: But again, you know, I'm not writing a book on Python for DevOps, so if that's what he wanted to share.

169
00:11:50,310 --> 00:11:52,790
Michael Jenkins: That's Anoy's prerogative.

170
00:11:53,200 --> 00:11:54,080
Angela Andrews: But should you.

171
00:11:55,600 --> 00:11:57,520
Michael Jenkins: I probably should, yeah.

172
00:11:58,160 --> 00:12:00,960
Angela Andrews: Yeah, we're going to leave that there.

173
00:12:01,280 --> 00:12:03,520
Michael Jenkins: Yeah, Save that for next time.

174
00:12:04,960 --> 00:12:05,520
Michael Jenkins: All right.

175
00:12:05,840 --> 00:12:11,200
Michael Jenkins: The ML Ops demo, he talked about overclocking a gpu and I thought that was.

176
00:12:11,280 --> 00:12:19,400
Michael Jenkins: It was an interesting use case, but I was kind of like the Python there.

177
00:12:19,400 --> 00:12:20,560
Michael Jenkins: It was a script runner.

178
00:12:20,870 --> 00:12:22,070
Michael Jenkins: It was like our script wrapper.

179
00:12:22,230 --> 00:12:23,030
Angela Andrews: Exactly.

180
00:12:23,270 --> 00:12:23,630
Michael Jenkins: Yeah.

181
00:12:23,630 --> 00:12:24,550
Michael Jenkins: It wasn't too much.

182
00:12:25,030 --> 00:12:29,350
Michael Jenkins: It wasn't a good demonstration of what Python could do in this particular space.

183
00:12:29,910 --> 00:12:34,790
Angela Andrews: It was one of those examples where the tool is right there.

184
00:12:35,590 --> 00:12:36,550
Angela Andrews: It's right there.

185
00:12:37,510 --> 00:12:43,990
Angela Andrews: But he used it as a wrapper to go ahead and call the Nvidia CLI program.

186
00:12:44,230 --> 00:12:52,820
Angela Andrews: And at the very end, when you wanted to undo, you know, turn off overclocking, it was basically back to the.

187
00:12:52,980 --> 00:12:54,900
Angela Andrews: The Nvidia tool to.

188
00:12:54,900 --> 00:12:56,420
Michael Jenkins: Yeah, he just ran the command.

189
00:12:56,500 --> 00:12:57,140
Angela Andrews: Exactly.

190
00:12:57,140 --> 00:12:57,540
Michael Jenkins: Forward.

191
00:12:57,540 --> 00:12:58,020
Michael Jenkins: Yeah.

192
00:12:58,020 --> 00:13:05,300
Michael Jenkins: So, yeah, the two things that I, Or I guess the notes that I have for this particular demo or discussion, it would.

193
00:13:05,380 --> 00:13:06,220
Michael Jenkins: He did have.

194
00:13:06,220 --> 00:13:10,060
Michael Jenkins: He used the sub process library to run the Nvidia command.

195
00:13:10,060 --> 00:13:10,460
Michael Jenkins: Okay.

196
00:13:10,460 --> 00:13:19,630
Michael Jenkins: I thought that was cool because you demonstrate how you have your Python process running your main script and then you can run sub process commands from within that script.

197
00:13:19,630 --> 00:13:20,430
Michael Jenkins: That was cool.

198
00:13:20,670 --> 00:13:26,030
Michael Jenkins: I thought it would have been crazy cool if he also used the threading library, which I have used before.

199
00:13:26,750 --> 00:13:37,950
Michael Jenkins: Basically, you can run multi threaded sub processes from your Python script if you could set it up so that you're on your system use.

200
00:13:38,920 --> 00:13:40,280
Michael Jenkins: I'm trying to think of some of the other libraries.

201
00:13:40,280 --> 00:13:43,640
Michael Jenkins: I can't recall right off top of my head, but get information about the system that you're running on.

202
00:13:44,840 --> 00:13:51,960
Michael Jenkins: Determine how many CPUs or GPUs you have, and then overclock specific ones and then target those with a thread.

203
00:13:52,280 --> 00:13:56,720
Michael Jenkins: That would have been a crazy, like, you know, substantial example.

204
00:13:56,720 --> 00:13:57,920
Michael Jenkins: I think so.

205
00:13:57,920 --> 00:13:58,760
Angela Andrews: Put a pin in it.

206
00:13:58,920 --> 00:14:00,120
Michael Jenkins: Oh, yeah.

207
00:14:00,360 --> 00:14:01,240
Michael Jenkins: Second edition.

208
00:14:01,480 --> 00:14:03,000
Angela Andrews: Second edition, yeah.

209
00:14:03,000 --> 00:14:03,440
Michael Jenkins: Anchor.

210
00:14:03,440 --> 00:14:04,520
Michael Jenkins: You can have that one for free.

211
00:14:04,600 --> 00:14:06,600
Angela Andrews: This second edition is going to be fire.

212
00:14:07,310 --> 00:14:10,430
Michael Jenkins: Yeah, it's going to be lit, I will tell you.

213
00:14:11,790 --> 00:14:13,550
Angela Andrews: Are we now at the three V's?

214
00:14:13,630 --> 00:14:18,830
Michael Jenkins: The three V's, Yeah, that was the next one dealing with velocity, volume and variety.

215
00:14:18,910 --> 00:14:20,270
Michael Jenkins: And I will quote the author.

216
00:14:20,270 --> 00:14:26,830
Michael Jenkins: He says the three ways in which the complexity of data can scale are velocity, volume, and variety.

217
00:14:27,070 --> 00:14:41,030
Michael Jenkins: Each of these represents a singularly unique problem when dealing with data where velocity is the speed of data coming in over a period of time, volume is the amount of data, and variety is the diversity of the data.

218
00:14:41,110 --> 00:14:42,310
Michael Jenkins: Being presented.

219
00:14:43,430 --> 00:14:47,190
Michael Jenkins: I've got notes on each one of these, but I'll pause there to see if you had any.

220
00:14:47,750 --> 00:14:55,670
Angela Andrews: I don't have a lot of notes other than reading the section that you just mentioned.

221
00:14:58,070 --> 00:15:06,860
Angela Andrews: The fact that Python is a great data tool when it comes to big data and being able to parse and move through.

222
00:15:07,100 --> 00:15:19,660
Angela Andrews: When I think big data in my personal experience, I think splunk, I think reading logs, I think like just trying to find a needle in a haystack.

223
00:15:19,740 --> 00:15:27,420
Angela Andrews: And the fact that Python is such a great tool to be able to parse, basically parsing data.

224
00:15:27,420 --> 00:15:36,870
Angela Andrews: Like, I'm not a data scientist, but to do something, the very simplest way possible, it's usually just picking up a Python script to.

225
00:15:36,870 --> 00:15:38,230
Angela Andrews: To do what you need to do.

226
00:15:38,230 --> 00:15:39,910
Angela Andrews: Now, I do like this first example.

227
00:15:39,910 --> 00:15:47,750
Angela Andrews: We're back to using Makaroo, which is a site that helps you build kind of like just data.

228
00:15:47,910 --> 00:15:48,310
Angela Andrews: Just.

229
00:15:48,630 --> 00:15:49,710
Angela Andrews: What do we, what are we calling?

230
00:15:49,710 --> 00:15:50,470
Angela Andrews: Data sets?

231
00:15:50,470 --> 00:15:52,190
Angela Andrews: Yeah, how much data?

232
00:15:52,190 --> 00:15:54,150
Angela Andrews: You can pick what the data looks like.

233
00:15:55,660 --> 00:16:08,420
Angela Andrews: And the data set that the author produced isn't like the screen print above, which I would have liked to have gotten more information, but he did say it was 20 fields, so maybe it's.

234
00:16:08,420 --> 00:16:08,900
Angela Andrews: I haven't.

235
00:16:08,900 --> 00:16:12,860
Angela Andrews: Now, what I haven't checked is the repo this week.

236
00:16:13,180 --> 00:16:17,580
Angela Andrews: It could very well be there because that's absolutely a lot of data.

237
00:16:18,940 --> 00:16:21,140
Angela Andrews: Really large fields with a thousand rows.

238
00:16:21,140 --> 00:16:23,120
Michael Jenkins: So I did check the repo.

239
00:16:23,120 --> 00:16:32,120
Michael Jenkins: I don't think the data is there, but I'm going to just Google or take a look at it as you are following along.

240
00:16:32,280 --> 00:16:38,200
Michael Jenkins: Yeah, the data is not there, but yeah, it's all gravy.

241
00:16:39,240 --> 00:16:40,120
Angela Andrews: All right, that's it.

242
00:16:40,840 --> 00:16:49,040
Angela Andrews: That was my take on the volume example, but I'll let you have it.

243
00:16:49,040 --> 00:16:54,500
Michael Jenkins: Yeah, the one thing that I liked about this demo was that he did process a large data set.

244
00:16:54,660 --> 00:16:58,740
Michael Jenkins: And the way that he did it was processing the data one row at a time to preserve memory.

245
00:16:59,620 --> 00:17:16,940
Michael Jenkins: And that's a trick that I learned years ago in Perl because, I mean, back 20 years ago, we didn't have all the gigs of RAM that we had on systems, so you had to read large sets of data one line at a time because the system couldn't handle it by default.

246
00:17:16,940 --> 00:17:24,549
Michael Jenkins: A lot of people say, okay, I'm going to process this file and like file open file name, and you read all that file content into memory.

247
00:17:24,628 --> 00:17:30,309
Michael Jenkins: If you're reading a four gig file and you've got two gigs of ram, guess what?

248
00:17:30,309 --> 00:17:33,269
Michael Jenkins: Do the math Something's got to give, right?

249
00:17:33,829 --> 00:17:45,669
Michael Jenkins: So to get around that, you read one line at a time and you do your processing and then you hold that result of the processing, which may only be a few or a few kb or a few megs at the most or whatever.

250
00:17:46,170 --> 00:17:53,050
Michael Jenkins: So that's one way that you can kind of get around these, you know, processing big data on a system that has constrained memory.

251
00:17:53,050 --> 00:17:55,770
Michael Jenkins: So I really appreciated that he introduced that concept.

252
00:17:56,010 --> 00:17:58,090
Angela Andrews: Yeah, indeed.

253
00:17:58,090 --> 00:17:59,690
Angela Andrews: I have no more takeaways.

254
00:18:00,250 --> 00:18:00,690
Angela Andrews: Cool.

255
00:18:00,690 --> 00:18:01,770
Angela Andrews: This was a, this was a.

256
00:18:02,010 --> 00:18:03,290
Angela Andrews: Not a terrible example.

257
00:18:03,610 --> 00:18:04,330
Michael Jenkins: Yeah, yeah.

258
00:18:04,330 --> 00:18:05,850
Angela Andrews: The power of parsing data.

259
00:18:06,730 --> 00:18:09,370
Angela Andrews: I definitely give it a plus one on that.

260
00:18:09,850 --> 00:18:11,690
Angela Andrews: What about Velocity?

261
00:18:12,400 --> 00:18:23,680
Michael Jenkins: Velocity, for the sake of the discussion, Velocity is talking about dealing with streaming data as opposed to batch processing, which you got your CSV file, the data is all there.

262
00:18:24,000 --> 00:18:29,600
Michael Jenkins: You could process it either if you got enough ram, read that all in the memory, process it one line at a time.

263
00:18:29,600 --> 00:18:30,960
Michael Jenkins: But all the data is present.

264
00:18:31,440 --> 00:18:40,010
Michael Jenkins: But with streaming data, that data is coming continuously and more than likely you're processing it in real time, but you don't know when that data is going to end.

265
00:18:40,410 --> 00:18:41,850
Michael Jenkins: It's just always coming.

266
00:18:42,650 --> 00:18:43,530
Michael Jenkins: It's streaming.

267
00:18:43,770 --> 00:18:52,170
Michael Jenkins: You have to have techniques that you can process in real time as the data is coming in and generate your analysis basically on the fly.

268
00:18:53,449 --> 00:18:58,650
Michael Jenkins: It was good to differentiate streaming data from batch processing.

269
00:18:58,890 --> 00:19:00,730
Angela Andrews: That was a good example, to be honest.

270
00:19:02,010 --> 00:19:05,450
Angela Andrews: That's another plus one for the examples.

271
00:19:06,170 --> 00:19:08,090
Angela Andrews: I know we've been kind of, you know.

272
00:19:08,250 --> 00:19:16,650
Angela Andrews: no, but this example in particular just shows the power of what you can do.

273
00:19:16,810 --> 00:19:19,050
Angela Andrews: That's just, that's more data than you could.

274
00:19:19,050 --> 00:19:21,210
Angela Andrews: You, like you said, you don't know when it's going to end.

275
00:19:21,210 --> 00:19:22,570
Angela Andrews: It's constantly coming in.

276
00:19:22,810 --> 00:19:33,570
Angela Andrews: And the fact that Python has native libraries where you can, well, not native, but you can install these libraries like Apache Flink, which is a stream and batch processing framework.

277
00:19:33,570 --> 00:19:35,600
Angela Andrews: And then of course, Pandas.

278
00:19:36,000 --> 00:19:37,120
Michael Jenkins: Yeah, Pandas.

279
00:19:37,440 --> 00:19:37,840
Michael Jenkins: Yeah.

280
00:19:37,840 --> 00:19:38,320
Michael Jenkins: And that's.

281
00:19:38,320 --> 00:19:39,520
Michael Jenkins: I think this was the one.

282
00:19:40,400 --> 00:19:43,640
Michael Jenkins: In this example he used both Apache Flink and Pandas.

283
00:19:43,640 --> 00:19:46,480
Michael Jenkins: He did Flink to catch the streaming data.

284
00:19:46,720 --> 00:19:51,200
Michael Jenkins: And I guess in this case the data itself wasn't streaming.

285
00:19:52,080 --> 00:19:56,400
Michael Jenkins: I will say it's difficult to set up an example that produces streaming data for.

286
00:19:56,560 --> 00:20:10,980
Michael Jenkins: At scale, you know, so the simple example that he gave where he just had a JSON piece of data and use Flink to process that JSON and then Pandas to write it as a CSV table, that was good enough.

287
00:20:11,380 --> 00:20:18,980
Michael Jenkins: If you understand the process, then you could apply it to a Scenario where you've got actual streaming data coming in.

288
00:20:20,420 --> 00:20:21,460
Michael Jenkins: I was happy with that.

289
00:20:22,420 --> 00:20:23,380
Angela Andrews: I thought so too.

290
00:20:24,020 --> 00:20:28,260
Michael Jenkins: The one thing I will say, I guess I had a couple notes for the people who may be listening to this in the future.

291
00:20:28,260 --> 00:20:29,860
Michael Jenkins: You want to check out this particular chapter.

292
00:20:30,410 --> 00:20:36,170
Michael Jenkins: The code was available for chapter 11, but the Flink demo code wasn't in the repo.

293
00:20:36,570 --> 00:20:45,050
Michael Jenkins: Just FYI, if you pick up this chapter and you want to try it out, I had to copy the code from the book to actually mess around with it.

294
00:20:48,490 --> 00:20:54,090
Michael Jenkins: Just watch out for that pothole as you start driving down this chapter.

295
00:20:54,570 --> 00:20:58,180
Michael Jenkins: Okay, Moving on to variety.

296
00:20:58,900 --> 00:21:01,700
Michael Jenkins: As you mentioned, Variety is dealing with different types of data.

297
00:21:03,060 --> 00:21:05,300
Michael Jenkins: This was an okay demo.

298
00:21:06,020 --> 00:21:07,860
Michael Jenkins: I had hoped for a little bit more.

299
00:21:08,660 --> 00:21:14,820
Michael Jenkins: Basically, the demo shows how to use UTF8 encoding to get better results from your data processing.

300
00:21:15,060 --> 00:21:16,180
Michael Jenkins: He used an emoji.

301
00:21:16,180 --> 00:21:18,900
Michael Jenkins: He was like, hey, your data could have emojis in it.

302
00:21:19,140 --> 00:21:27,070
Michael Jenkins: If you don't encode it properly, the data is going to look like this, which will result in further processing down the line.

303
00:21:30,910 --> 00:21:31,550
Michael Jenkins: I understand.

304
00:21:32,190 --> 00:21:56,810
Michael Jenkins: What I had hoped for was particularly from an mlops perspective, or rather, I guess Data Ops more specifically is using Python to clean data because there's so many other tools and capabilities that you have inside Python that you could use when you're getting data that is maybe missing values or has characters that you don't want.

305
00:21:56,810 --> 00:22:00,730
Michael Jenkins: Like, say if you don't want emojis, then you need to strip all those out.

306
00:22:00,810 --> 00:22:09,850
Michael Jenkins: Or if you need tokenize text to process it down the line, there's all kinds of Python libraries that you could use for that.

307
00:22:10,090 --> 00:22:18,200
Michael Jenkins: I think that might have been a better demonstration of Python's capabilities, but encoding is important, so I'll let it slide for this one.

308
00:22:19,080 --> 00:22:25,560
Angela Andrews: Yeah, again, it was a very simple, very simple example.

309
00:22:25,880 --> 00:22:32,520
Angela Andrews: I don't know if I understand the use of COLAB for this one.

310
00:22:34,440 --> 00:22:36,360
Michael Jenkins: Yeah, I think you just use it as an interface.

311
00:22:36,520 --> 00:22:37,120
Michael Jenkins: To be honest.

312
00:22:37,120 --> 00:22:39,080
Michael Jenkins: You could have done the same thing from your cli.

313
00:22:39,160 --> 00:22:40,120
Angela Andrews: That's what I was doing.

314
00:22:40,350 --> 00:22:53,270
Angela Andrews: I, I maybe just wanted to introduce it again because it was introduced earlier in one of the chapters and one of my things was like, oh, we're creating all these accounts for these one offs.

315
00:22:53,270 --> 00:22:59,070
Angela Andrews: So maybe it was a nod back to, well, let's try it here just to keep the variety going.

316
00:22:59,070 --> 00:23:04,110
Angela Andrews: I, I, I won't comment too much on that.

317
00:23:04,350 --> 00:23:12,510
Angela Andrews: As far as the example, it is a solid example, but there's, you, you even mentioned there's A bunch of different examples.

318
00:23:12,510 --> 00:23:21,350
Angela Andrews: So I thought it interesting that he went into a section about chat GPT.

319
00:23:21,830 --> 00:23:22,950
Angela Andrews: Of course it was coming.

320
00:23:23,110 --> 00:23:24,230
Angela Andrews: She's always there.

321
00:23:24,390 --> 00:23:27,190
Angela Andrews: She's lurking in the background.

322
00:23:29,030 --> 00:23:35,830
Angela Andrews: And yeah, it was almost like, you know, if you don't know, let me explain it to you type of thing.

323
00:23:36,930 --> 00:23:38,130
Angela Andrews: I thought that wasn't bad.

324
00:23:38,370 --> 00:23:46,130
Angela Andrews: But I, I think it's interesting when he picks his moments to be introductory into certain topics.

325
00:23:47,970 --> 00:23:52,770
Angela Andrews: So again, I'm glad that he did, you know, do that introductory.

326
00:23:52,850 --> 00:23:56,770
Angela Andrews: And there was this line in here that I.

327
00:23:56,770 --> 00:23:57,810
Angela Andrews: It made me laugh.

328
00:23:58,050 --> 00:23:58,930
Angela Andrews: And why do you.

329
00:23:59,250 --> 00:24:01,570
Angela Andrews: No one laughs when they read things like this.

330
00:24:02,290 --> 00:24:05,250
Angela Andrews: I find everything absolutely hysterical.

331
00:24:05,330 --> 00:24:06,850
Angela Andrews: That is the story of my life.

332
00:24:07,930 --> 00:24:08,170
Michael Jenkins: He.

333
00:24:08,330 --> 00:24:18,410
Angela Andrews: One of the lines was, however, the newest LLMs have been made so that they can talk about pretty much anything with slight knowledge specialization in certain fields.

334
00:24:18,490 --> 00:24:25,130
Angela Andrews: And I thought about my time on this other podcast where I just knew a little bit about a whole bunch of things.

335
00:24:25,130 --> 00:24:27,690
Angela Andrews: And it was like, I am my own LLM.

336
00:24:27,770 --> 00:24:30,090
Angela Andrews: I can just talk about anything.

337
00:24:30,570 --> 00:24:33,840
Angela Andrews: It doesn't matter what the topic is.

338
00:24:34,320 --> 00:24:36,800
Angela Andrews: I could probably add some context.

339
00:24:36,800 --> 00:24:37,520
Angela Andrews: And I just.

340
00:24:37,680 --> 00:24:38,960
Angela Andrews: That made me laugh.

341
00:24:39,040 --> 00:24:41,800
Angela Andrews: So, yes, I laugh at some of the stupidest things.

342
00:24:41,800 --> 00:24:43,080
Angela Andrews: And I put a little smiley face.

343
00:24:43,080 --> 00:24:45,920
Michael Jenkins: In here because that's good.

344
00:24:46,000 --> 00:24:46,640
Michael Jenkins: That's good.

345
00:24:47,120 --> 00:24:49,120
Angela Andrews: But good analogy.

346
00:24:49,440 --> 00:24:51,440
Angela Andrews: Good analogy that he wrote.

347
00:24:51,680 --> 00:24:53,680
Michael Jenkins: Yeah, I appreciate that he brought it in.

348
00:24:53,680 --> 00:25:02,270
Michael Jenkins: And I mean, I think it attributes itself to the quote that he used at the beginning of the chapter talking about the future is going to be the past.

349
00:25:02,670 --> 00:25:08,070
Michael Jenkins: Because when he mentions this, at the time this book was written, he was talking about chat or he's talking about GPT 3.5.

350
00:25:08,070 --> 00:25:08,510
Angela Andrews: Yes.

351
00:25:08,750 --> 00:25:12,110
Michael Jenkins: And we're so many more models ahead of that time.

352
00:25:12,190 --> 00:25:18,430
Michael Jenkins: And I mean, AI is changing so fast, who knows what an update of this book, like what version we will be on then?

353
00:25:18,670 --> 00:25:27,950
Michael Jenkins: So this was like, I think the best place to kind of bring that quote home to say, hey, if you're working on it now, it's probably going to be out of date down the road.

354
00:25:28,830 --> 00:25:30,040
Michael Jenkins: You got to stay up to date.

355
00:25:30,350 --> 00:25:36,710
Angela Andrews: So the idea of capturing technology, this is just a weird little aside.

356
00:25:36,710 --> 00:25:42,110
Angela Andrews: I'm going to take the idea of capturing technology topics in books, right?

357
00:25:42,350 --> 00:25:47,630
Angela Andrews: He wrote this book and he was referencing a particular version.

358
00:25:47,870 --> 00:25:53,230
Angela Andrews: And now where we are maybe two or three years later, we're way beyond that.

359
00:25:54,030 --> 00:26:03,160
Angela Andrews: Do you think this medium will become less prevalent as we move forward?

360
00:26:03,240 --> 00:26:12,480
Angela Andrews: Since technology is moving really fast, do you think authors will be less inclined to give us this because it's like act's gonna be out of date in no time.

361
00:26:12,480 --> 00:26:13,000
Angela Andrews: Like, what.

362
00:26:13,000 --> 00:26:14,240
Angela Andrews: What are your thoughts on that?

363
00:26:14,240 --> 00:26:16,520
Angela Andrews: I know that's an aside, but yeah, it's totally.

364
00:26:16,520 --> 00:26:16,680
Michael Jenkins: Sorry.

365
00:26:16,680 --> 00:26:17,280
Michael Jenkins: But hey, let's.

366
00:26:17,280 --> 00:26:17,880
Michael Jenkins: Let's get into it.

367
00:26:17,880 --> 00:26:18,480
Michael Jenkins: Let's chop it up.

368
00:26:18,480 --> 00:26:19,000
Angela Andrews: A book club.

369
00:26:19,000 --> 00:26:20,200
Angela Andrews: We need more Father.

370
00:26:21,320 --> 00:26:22,120
Michael Jenkins: Exactly.

371
00:26:22,600 --> 00:26:24,320
Michael Jenkins: I don't, I don't think so.

372
00:26:24,320 --> 00:26:35,280
Michael Jenkins: I think we as authors and readers will continue to, as authors want to create and capture and create the content, capture and create the knowledge.

373
00:26:35,600 --> 00:26:39,679
Michael Jenkins: And as readers consume it, I think the mediums might change.

374
00:26:40,000 --> 00:26:53,250
Michael Jenkins: I think maybe we get to more quote unquote soft books so their PDFs, their markdown, so that they can be more easily updated to stay up to date with the times.

375
00:26:53,410 --> 00:26:53,970
Angela Andrews: Okay.

376
00:26:54,770 --> 00:27:03,890
Michael Jenkins: But I think, like, there's always a place for that knowledge that's never going to change or it will rarely change over time.

377
00:27:03,890 --> 00:27:08,290
Michael Jenkins: Because I say never change, but I mean, stuff always changes, right?

378
00:27:08,290 --> 00:27:08,570
Angela Andrews: Yeah.

379
00:27:08,570 --> 00:27:09,210
Angela Andrews: Changes come.

380
00:27:09,210 --> 00:27:10,490
Michael Jenkins: Change is the only constant.

381
00:27:10,490 --> 00:27:10,850
Michael Jenkins: Right.

382
00:27:11,810 --> 00:27:24,360
Michael Jenkins: So there could be fundamentals that it doesn't matter what language you're using or what time of year, decade you're reading it's always going to be something useful that you can apply to whatever it is you're working on.

383
00:27:24,360 --> 00:27:24,840
Angela Andrews: I agree.

384
00:27:25,000 --> 00:27:26,320
Angela Andrews: I 100 agree.

385
00:27:26,320 --> 00:27:27,240
Angela Andrews: Let me tell you something.

386
00:27:27,320 --> 00:27:30,080
Angela Andrews: I got some of these books up here that have been written.

387
00:27:30,080 --> 00:27:30,680
Angela Andrews: Let me tell.

388
00:27:31,640 --> 00:27:32,760
Angela Andrews: Said an awk.

389
00:27:33,240 --> 00:27:33,720
Michael Jenkins: Yes.

390
00:27:33,960 --> 00:27:35,880
Angela Andrews: That girl is not going anywhere.

391
00:27:36,120 --> 00:27:36,840
Michael Jenkins: Nowhere.

392
00:27:37,000 --> 00:27:38,360
Angela Andrews: I will pull her out.

393
00:27:39,000 --> 00:27:39,840
Angela Andrews: There's a couple.

394
00:27:39,840 --> 00:27:49,020
Angela Andrews: Like you said, some things remain constant that they're the underpinnings of so much that we do.

395
00:27:50,460 --> 00:27:52,220
Angela Andrews: You can't change your foundation.

396
00:27:52,620 --> 00:27:52,980
Michael Jenkins: Yeah.

397
00:27:52,980 --> 00:27:53,260
Angela Andrews: Right.

398
00:27:53,260 --> 00:27:54,860
Angela Andrews: You just have to build from it.

399
00:27:54,940 --> 00:27:55,340
Angela Andrews: So.

400
00:27:55,980 --> 00:27:56,580
Angela Andrews: You're right.

401
00:27:56,580 --> 00:27:57,180
Angela Andrews: You're right.

402
00:27:57,660 --> 00:27:59,940
Angela Andrews: I hope, I hope it never comes to that.

403
00:27:59,940 --> 00:28:11,980
Angela Andrews: But your assessment of maybe the formatting needs to change a little bit to be able to stay up to date is definitely going to be key because I love to read a good book.

404
00:28:12,520 --> 00:28:12,720
Michael Jenkins: Yeah.

405
00:28:12,720 --> 00:28:13,000
Michael Jenkins: Right.

406
00:28:13,160 --> 00:28:17,000
Michael Jenkins: So, all right, I'll throw one in there too.

407
00:28:17,160 --> 00:28:21,560
Michael Jenkins: UNIX in a nutshell was my go to when I first got out of college.

408
00:28:21,880 --> 00:28:24,200
Michael Jenkins: I read UNIX in a nutshell from Cover to cover.

409
00:28:24,440 --> 00:28:25,520
Michael Jenkins: That's how I learned them.

410
00:28:25,520 --> 00:28:27,640
Michael Jenkins: That's how I learned all of my CLI commands.

411
00:28:27,640 --> 00:28:35,320
Michael Jenkins: And that is like a just like field manual that I still turn to this day if I need to find something.

412
00:28:35,560 --> 00:28:37,400
Michael Jenkins: So UNIX in a nutshell for sure.

413
00:28:37,810 --> 00:28:38,130
Angela Andrews: There are.

414
00:28:38,130 --> 00:28:45,970
Angela Andrews: There were a few of those books that I used throughout my time as a sysadmin that didn't matter.

415
00:28:46,610 --> 00:28:49,450
Angela Andrews: That technology had changed.

416
00:28:49,450 --> 00:28:50,370
Angela Andrews: It didn't matter.

417
00:28:51,090 --> 00:28:52,210
Angela Andrews: Those books are still.

418
00:28:52,210 --> 00:28:57,050
Angela Andrews: I hear I saw on LinkedIn someone had just bought this book.

419
00:28:57,050 --> 00:29:01,250
Angela Andrews: Now mind you, it has not been updated, but it is such a bible.

420
00:29:01,570 --> 00:29:09,130
Angela Andrews: It's like, it's the book about Linux that has like the ship on the front and it has all these words on it.

421
00:29:09,130 --> 00:29:10,810
Angela Andrews: It says something about systems administration.

422
00:29:11,930 --> 00:29:13,210
Angela Andrews: I got rid of my copy.

423
00:29:13,370 --> 00:29:15,050
Angela Andrews: I feel terrible that I did.

424
00:29:16,010 --> 00:29:21,450
Angela Andrews: But it's so funny that someone just bought this book and I was just like, see that?

425
00:29:21,450 --> 00:29:23,530
Angela Andrews: Will the underpinnings never change?

426
00:29:24,010 --> 00:29:28,810
Angela Andrews: So it's great that people can go back and kind of pick up and bring it forward.

427
00:29:28,970 --> 00:29:39,590
Michael Jenkins: So, yes, indeed, on that note, we will continue to move forward into chapter 12, how Python integrates with infrastructure as code concepts.

428
00:29:40,150 --> 00:29:42,070
Michael Jenkins: I was excited for this chapter.

429
00:29:42,470 --> 00:29:44,270
Michael Jenkins: I got some good stuff out of it.

430
00:29:44,270 --> 00:29:44,950
Angela Andrews: Oh, good.

431
00:29:45,830 --> 00:29:46,310
Michael Jenkins: Yeah.

432
00:29:46,390 --> 00:29:48,590
Michael Jenkins: So I'm okay.

433
00:29:48,590 --> 00:29:49,830
Michael Jenkins: Ish happy with this.

434
00:29:51,190 --> 00:29:52,510
Michael Jenkins: And I'll just start with a quote.

435
00:29:52,510 --> 00:29:54,590
Michael Jenkins: I've got notes all over the place here, but good.

436
00:29:54,590 --> 00:29:59,560
Michael Jenkins: The quote for this one is, never measure the height of a mountain until you have reached the top.

437
00:29:59,800 --> 00:30:02,120
Michael Jenkins: Then you will see how low it was.

438
00:30:02,440 --> 00:30:06,520
Michael Jenkins: And this is from Dag Hammerskold, a Swedish econ.

439
00:30:06,600 --> 00:30:08,520
Michael Jenkins: Economic economist.

440
00:30:08,840 --> 00:30:09,560
Michael Jenkins: Economist.

441
00:30:10,040 --> 00:30:11,360
Michael Jenkins: I can't read today, folks.

442
00:30:11,360 --> 00:30:20,120
Michael Jenkins: A Swedish economist and diplomat who served as the second secretary general of the United nations from April 1953 until September 1961.

443
00:30:20,520 --> 00:30:20,920
Angela Andrews: Right.

444
00:30:21,400 --> 00:30:25,960
Michael Jenkins: So we kind of had some discourse before we jumped into the studio about what this quote means.

445
00:30:26,700 --> 00:30:30,260
Michael Jenkins: And I kind of took it to mean, I mean, a couple different things.

446
00:30:30,260 --> 00:30:53,220
Michael Jenkins: Maybe some people might not want to get into infrastructure as code, so they kind of see it as this mountain that they have to climb, but once they start using it, they're like, oh, man, my life is so much better now that I have all of my resources codified and I can apply them in different ways in different environments, and I can tear it down, I can build it back up again, and it's easy.

447
00:30:53,860 --> 00:30:54,900
Michael Jenkins: So that mountain was.

448
00:30:54,900 --> 00:30:56,500
Michael Jenkins: Wasn't so high after all.

449
00:30:56,820 --> 00:30:59,900
Angela Andrews: That's a great synopsis of the quote.

450
00:30:59,900 --> 00:31:01,380
Angela Andrews: I agree, I agree with you.

451
00:31:01,380 --> 00:31:04,380
Angela Andrews: Remember I said, I was like, I'm not sure.

452
00:31:04,380 --> 00:31:05,940
Angela Andrews: I mean, I get what he's saying.

453
00:31:06,580 --> 00:31:07,900
Angela Andrews: And then you explained it.

454
00:31:07,900 --> 00:31:10,340
Angela Andrews: I'm like, okay, I. I feel that.

455
00:31:10,340 --> 00:31:11,140
Angela Andrews: I feel that.

456
00:31:11,460 --> 00:31:12,020
Angela Andrews: All right.

457
00:31:12,340 --> 00:31:12,820
Michael Jenkins: Yeah.

458
00:31:13,780 --> 00:31:14,180
Michael Jenkins: One.

459
00:31:14,340 --> 00:31:16,340
Michael Jenkins: Another thing, I'll quote the author on this as.

460
00:31:16,340 --> 00:31:23,280
Michael Jenkins: As he got started on the chapter and he captured one of my favorite words, penultimate.

461
00:31:23,760 --> 00:31:29,200
Michael Jenkins: And I think you should never, ever miss an opportunity to use penultimate, which means next to last.

462
00:31:29,680 --> 00:31:31,120
Michael Jenkins: Basically, that's all it means.

463
00:31:31,440 --> 00:31:33,040
Michael Jenkins: But that is such a chapter.

464
00:31:33,200 --> 00:31:36,160
Michael Jenkins: It's the penultimate chapter of the book, and that's what he says.

465
00:31:36,240 --> 00:31:41,440
Michael Jenkins: So as we approach this penultimate chapter, we get to this topic of infrastructure as code.

466
00:31:41,600 --> 00:31:48,360
Michael Jenkins: So I never miss an opportunity to use the word penultimate if I possibly can, if it makes sense to the conversation.

467
00:31:48,600 --> 00:31:59,120
Michael Jenkins: So if you hear me, folks that are listening, if you catch me in conversation and I say penultimate, just look at me sideways because I'm just trying to use a word that I rarely ever get a chance to use.

468
00:31:59,120 --> 00:31:59,440
Michael Jenkins: That's.

469
00:31:59,440 --> 00:32:00,120
Michael Jenkins: That's what it is.

470
00:32:00,600 --> 00:32:01,960
Angela Andrews: You know what my word is?

471
00:32:02,360 --> 00:32:03,000
Michael Jenkins: What's that?

472
00:32:03,080 --> 00:32:04,120
Angela Andrews: Crestfallen.

473
00:32:04,680 --> 00:32:05,720
Michael Jenkins: Crestfallen.

474
00:32:05,720 --> 00:32:06,760
Michael Jenkins: That's a good one, too.

475
00:32:06,760 --> 00:32:09,080
Angela Andrews: I never miss an opportunity to use that word.

476
00:32:10,200 --> 00:32:12,110
Michael Jenkins: Yeah, yeah.

477
00:32:12,110 --> 00:32:16,030
Angela Andrews: If you have a word, put it in the chat I'd like so I can add it to my lexicon.

478
00:32:16,030 --> 00:32:16,470
Angela Andrews: Gone.

479
00:32:16,470 --> 00:32:16,990
Angela Andrews: Let me.

480
00:32:17,070 --> 00:32:20,390
Angela Andrews: Everybody has that one word or two.

481
00:32:20,390 --> 00:32:25,150
Michael Jenkins: Words, one, where they love to use, but they never, you know, rarely if ever, get a chance to pull it up.

482
00:32:25,230 --> 00:32:28,350
Michael Jenkins: Okay, but anyway, back to the subject at hand.

483
00:32:29,790 --> 00:32:30,510
Michael Jenkins: Let's see.

484
00:32:31,390 --> 00:32:35,550
Michael Jenkins: Well, I mean, I guess bringing, I guess some definition to infrastructure is code.

485
00:32:36,770 --> 00:32:47,010
Michael Jenkins: And quoting the author here, he's saying it's resource creation, provisioning, and updating that are standardized in the form of code with constants and variables arranged in organized way.

486
00:32:47,330 --> 00:32:57,410
Michael Jenkins: So you can standardize the replication of resources, making things such as backups, failovers, redeployments, and a whole lot of other operations activities easier.

487
00:32:58,370 --> 00:32:59,130
Michael Jenkins: I love it.

488
00:32:59,130 --> 00:33:03,210
Michael Jenkins: Yeah, it's code, but it's the stuff.

489
00:33:03,210 --> 00:33:06,720
Michael Jenkins: It's not the software, it's the hardware.

490
00:33:06,720 --> 00:33:09,120
Michael Jenkins: If you want to think about it like that in some configuration.

491
00:33:09,360 --> 00:33:12,160
Michael Jenkins: Well, I guess we can kind of get into that with some of the examples that he has.

492
00:33:13,920 --> 00:33:21,760
Michael Jenkins: But I appreciate infrastructure as code for standing up all my resources in clouds, Google Cloud, aws, Azure.

493
00:33:22,320 --> 00:33:24,440
Michael Jenkins: So I'm not clicking around in the console.

494
00:33:24,440 --> 00:33:26,960
Michael Jenkins: I can just run a couple commands on the CLI and bam.

495
00:33:26,960 --> 00:33:33,600
Michael Jenkins: I got my servers, my databases, my load balancers, buckets, APIs, anything.

496
00:33:33,600 --> 00:33:36,520
Michael Jenkins: You name it, you can code it up and you got it.

497
00:33:37,000 --> 00:33:49,640
Angela Andrews: Now, with the advent of Amazon Q or any other AI tool that you can plug into your code editor, writing AIC has become so easy.

498
00:33:49,880 --> 00:33:50,600
Angela Andrews: It has become.

499
00:33:50,840 --> 00:34:06,360
Angela Andrews: Now, I will say this, and I'm going to let you get back to this chapter because you had more notes on it than I did, but when it comes to using AI as a tool, it is just that.

500
00:34:06,680 --> 00:34:17,639
Angela Andrews: But be sure to use it As a teacher, don't let it be just, oh, I'm just gonna drop this in and it's gonna work and I'm not gonna understand the underpinnings or whatever.

501
00:34:18,520 --> 00:34:28,860
Angela Andrews: I always said that some you have to know the nuts and bolts, not just the framework but the underpinnings because if something goes wrong, you.

502
00:34:28,860 --> 00:34:36,540
Angela Andrews: You have gained the knowledge to figure it out and understand it and troubleshoot it as opposed to not going really deep in something.

503
00:34:36,699 --> 00:34:39,500
Angela Andrews: So again, I am waxing poetic.

504
00:34:41,179 --> 00:34:41,900
Michael Jenkins: I totally agree.

505
00:34:42,139 --> 00:34:46,020
Angela Andrews: Have a lot of thoughts that this chapter just brings to mind, that's all.

506
00:34:46,020 --> 00:34:47,340
Angela Andrews: But I'm gonna let you have it.

507
00:34:47,820 --> 00:34:49,060
Michael Jenkins: Yeah, no doubt.

508
00:34:49,060 --> 00:34:58,260
Michael Jenkins: So he goes into a discussion for either Python libraries or tools that can be used for infrastructure as code.

509
00:34:58,580 --> 00:35:12,260
Michael Jenkins: Salt or Salt Stack, Ansible and Terraform SDK out of these three tools I'm very familiar with Ansible, very familiar with Terraform, not necessarily the Terraform SDK.

510
00:35:12,660 --> 00:35:16,260
Michael Jenkins: I've heard about Salt and Saltstack, but I never applied it.

511
00:35:16,740 --> 00:35:23,850
Michael Jenkins: I always worked in environments that used Chef or Puppet which are Ruby based configuration management tools.

512
00:35:24,410 --> 00:35:32,250
Michael Jenkins: Salt being similar type of tool, configuration management and provisioning tool, but Python based.

513
00:35:32,730 --> 00:35:35,290
Michael Jenkins: I did work through the examples that he gave.

514
00:35:35,290 --> 00:35:41,930
Michael Jenkins: I had to do some a little bit, I guess funkier install for my SALT setup.

515
00:35:42,410 --> 00:35:45,850
Michael Jenkins: It wasn't as simple as saying apt install salt or whatever it was.

516
00:35:45,850 --> 00:35:50,010
Michael Jenkins: I had to add some libraries and updates and whatever on a Ubuntu server.

517
00:35:51,530 --> 00:35:54,570
Michael Jenkins: But I got it to run and everything was working.

518
00:35:55,370 --> 00:36:00,090
Michael Jenkins: I didn't use a minion, I just used one server that was my management server and my minion.

519
00:36:00,170 --> 00:36:09,530
Michael Jenkins: And I guess that's one difference that I will call out between these two tools, SALT and Ansible, which are very similar, both Python based configuration management tools.

520
00:36:09,690 --> 00:36:18,560
Michael Jenkins: But SALT requires a management server to interact with minions that are registered to the server so that they talk over this service.

521
00:36:18,640 --> 00:36:19,040
Michael Jenkins: Right.

522
00:36:19,440 --> 00:36:20,960
Michael Jenkins: Whereas Ansible is.

523
00:36:21,280 --> 00:36:23,080
Michael Jenkins: It doesn't require a management server.

524
00:36:23,080 --> 00:36:24,960
Michael Jenkins: You can have the concept yeah.

525
00:36:24,960 --> 00:36:30,880
Michael Jenkins: Of a management server, but yes it is agentless it because it talks over SSH or maybe even some other protocol.

526
00:36:30,960 --> 00:36:32,560
Angela Andrews: Winr Windows.

527
00:36:32,960 --> 00:36:34,080
Michael Jenkins: Yes, exactly.

528
00:36:34,400 --> 00:36:42,860
Michael Jenkins: So it doesn't require the target system to have any sort of configuration on it to be a part of its management capability.

529
00:36:43,420 --> 00:36:44,700
Michael Jenkins: Love Ansible for that.

530
00:36:45,500 --> 00:36:51,420
Michael Jenkins: That's been my go to for systems that require configuration after they're deployed.

531
00:36:51,820 --> 00:37:09,100
Michael Jenkins: Honestly, one of my just go to approaches, One of my MOs is to deploy stuff with Terraform and Terraform proper like full on HCL code and then once I've got All my resources there use Ansible to configure them.

532
00:37:09,850 --> 00:37:11,850
Michael Jenkins: And that's just like, you know, it's.

533
00:37:11,850 --> 00:37:13,730
Michael Jenkins: Yeah, it's like the one, two punch, right?

534
00:37:13,730 --> 00:37:14,570
Michael Jenkins: You know, it's.

535
00:37:14,650 --> 00:37:15,770
Michael Jenkins: It's a total knockout.

536
00:37:16,250 --> 00:37:16,730
Angela Andrews: Yes.

537
00:37:18,250 --> 00:37:22,330
Angela Andrews: Yeah, you already know my opinions about those things.

538
00:37:22,730 --> 00:37:27,610
Angela Andrews: I. I always said Terraform and Ansible are better together.

539
00:37:28,090 --> 00:37:28,570
Michael Jenkins: Yes.

540
00:37:28,570 --> 00:37:29,210
Angela Andrews: Full stop.

541
00:37:29,370 --> 00:37:30,010
Angela Andrews: Full stop.

542
00:37:31,530 --> 00:37:32,010
Angela Andrews: Yes.

543
00:37:32,410 --> 00:37:33,050
Angela Andrews: I'm sorry.

544
00:37:33,290 --> 00:37:35,350
Angela Andrews: Oh, you keep saying Minions and I just.

545
00:37:35,660 --> 00:37:40,460
Angela Andrews: I'm laughing every time because, yeah, good stuff makes me laugh.

546
00:37:40,460 --> 00:37:40,860
Angela Andrews: So.

547
00:37:40,860 --> 00:37:44,940
Michael Jenkins: Yeah, yeah, we know Minions as cartoon characters, but they can also be servers.

548
00:37:45,180 --> 00:37:45,580
Michael Jenkins: So.

549
00:37:46,540 --> 00:37:47,180
Michael Jenkins: Yeah, it.

550
00:37:47,340 --> 00:37:48,060
Michael Jenkins: It's cool.

551
00:37:49,420 --> 00:37:50,220
Michael Jenkins: Salt Stack.

552
00:37:50,380 --> 00:37:56,620
Michael Jenkins: The example that he gave it was a. I'm trying to think if he wrote a custom thing for.

553
00:37:56,700 --> 00:37:59,020
Michael Jenkins: I guess I could go back to the chapter and check.

554
00:37:59,020 --> 00:38:03,420
Michael Jenkins: He did write a custom module for Ansible through that example.

555
00:38:04,570 --> 00:38:05,130
Michael Jenkins: There were.

556
00:38:06,010 --> 00:38:06,890
Michael Jenkins: Let's see, what were the.

557
00:38:06,890 --> 00:38:08,890
Michael Jenkins: There were some issues that I had with this one.

558
00:38:09,770 --> 00:38:12,810
Michael Jenkins: First of all, there's no code for chapter 12 in the repository.

559
00:38:13,050 --> 00:38:14,170
Michael Jenkins: There's code in the book.

560
00:38:14,730 --> 00:38:17,930
Michael Jenkins: There is not a folder for chapter 12 in the repo.

561
00:38:17,930 --> 00:38:19,050
Michael Jenkins: Maybe it didn't make it.

562
00:38:19,050 --> 00:38:20,170
Michael Jenkins: I don't know what the case is.

563
00:38:20,730 --> 00:38:24,810
Michael Jenkins: I had to either cut and paste or just type it in or where the case was.

564
00:38:26,970 --> 00:38:31,640
Michael Jenkins: For the Ansible demonstration, there was a Playbook call for the custom module.

565
00:38:31,640 --> 00:38:35,840
Michael Jenkins: So basically walks you through the steps to write a custom module for Ansible using Python.

566
00:38:36,000 --> 00:38:36,800
Michael Jenkins: Totally cool.

567
00:38:37,200 --> 00:38:39,520
Michael Jenkins: Yeah, yeah, it made sense for it.

568
00:38:39,840 --> 00:38:47,280
Michael Jenkins: However, the Playbook code and the script name don't align, so it's like maybe one was written before or after the other.

569
00:38:47,600 --> 00:38:52,800
Michael Jenkins: And the quick fix there is just to make the Playbook agree with the script or make the script agree with the Playbook.

570
00:38:52,960 --> 00:38:56,250
Michael Jenkins: And so once I got that fixed, I was able to get it going.

571
00:38:57,130 --> 00:38:59,130
Michael Jenkins: So, yeah, they were both good examples.

572
00:39:00,090 --> 00:39:00,570
Michael Jenkins: Salt.

573
00:39:00,570 --> 00:39:05,610
Michael Jenkins: I had to do a little bit of some command line gymnastics to get Salt installed.

574
00:39:05,690 --> 00:39:07,210
Michael Jenkins: After that, everything was great.

575
00:39:07,530 --> 00:39:08,090
Michael Jenkins: Ansible.

576
00:39:08,090 --> 00:39:13,690
Michael Jenkins: I just had to copy the code from the book directly and then make the Playbook match.

577
00:39:13,850 --> 00:39:15,210
Michael Jenkins: After that, everything was good.

578
00:39:15,690 --> 00:39:22,100
Michael Jenkins: The Terraform CDK example, it was straightforward, fairly straightforward.

579
00:39:22,100 --> 00:39:24,420
Michael Jenkins: I think I might have had to do some installations.

580
00:39:24,580 --> 00:39:26,580
Michael Jenkins: He did say you had to have Terraform installed.

581
00:39:26,660 --> 00:39:28,580
Michael Jenkins: You had to have some other stuff installed for that.

582
00:39:29,860 --> 00:39:40,580
Michael Jenkins: Then even when you do the CDK TF INIT for Python, it requires its own dependencies on the PIP env, so you have to go back and install that thing.

583
00:39:41,140 --> 00:39:43,460
Michael Jenkins: Once I got all that done, I did the init.

584
00:39:43,860 --> 00:39:46,340
Michael Jenkins: I didn't deploy anything with this example.

585
00:39:46,340 --> 00:39:50,650
Michael Jenkins: I just Ran the CDK TF deploy just to see how it worked.

586
00:39:50,960 --> 00:39:59,920
Michael Jenkins: If you don't have any resources in a Terraform thing, it's going to say, hey, this run was successful because I didn't deploy anything or you didn't ask me to deploy anything.

587
00:40:00,880 --> 00:40:01,600
Michael Jenkins: It's fine.

588
00:40:02,400 --> 00:40:09,520
Michael Jenkins: I hesitated to do anything with this because I'm more inclined to just write HCL for my Terraform.

589
00:40:09,600 --> 00:40:13,520
Michael Jenkins: I'm not going to code it up in Python, to be honest.

590
00:40:14,000 --> 00:40:41,770
Michael Jenkins: The only, I guess, approach that I could think of, so I appreciated the example and demonstration for what it was, is, and I think we talked about this in a previous episode where if you have some stupid crazy business case where you have to do something dynamically or like totally different, where it's based on some sort of business logic code and so you're codifying decisions in your deployment, maybe then I could say, okay, I'll let me use Python to do it, because you can't.

591
00:40:42,260 --> 00:40:44,980
Michael Jenkins: Terraform is not a dynamic language.

592
00:40:44,980 --> 00:40:55,060
Michael Jenkins: It's very deterministic in the point that you tell it, hey, I want this many servers, this many databases, and I want them to look like this.

593
00:40:55,220 --> 00:40:59,940
Michael Jenkins: You don't dynamically say, well, if today is Wednesday and I'm deploying, then I only want three servers.

594
00:41:00,660 --> 00:41:02,900
Michael Jenkins: But you could do that if you're doing it in Python.

595
00:41:03,780 --> 00:41:05,300
Michael Jenkins: If it's something funky like that.

596
00:41:05,620 --> 00:41:14,190
Michael Jenkins: Maybe I would use like a software development kit for Terraform through Python.

597
00:41:14,430 --> 00:41:17,070
Michael Jenkins: Otherwise I would probably just leave it alone, to be honest.

598
00:41:17,150 --> 00:41:18,430
Angela Andrews: The right tool for the job.

599
00:41:18,750 --> 00:41:20,350
Michael Jenkins: Yeah, right tool for the job.

600
00:41:21,150 --> 00:41:21,550
Angela Andrews: Well.

601
00:41:21,950 --> 00:41:23,950
Michael Jenkins: Oh, no, please go ahead.

602
00:41:23,950 --> 00:41:33,950
Angela Andrews: I was going to say how he tied up the end of the chapter and he did mention that this was a more serious chapter than maybe some we had seen in the past.

603
00:41:34,920 --> 00:41:38,600
Angela Andrews: Because infrastructure as code is such a serious topic.

604
00:41:39,080 --> 00:41:40,120
Angela Andrews: And that's what he said.

605
00:41:40,440 --> 00:41:47,160
Angela Andrews: It's powerful and it can be the solution to a lot of problems in the application of DevOps principles.

606
00:41:48,280 --> 00:41:49,880
Angela Andrews: That was very spot on.

607
00:41:50,200 --> 00:41:52,200
Angela Andrews: I thought he tied that up very well.

608
00:41:54,360 --> 00:41:58,520
Angela Andrews: Again, this chapter could have been much more.

609
00:41:59,800 --> 00:42:04,200
Angela Andrews: This book could have been a tome had he expanded on some of these examples.

610
00:42:05,410 --> 00:42:08,610
Angela Andrews: But, you know, not the worst examples I've seen.

611
00:42:08,930 --> 00:42:09,730
Angela Andrews: I like that.

612
00:42:09,890 --> 00:42:13,490
Angela Andrews: It would have been nice if they were included in the repo.

613
00:42:14,290 --> 00:42:20,010
Angela Andrews: Maybe he'll get a chance to put those in there at some point because that's an easy way to keep things up to date.

614
00:42:20,010 --> 00:42:24,410
Angela Andrews: But other than that, yeah, I, I didn't hate chapter 12.

615
00:42:24,410 --> 00:42:26,570
Angela Andrews: I thought it was it did what it did.

616
00:42:26,570 --> 00:42:31,500
Angela Andrews: It explained what it explained and yeah, we got through it.

617
00:42:31,980 --> 00:42:33,060
Michael Jenkins: We did Indeed.

618
00:42:33,060 --> 00:42:36,020
Michael Jenkins: So, yeah, MLAPs, data ops and Infrastructure as code.

619
00:42:36,020 --> 00:42:36,420
Angela Andrews: Yeah.

620
00:42:36,420 --> 00:42:39,220
Michael Jenkins: With or without Python, it's up to you.

621
00:42:39,220 --> 00:42:44,140
Michael Jenkins: But Python touches a lot of these different areas with the tools and that's the takeaway.

622
00:42:44,620 --> 00:42:45,100
Michael Jenkins: Yeah.

623
00:42:45,340 --> 00:42:46,940
Angela Andrews: Really, throughout this book.

624
00:42:47,660 --> 00:42:49,180
Angela Andrews: Does it have to be Python?

625
00:42:49,340 --> 00:42:51,900
Angela Andrews: No, but the sheer fact that it can be.

626
00:42:52,380 --> 00:42:54,460
Angela Andrews: Yes, that's impressive.

627
00:42:54,940 --> 00:42:56,200
Michael Jenkins: Yes, indeed, that's impressive.

628
00:42:57,870 --> 00:42:58,270
Michael Jenkins: But, yeah.

629
00:42:58,270 --> 00:43:02,190
Michael Jenkins: So as we, I guess, wind thing down, I wanted to just shout out a couple folks that commented.

630
00:43:02,270 --> 00:43:07,950
Michael Jenkins: We didn't capture any comments as were going through live, so I just wanted to shout out the folks that were following us live.

631
00:43:08,430 --> 00:43:11,310
Michael Jenkins: We got Mike joining us from Dallas, Texas.

632
00:43:11,870 --> 00:43:13,310
Michael Jenkins: Thank you, sir, for joining us.

633
00:43:13,790 --> 00:43:17,190
Michael Jenkins: Shout out to Tech coach Ralph letting us know it's a.

634
00:43:17,190 --> 00:43:18,910
Michael Jenkins: Definitely a good afternoon.

635
00:43:19,550 --> 00:43:21,510
Michael Jenkins: And then we got D.B.

636
00:43:21,510 --> 00:43:22,990
Michael Jenkins: darrell joining us as well.

637
00:43:23,820 --> 00:43:25,020
Michael Jenkins: I love that name, my man.

638
00:43:25,100 --> 00:43:25,900
Michael Jenkins: I know, right?

639
00:43:26,380 --> 00:43:30,700
Michael Jenkins: All about the databases and then random LinkedIn user.

640
00:43:30,780 --> 00:43:32,700
Michael Jenkins: Sorry that the tool didn't capture your name.

641
00:43:32,700 --> 00:43:36,100
Michael Jenkins: I know, but yeah, were glad that you joined us as well.

642
00:43:36,100 --> 00:43:36,700
Michael Jenkins: Oh, okay.

643
00:43:36,700 --> 00:43:37,860
Michael Jenkins: Thanks for joining us, Lanai.

644
00:43:37,860 --> 00:43:38,620
Michael Jenkins: Appreciate it.

645
00:43:39,900 --> 00:43:41,180
Michael Jenkins: And let's see, D.B.

646
00:43:41,180 --> 00:43:47,420
Michael Jenkins: darrell, were talking about the AI models, talking about Chat GPT and he's saying Claude is sitting on the bench.

647
00:43:48,060 --> 00:43:50,220
Michael Jenkins: Put me in, coach, I could do it.

648
00:43:52,710 --> 00:43:52,950
Michael Jenkins: Right.

649
00:43:52,950 --> 00:43:55,990
Angela Andrews: And the other LinkedIn user, his name is Lauren and he is.

650
00:43:55,990 --> 00:43:56,470
Michael Jenkins: Okay.

651
00:43:57,110 --> 00:43:59,110
Michael Jenkins: All right, Lauren, thanks for joining us.

652
00:43:59,750 --> 00:44:00,790
Angela Andrews: Always talking about.

653
00:44:01,670 --> 00:44:05,190
Michael Jenkins: Yeah, said and all still look like hieroglyphs to me.

654
00:44:05,430 --> 00:44:17,030
Michael Jenkins: Let me tell you, if you can read and interpret regular expressions as they apply to Sid, Auk and Pearl, you are on a whole nother level.

655
00:44:17,430 --> 00:44:17,890
Michael Jenkins: Yes.

656
00:44:18,360 --> 00:44:22,040
Michael Jenkins: Yeah, regular expressions, sometimes those look bananas to me.

657
00:44:22,440 --> 00:44:28,800
Michael Jenkins: But AI is also another good tool that you can lean on to say, hey, AI, I need to process data that looks like this.

658
00:44:28,800 --> 00:44:31,720
Michael Jenkins: Can you please write me a regular expression that I can use?

659
00:44:33,640 --> 00:44:34,079
Michael Jenkins: Yeah.

660
00:44:34,079 --> 00:44:38,200
Michael Jenkins: As a starting point because nobody got time to be writing all these regexes.

661
00:44:40,520 --> 00:44:43,630
Angela Andrews: But again, I say sometimes knowing the.

662
00:44:43,860 --> 00:44:45,620
Angela Andrews: The fundamentals is not a bad thing.

663
00:44:45,620 --> 00:44:46,260
Angela Andrews: But I will.

664
00:44:46,420 --> 00:44:46,900
Michael Jenkins: Yeah.

665
00:44:46,900 --> 00:44:50,260
Angela Andrews: Chat GPT slash, perplexity slash.

666
00:44:50,660 --> 00:44:54,180
Angela Andrews: I will be all girl, Help me out, please.

667
00:44:55,780 --> 00:44:56,540
Michael Jenkins: No doubt.

668
00:44:56,540 --> 00:44:57,380
Angela Andrews: It is a tool.

669
00:44:57,460 --> 00:44:58,900
Angela Andrews: It is definitely a tool.

670
00:44:59,140 --> 00:45:00,420
Angela Andrews: So what are we going.

671
00:45:00,420 --> 00:45:01,540
Angela Andrews: What do we got next?

672
00:45:02,180 --> 00:45:07,620
Michael Jenkins: Next up is chapter 13, the tools to take your DevOps to the next level.

673
00:45:07,860 --> 00:45:16,200
Michael Jenkins: So the author is saying we're going to take everything that we've learned from the previous chapters and raise it to a higher level.

674
00:45:16,440 --> 00:45:24,560
Michael Jenkins: So again, I'm excited to see what we got setting up for us, and I'll be ready to dive into the code.

675
00:45:24,560 --> 00:45:26,360
Michael Jenkins: Maybe we'll get a couple examples out of it.

676
00:45:26,440 --> 00:45:27,080
Angela Andrews: Okay.

677
00:45:27,160 --> 00:45:29,240
Michael Jenkins: And, yeah, we'll see what we got.

678
00:45:29,480 --> 00:45:30,360
Angela Andrews: Level up.

679
00:45:30,520 --> 00:45:32,080
Angela Andrews: I'm excited about next week.

680
00:45:32,080 --> 00:45:35,160
Angela Andrews: And unfortunately, that's the end of the book.

681
00:45:35,560 --> 00:45:36,000
Michael Jenkins: Yes.

682
00:45:36,000 --> 00:45:36,920
Angela Andrews: What's up, bro?

683
00:45:37,730 --> 00:45:38,050
Michael Jenkins: Yeah.

684
00:45:38,210 --> 00:45:39,650
Michael Jenkins: Yeah, that will be the.

685
00:45:39,810 --> 00:45:42,290
Michael Jenkins: Because this is the penultimate episode.

686
00:45:42,690 --> 00:45:45,730
Michael Jenkins: It's the penultimate chapter that we just went through.

687
00:45:45,730 --> 00:45:46,690
Michael Jenkins: See what I did there?

688
00:45:48,450 --> 00:45:48,810
Michael Jenkins: Yeah.

689
00:45:48,810 --> 00:45:51,730
Michael Jenkins: We will be landing this season in the next episode.

690
00:45:51,810 --> 00:45:53,330
Michael Jenkins: If you're joining us live.

691
00:45:53,890 --> 00:45:55,810
Michael Jenkins: We're taking a break next week.

692
00:45:55,810 --> 00:45:57,010
Michael Jenkins: We're actually going to be.

693
00:45:57,410 --> 00:46:05,250
Michael Jenkins: Not next week proper, but the week after that, because you might see me at Afrotech next week.

694
00:46:05,250 --> 00:46:10,730
Michael Jenkins: So if you're in Houston, Texas, holler at your boy and maybe we can connect there.

695
00:46:11,130 --> 00:46:13,010
Angela Andrews: Sadly, I won't be there this year.

696
00:46:13,010 --> 00:46:13,690
Michael Jenkins: Oh, man.

697
00:46:13,930 --> 00:46:14,290
Michael Jenkins: Yeah.

698
00:46:14,290 --> 00:46:15,130
Michael Jenkins: I'm gonna miss you.

699
00:46:16,410 --> 00:46:17,610
Michael Jenkins: All right, maybe.

700
00:46:17,610 --> 00:46:18,330
Michael Jenkins: Maybe render.

701
00:46:18,650 --> 00:46:20,410
Michael Jenkins: Render ATL in 2026.

702
00:46:20,569 --> 00:46:21,690
Michael Jenkins: Maybe I'll catch you there.

703
00:46:21,930 --> 00:46:22,490
Angela Andrews: Maybe.

704
00:46:22,490 --> 00:46:23,970
Angela Andrews: Maybe the tickets are on sale.

705
00:46:23,970 --> 00:46:24,490
Angela Andrews: I don't know.

706
00:46:24,490 --> 00:46:24,890
Michael Jenkins: They are.

707
00:46:24,890 --> 00:46:25,210
Angela Andrews: Maybe.

708
00:46:25,210 --> 00:46:25,850
Michael Jenkins: They are indeed.

709
00:46:25,850 --> 00:46:27,490
Michael Jenkins: Yeah, we'll have to put those links in the.

710
00:46:27,490 --> 00:46:30,790
Michael Jenkins: In the show notes, too, for the folks that want to catch up.

711
00:46:31,260 --> 00:46:33,900
Michael Jenkins: But, yeah, in the meantime, you can catch us on YouTube.

712
00:46:33,900 --> 00:46:34,860
Michael Jenkins: Cover the code.

713
00:46:34,940 --> 00:46:36,140
Michael Jenkins: Catch us on LinkedIn.

714
00:46:36,300 --> 00:46:37,740
Michael Jenkins: Hashtag, cover the code.

715
00:46:37,900 --> 00:46:39,700
Michael Jenkins: We are all over the place, y', all.

716
00:46:39,700 --> 00:46:42,700
Michael Jenkins: And I just enjoy chopping up with you, Angela.

717
00:46:42,940 --> 00:46:45,260
Michael Jenkins: Chopping it up with the folks that join us live.

718
00:46:45,980 --> 00:46:52,340
Michael Jenkins: And so I will be chomping at the bit to get back here into the studio and talk about the.

719
00:46:52,340 --> 00:46:53,660
Michael Jenkins: The last chapter in this book.

720
00:46:53,900 --> 00:46:55,740
Angela Andrews: I am so excited.

721
00:46:56,060 --> 00:46:57,180
Angela Andrews: This is definitely.

722
00:46:58,080 --> 00:46:58,720
Angela Andrews: I love this.

723
00:46:58,880 --> 00:47:00,240
Angela Andrews: We have so much fun here.

724
00:47:00,800 --> 00:47:05,520
Angela Andrews: I love the interaction in the chat, even when people are.

725
00:47:05,520 --> 00:47:06,200
Angela Andrews: Oh, I saw.

726
00:47:06,200 --> 00:47:08,160
Angela Andrews: You know, I like when you talk about this.

727
00:47:08,160 --> 00:47:11,920
Angela Andrews: Even if they're watching it after the fact, someone will message me or something.

728
00:47:12,000 --> 00:47:17,920
Angela Andrews: So I do appreciate each and every one of y' all that just rides with us weekend and week out.

729
00:47:17,920 --> 00:47:18,440
Angela Andrews: Depend.

730
00:47:18,440 --> 00:47:27,590
Angela Andrews: Doesn't matter the book, because, you know, what we're doing is coming from a place of love and fun and because, you know, we like what we're doing here.

731
00:47:27,590 --> 00:47:28,710
Angela Andrews: But thank you.

732
00:47:28,710 --> 00:47:29,990
Angela Andrews: Thank you for joining us.

733
00:47:31,030 --> 00:47:31,830
Michael Jenkins: Yes, indeed.

734
00:47:31,830 --> 00:47:32,510
Michael Jenkins: Thanks for joining us.

735
00:47:32,510 --> 00:47:34,310
Michael Jenkins: And we will see you all next time.

736
00:47:34,870 --> 00:47:35,510
Angela Andrews: Awesome.

737
00:47:35,990 --> 00:47:36,470
Michael Jenkins: Bye.

738
00:47:37,030 --> 00:47:37,550
Angela Andrews: See y'.

739
00:47:37,550 --> 00:47:37,750
Angela Andrews: All.

