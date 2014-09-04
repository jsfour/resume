## Resume For Jimi Smoot IV
{{RESUME-LINKS}}

### Contact Info
- **Email: jsfour {{at}} gmail {{dot}} com < Best place to contact me**
- Linkedin: (http://linkedin.com/in/jsfour)
- Twitter: (http://twitter.com/jsfour)
- Github: (http://github.com/jsmootiv)
---

### What is this?

You've found me (or I directed you here). This git repo is an example of what I do. I solve problems. 

Take a look around, this repo should give you an idea about how I think through things.

**Problem:**

The main problem that I was having is that I need my resume to be outputted in to multiple formats. I did not want to use any existing rich text editing tool (like word) because I don't want to be stuck paying for a license forever just to update my resume. I also wanted to make it easy for peope to contact me, so I pre-wrote an email that you can send to me by [clicking here to tell me about a job]({{EMAIL-LINK}})

**Solution:**

Borrowing from things like [Jekyll](http://jekyllrb.com), I built a quick little script that 'builds' my resume from 'source' (markdown) into 'html', 'psd', and 'docx' so that no matter what, the information on all of the resumes is in sync.

### Why markdown?
I really like markdown because it can be written in any plain old text buffer. That means that you are focused on writing text and worry about formatting it later. Plus I can write it in Sublime Text :)

### Why am I doing this?
I am am hoping to find a job. I live in Santa Monica and have been writing Ruby (mostly Rails) since 2011. I have also been 


### What you should do now:
{{RESUME-LINKS}}

**then**

[Email me to let me know if you have a position available]({{EMAIL-LINK}})


### Repo Structure
```
.
|--/src contains the markdown document of the resume
|--/bin contains pdf and word versions of the resume
```

### Dependencies
- Pandoc (https://github.com/jgm/pandoc)
- BasicTeX (http://www.tug.org/mactex/morepackages.html)