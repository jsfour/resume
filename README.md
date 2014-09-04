## Resume For Jimi Smoot IV

### What is this Repo?
On the most basic level, this is is my (Jimi Smoot IV's) resume. More importantly, it is a working example of code that I have written and how I approach solving a problem.

#### Problem:
First and foremost, I need a job.

When creating a resume, I usually create a word document, but when my last Macbook Pro ate it, I also lost of license of Office --it was a single install license. Although there are...other means...by which to procure the software, I feel that if I need something, I should pay for it because that means it is valuable. 

I knew that there had to be another way. Ultimately, I determined that it would be best if I am free from Office. One, however, can not be completely free from Office because other people, especially the ones that hire, use Office every day. In order for my resume to be compatible with the most potential hiring managers, it would need to exist in multiple types.

I also wanted to make it easy for people to contact me --because how can you get a job if people can't get a hold of you.

The final problem is that most of the code that I work on is owned by myself or someone else. I rarely contribute to open source projects --not enough time. So people ask me for my github and it looks like a ghost town.

To recap, here are my main problems:
1. I need to be able to create my resume in multiple formats without buying any software
2. It should be easy for people to email me
3. People should know that I can build things by looking at my github profile.

#### Multi format resume solution:
Borrowing from things like [Jekyll](http://jekyllrb.com) I built a quick little script that 'builds' my resume from 'source' (markdown) into 'html', 'psd', and 'docx' so that no matter what the information on all of the resumes is in sync and in multiple formats.

Links To The Various Formats:
- [Download a docx of my resume](https://github.com/jsmootiv/resume/raw/master/bin/jimiSmootResume.docx)
- [Download a html of my resume](https://github.com/jsmootiv/resume/raw/master/bin/jimiSmootResume.html)
- [Download a pdf of my resume](https://github.com/jsmootiv/resume/raw/master/bin/jimiSmootResume.pdf)

#### EASY email solution:
On built, my script also replace the destination of [this link so that all you need to do is click here and click the send button to contact me with a message from a template.](mailto:jsfour@gmail.com?subject=Job Opportunity&body=Hi%20Jimi!%0A%0AI%20or%20someone%20I%20know%20would%20like%20to%20hire%20you.%20Lets%20connect%20sometime%20this%20week%20or%20next%20week%20to%20discuss.%20%0A%0AWhen%20are%20you%20free?)

#### Github code solution:
This entire project solves this problem.

### Isn't this overkill?
Probably. But I don't have many public repos because I spend most of my time working on code for companies. I figured that this would be a good way to get something on my public github page so that you know I can build things.

### Why am I doing this? 
I am am hoping to find a job. I live in Santa Monica but am open to working remotely on full time or part time projects. I have been writing Ruby (mostly with Rails) since 2011 and have recently been experimenting with Ember. I grew up kicking around in a Slackware system.

### What to do next
Check out my resume:
- [Download a docx of my resume](https://github.com/jsmootiv/resume/raw/master/bin/jimiSmootResume.docx)
- [Download a html of my resume](https://github.com/jsmootiv/resume/raw/master/bin/jimiSmootResume.html)
- [Download a pdf of my resume](https://github.com/jsmootiv/resume/raw/master/bin/jimiSmootResume.pdf)

**then**

[Email me to let me know if you have a position available](mailto:jsfour@gmail.com?subject=Job Opportunity&body=Hi%20Jimi!%0A%0AI%20or%20someone%20I%20know%20would%20like%20to%20hire%20you.%20Lets%20connect%20sometime%20this%20week%20or%20next%20week%20to%20discuss.%20%0A%0AWhen%20are%20you%20free?) of if you just want to chat.

### Where you can find me
- Email: [Shoot me an email](mailto:jsfour@gmail.com?subject=Job Opportunity&body=Hi%20Jimi!%0A%0AI%20or%20someone%20I%20know%20would%20like%20to%20hire%20you.%20Lets%20connect%20sometime%20this%20week%20or%20next%20week%20to%20discuss.%20%0A%0AWhen%20are%20you%20free?)
- Linkedin: [http://linkedin.com/in/jsfour](http://linkedin.com/in/jsfour)
- Twitter: [http://twitter.com/jsfour](http://twitter.com/jsfour)
- Github: [http://github.com/jsmootiv](http://github.com/jsmootiv)

---

### Usage
1. Fork
2. Download Dependencies
3. Modify src/resume.md & src/email_template.md
4. Run the builder
```
./build.rb
```
5. Send the resume to your friends!
6. Get a job!

### Dependencies
- Pandoc (https://github.com/jgm/pandoc)
- BasicTeX (http://www.tug.org/mactex/morepackages.html)

### Repo Structure
```
.
|--/src contains the markdown document of the resume
|--/bin contains pdf and word versions of the resume
```