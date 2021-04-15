---
title: "Ethics, stories, and curiosity"
linktitle: "14: Ethics, stories, and curiosity"
date: "2021-04-26"
start_date: "2021-04-26"
end_date: "2021-04-26"
menu:
  content:
    parent: Course content
    weight: 14
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/chicago-fullnote-bibliography-no-bib.csl"
slides: "14-slides"
---

## Readings

This looks like a lot, but most of these are quite short!

### Causal inference and data science

-   <i class="far fa-file-pdf"></i> Miguel A. Hernán, [“The C-Word: Scientific Euphemisms Do Not Improve Causal Inference From Observational Data”](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5888052/)[^1]
-   <i class="fas fa-external-link-square-alt"></i> Hannah Fresques and Meg Marco, [“‘Your Default Position Should Be Skepticism’ and Other Advice for Data Journalists From Hadley Wickham,”](https://www.propublica.org/nerds/hadley-wickham-your-default-position-should-be-skepticism-and-other-advice-for-data-journalists) *ProPublica*, June 10, 2019

### Storytelling

-   <i class="fas fa-book"></i> Chapter 14 in *Impact Evaluation in Practice*[^2]
-   <i class="fas fa-file-pdf"></i> Martin Krzywinski and Alberto Cairo, [“Storytelling”](https://www.nature.com/articles/nmeth.2571.pdf)
-   <i class="fab fa-youtube"></i> Ben Wellington, [“Making data mean more through storytelling”](https://www.youtube.com/watch?v=6xsvGYIxJok)
-   <i class="fab fa-youtube"></i> Will Schoder, [“Every Story is the Same”](https://www.youtube.com/watch?v=LuD2Aa0zFiA)

### Ethics

Keep in mind throughout all these readings that an “algorithm” in these contexts is typically some fancy type of regression model where the outcome variable is something binary like “Safe babysitter/unsafe babysitter,” “Gave up seat in past/didn’t give up seat in past,” or “Violated probation in past/didn’t violate probation in past,” and the explanatory variables are hundreds of pieces of data that might predict those outcomes (social media history, flight history, race, etc.).

Data scientists build a (sometimes proprietary and complex) model based on existing data, plug in values for any given new person, multiply that person’s values by the coefficients in the model, and get a final score in the end for how likely someone is to be a safe babysitter or how likely someone is to return to jail.

-   <i class="fas fa-external-link-square-alt"></i> DJ Patil, [“A Code of Ethics for Data Science”](https://medium.com/@dpatil/a-code-of-ethics-for-data-science-cda27d1fac1) (if your’re interested in this, also check out Mike Loukides, Hilary Mason, and DJ Patil, [*Ethics and Data Science*](https://www.amazon.com/dp/B07GTC8ZN7)
-   <i class="fas fa-external-link-square-alt"></i> [“AI in 2018: A Year in Review”](https://medium.com/@AINowInstitute/ai-in-2018-a-year-in-review-8b161ead2b4e)
-   <i class="fas fa-external-link-square-alt"></i> [“How Big Data Is ‘Automating Inequality’”](https://www.nytimes.com/2018/05/04/books/review/automating-inequality-virginia-eubanks.html)
-   <i class="fas fa-external-link-square-alt"></i> [“In ‘Algorithms of Oppression,’ Safiya Noble finds old stereotypes persist in new media”](https://annenberg.usc.edu/news/diversity-and-inclusion/algorithms-oppression-safiya-noble-finds-old-stereotypes-persist-new)
-   <i class="fas fa-podcast"></i> [99% Invisible, “The Age of the Algorithm”](https://99percentinvisible.org/episode/the-age-of-the-algorithm/): Note that this is a podcast, or a 20ish minute audio story. **Listen to this.**
-   <i class="fas fa-podcast"></i> [On the Media, “Biased Algorithms, Biased World”](https://www.wnycstudios.org/podcasts/otm/segments/biased-algorithms-biased-world)
-   <i class="fas fa-external-link-square-alt"></i> [“Wanted: The ‘perfect babysitter.’ Must pass AI scan for respect and attitude.”](https://www.washingtonpost.com/technology/2018/11/16/wanted-perfect-babysitter-must-pass-ai-scan-respect-attitude/?utm_term=.080010494ed5)
-   <i class="fas fa-external-link-square-alt"></i> [“Companies are on the hook if their hiring algorithms are biased”](https://qz.com/1427621/companies-are-on-the-hook-if-their-hiring-algorithms-are-biased/)
-   <i class="fas fa-external-link-square-alt"></i> [“Courts use algorithms to help determine sentencing, but random people get the same results”](https://www.popsci.com/recidivism-algorithm-random-bias)
-   <i class="fab fa-twitter-square"></i> [David Heinemeier Hansson’s rant on the Apple Card](https://twitter.com/dhh/status/1192540900393705474)
    -   And [Jamie Heinemeier Hansson’s response](https://dhh.dk/2019/about-the-apple-card.html)

## Slides

The slides for today’s lesson are available online as an HTML file. Use the buttons below to open the slides either as an interactive website or as a static PDF (for printing or storing for later). You can also click in the slides below and navigate through them with your left and right arrow keys.

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="introduction-tab" data-toggle="tab" href="#introduction" role="tab" aria-controls="introduction" aria-selected="true">Introduction</a>
</li>
<li class="nav-item">
<a class="nav-link" id="what-did-we-just-learn-tab" data-toggle="tab" href="#what-did-we-just-learn" role="tab" aria-controls="what-did-we-just-learn" aria-selected="false">What did we just learn?</a>
</li>
<li class="nav-item">
<a class="nav-link" id="ethics-of-data-analyitcs-a-tab" data-toggle="tab" href="#ethics-of-data-analyitcs-a" role="tab" aria-controls="ethics-of-data-analyitcs-a" aria-selected="false">Ethics of data analyitcs (a)</a>
</li>
<li class="nav-item">
<a class="nav-link" id="ethics-of-data-analytics-b-tab" data-toggle="tab" href="#ethics-of-data-analytics-b" role="tab" aria-controls="ethics-of-data-analytics-b" aria-selected="false">Ethics of data analytics (b)</a>
</li>
<li class="nav-item">
<a class="nav-link" id="ethics-of-data-analytics-c-tab" data-toggle="tab" href="#ethics-of-data-analytics-c" role="tab" aria-controls="ethics-of-data-analytics-c" aria-selected="false">Ethics of data analytics (c)</a>
</li>
<li class="nav-item">
<a class="nav-link" id="ethics-of-storytelling-a-tab" data-toggle="tab" href="#ethics-of-storytelling-a" role="tab" aria-controls="ethics-of-storytelling-a" aria-selected="false">Ethics of storytelling (a)</a>
</li>
<li class="nav-item">
<a class="nav-link" id="ethics-of-storytelling-b-tab" data-toggle="tab" href="#ethics-of-storytelling-b" role="tab" aria-controls="ethics-of-storytelling-b" aria-selected="false">Ethics of storytelling (b)</a>
</li>
<li class="nav-item">
<a class="nav-link" id="ethics-of-storytelling-c-tab" data-toggle="tab" href="#ethics-of-storytelling-c" role="tab" aria-controls="ethics-of-storytelling-c" aria-selected="false">Ethics of storytelling (c)</a>
</li>
<li class="nav-item">
<a class="nav-link" id="ethics-of-storytelling-d-tab" data-toggle="tab" href="#ethics-of-storytelling-d" role="tab" aria-controls="ethics-of-storytelling-d" aria-selected="false">Ethics of storytelling (d)</a>
</li>
<li class="nav-item">
<a class="nav-link" id="curiosity-tab" data-toggle="tab" href="#curiosity" role="tab" aria-controls="curiosity" aria-selected="false">Curiosity</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="introduction" class="tab-pane fade show active" role="tabpanel" aria-labelledby="introduction-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/14-slides.html#1">
</iframe>

</div>

</div>

<div id="what-did-we-just-learn" class="tab-pane fade" role="tabpanel" aria-labelledby="what-did-we-just-learn-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/14-slides.html#overview">
</iframe>

</div>

</div>

<div id="ethics-of-data-analyitcs-a" class="tab-pane fade" role="tabpanel" aria-labelledby="ethics-of-data-analyitcs-a-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/14-slides.html#ethics-analysis">
</iframe>

</div>

</div>

<div id="ethics-of-data-analytics-b" class="tab-pane fade" role="tabpanel" aria-labelledby="ethics-of-data-analytics-b-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/14-slides.html#analysis-bias">
</iframe>

</div>

</div>

<div id="ethics-of-data-analytics-c" class="tab-pane fade" role="tabpanel" aria-labelledby="ethics-of-data-analytics-c-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/14-slides.html#analysis-evil">
</iframe>

</div>

</div>

<div id="ethics-of-storytelling-a" class="tab-pane fade" role="tabpanel" aria-labelledby="ethics-of-storytelling-a-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/14-slides.html#telling-stories">
</iframe>

</div>

</div>

<div id="ethics-of-storytelling-b" class="tab-pane fade" role="tabpanel" aria-labelledby="ethics-of-storytelling-b-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/14-slides.html#stories-manipulation">
</iframe>

</div>

</div>

<div id="ethics-of-storytelling-c" class="tab-pane fade" role="tabpanel" aria-labelledby="ethics-of-storytelling-c-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/14-slides.html#stories-misrepresentation">
</iframe>

</div>

</div>

<div id="ethics-of-storytelling-d" class="tab-pane fade" role="tabpanel" aria-labelledby="ethics-of-storytelling-d-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/14-slides.html#stories-equity">
</iframe>

</div>

</div>

<div id="curiosity" class="tab-pane fade" role="tabpanel" aria-labelledby="curiosity-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/14-slides.html#curiosity">
</iframe>

</div>

</div>

</div>

{{% div fyi %}}
**Fun fact**: If you type <kbd>?</kbd> (or <kbd>shift</kbd> + <kbd>/</kbd>) while going through the slides, you can see a list of special slide-specific commands.
{{% /div %}}

## Videos

Videos for each section of the lecture are [available at this YouTube playlist](https://www.youtube.com/playlist?list=PLS6tnpTr39sEKfedoOEFJvvNNHtDiYS-Q).

-   [Introduction](https://www.youtube.com/watch?v=djmK0RIldu0&list=PLS6tnpTr39sEKfedoOEFJvvNNHtDiYS-Q)
-   [What did we just learn?](https://www.youtube.com/watch?v=ini449ZegKI&list=PLS6tnpTr39sEKfedoOEFJvvNNHtDiYS-Q)
-   [Ethics of data analyitcs (a)](https://www.youtube.com/watch?v=NjwiGW_bpOg&list=PLS6tnpTr39sEKfedoOEFJvvNNHtDiYS-Q)
-   [Ethics of data analytics (b)](https://www.youtube.com/watch?v=VeX7WWZOyAc&list=PLS6tnpTr39sEKfedoOEFJvvNNHtDiYS-Q)
-   [Ethics of data analytics (c)](https://www.youtube.com/watch?v=lr0rgzRondo&list=PLS6tnpTr39sEKfedoOEFJvvNNHtDiYS-Q)
-   [Ethics of storytelling (a)](https://www.youtube.com/watch?v=RJpl7V76NeA&list=PLS6tnpTr39sEKfedoOEFJvvNNHtDiYS-Q)
-   [Ethics of storytelling (b)](https://www.youtube.com/watch?v=dXPj0XGCpag&list=PLS6tnpTr39sEKfedoOEFJvvNNHtDiYS-Q)
-   [Ethics of storytelling (c)](https://www.youtube.com/watch?v=O_yridxo4A8&list=PLS6tnpTr39sEKfedoOEFJvvNNHtDiYS-Q)
-   [Ethics of storytelling (d)](https://www.youtube.com/watch?v=k-59BLi8dMc&list=PLS6tnpTr39sEKfedoOEFJvvNNHtDiYS-Q)
-   [Curiosity](https://www.youtube.com/watch?v=gqhoIe5vwoU&list=PLS6tnpTr39sEKfedoOEFJvvNNHtDiYS-Q)

You can also watch the playlist (and skip around to different sections) here:

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/playlist?list=PLS6tnpTr39sEKfedoOEFJvvNNHtDiYS-Q" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>

</div>

[^1]: Miguel A. Hernán, “The c-Word: Scientific Euphemisms Do Not Improve Causal Inference from Observational Data,” *American Journal of Publich Health* 108, no. 5 (May 2018): 616–19, doi:[10.2105/AJPH.2018.304337](https://doi.org/10.2105/AJPH.2018.304337).

[^2]: Paul J. Gertler et al., *Impact Evaluation in Practice*, 2nd ed. (Inter-American Development Bank; World Bank, 2016), <https://openknowledge.worldbank.org/handle/10986/25030>.
