## Resume For Jimi Smoot IV
[Download A PDF Of My Resume](https://github.com/jsmootiv/resume/blob/master/bin/jimiSmootResume.docx)

### Contact Info
- **Email: jsfour {{at}} gmail {{dot}} com < Best place to contact me**
- Linkedin: (http://linkedin.com/in/jsfour)
- Twitter: (http://twitter.com/jsfour)
- Github: (http://github.com/jsmootiv)
---

### What is this?

You've found me (or I directed you here). This git repo is an example of what I do. I solve problems. This repo should give you an idea about how I think through things.

**Problem:**

The main problem that I was having is that I need my resume to be outputted in to multiple formats. I did not want to use word or any existing rich text editing tool (like word) because I don't want to be stuck paying for a license forever just to update my resume.

**Solution:**

Borrowing from things like [Jekyll](http://jekyllrb.com), I built a quick little script that 'builds' my resume from 'source' (markdown) into 'html', 'psd', and 'docx' so that no matter what, the information on all of the resumes is in sync.

### Why markdown?
I really like markdown because it can be written in any plain old text buffer. That means that you are focused on writing text and worry about formatting it later. Plus I can write it from Sublime Text :)

### Why am I doing this?
I am am hoping to find a job. I live in Santa Monica and have been writing Ruby for a few years.


### What you should do now:
[Take a look at my resume in the format you desire](https://github.com/jsmootiv/resume/tree/master/bin)

**then**

[Email me to let me know if you have a position available](mailto:jsfour@gmail.com?subject=Job Opportunity&body=Hi%20Jimi!%0A%0AI%20or%20someone%20I%20know%20would%20like%20to%20hire%20you.%20Lets%20connect%20sometime%20this%20week%20or%20next%20week%20to%20discuss.%20%0A%0AWhen%20are%20you%20free?)


### Repo Structure
```
.
|--/src contains the markdown document of the resume
|--/bin contains pdf and word versions of the resume
```

### Dependencies
- Pandoc (https://github.com/jgm/pandoc)
- BasicTeX (http://www.tug.org/mactex/morepackages.html)