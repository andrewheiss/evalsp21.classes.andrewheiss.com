---
title: "Instrumental variables I"
linktitle: "11: IV I"
date: "2021-03-29"
start_date: "2021-03-29"
end_date: "2021-04-02"
menu:
  content:
    parent: Course content
    weight: 11
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/chicago-fullnote-bibliography-no-bib.csl"
slides: "11-slides"
---

## Readings

-   <i class="fas fa-book"></i> Chapter 5 in *Impact Evaluation in Practice*[^1]
-   <i class="fas fa-book"></i> Chapter 3 in *Mastering ’Metrics*[^2]
-   <i class="fas fa-book"></i> [Chapter 7, “Instrumental variables”](https://mixtape.scunning.com/ch6.html) in *Causal Inference: The Mixtape*[^3]

### Instrumental variables

-   The [example page on instrumental variables](/example/iv/) shows how to use R to analyze and estimate causal effects with instrumental variables

## Slides

The slides for today’s lesson are available online as an HTML file. Use the buttons below to open the slides either as an interactive website or as a static PDF (for printing or storing for later). You can also click in the slides below and navigate through them with your left and right arrow keys.

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="introduction-tab" data-toggle="tab" href="#introduction" role="tab" aria-controls="introduction" aria-selected="true">Introduction</a>
</li>
<li class="nav-item">
<a class="nav-link" id="endogeneity-and-exogeneity-tab" data-toggle="tab" href="#endogeneity-and-exogeneity" role="tab" aria-controls="endogeneity-and-exogeneity" aria-selected="false">Endogeneity and exogeneity</a>
</li>
<li class="nav-item">
<a class="nav-link" id="instruments-tab" data-toggle="tab" href="#instruments" role="tab" aria-controls="instruments" aria-selected="false">Instruments</a>
</li>
<li class="nav-item">
<a class="nav-link" id="using-instruments-tab" data-toggle="tab" href="#using-instruments" role="tab" aria-controls="using-instruments" aria-selected="false">Using instruments</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="introduction" class="tab-pane fade show active" role="tabpanel" aria-labelledby="introduction-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/11-slides.html#1">
</iframe>

</div>

</div>

<div id="endogeneity-and-exogeneity" class="tab-pane fade" role="tabpanel" aria-labelledby="endogeneity-and-exogeneity-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/11-slides.html#endo-exo">
</iframe>

</div>

</div>

<div id="instruments" class="tab-pane fade" role="tabpanel" aria-labelledby="instruments-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/11-slides.html#instruments">
</iframe>

</div>

</div>

<div id="using-instruments" class="tab-pane fade" role="tabpanel" aria-labelledby="using-instruments-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/11-slides.html#using-instruments">
</iframe>

</div>

</div>

</div>

{{% div fyi %}}
**Fun fact**: If you type <kbd>?</kbd> (or <kbd>shift</kbd> + <kbd>/</kbd>) while going through the slides, you can see a list of special slide-specific commands.
{{% /div %}}

## Videos

Videos for each section of the lecture are [available at this YouTube playlist](https://www.youtube.com/playlist?list=PLS6tnpTr39sEsOSeMK19h6RWUB5kHrn0q).

-   [Introduction](https://www.youtube.com/watch?v=2L4h_XRrNAg&list=PLS6tnpTr39sEsOSeMK19h6RWUB5kHrn0q)
-   [Endogeneity and exogeneity](https://www.youtube.com/watch?v=fLJKAMSXDyw&list=PLS6tnpTr39sEsOSeMK19h6RWUB5kHrn0q)
-   [Instruments](https://www.youtube.com/watch?v=915d3OMaWNA&list=PLS6tnpTr39sEsOSeMK19h6RWUB5kHrn0q)
-   [Using instruments](https://www.youtube.com/watch?v=rCMQkrVIKOc&list=PLS6tnpTr39sEsOSeMK19h6RWUB5kHrn0q)

You can also watch the playlist (and skip around to different sections) here:

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/playlist?list=PLS6tnpTr39sEsOSeMK19h6RWUB5kHrn0q" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>

</div>

[^1]: Paul J. Gertler et al., *Impact Evaluation in Practice*, 2nd ed. (Inter-American Development Bank; World Bank, 2016), <https://openknowledge.worldbank.org/handle/10986/25030>.

[^2]: Joshua D. Angrist and Jörn-Steffen Pischke, *Mastering ’Metrics: The Path from Cause to Effect* (Princeton, NJ: Princeton University Press, 2015).

[^3]: Scott Cunningham, *Causal Inference: The Mixtape* (New Haven, CT: Yale University Press, 2021), <https://mixtape.scunning.com/>.
