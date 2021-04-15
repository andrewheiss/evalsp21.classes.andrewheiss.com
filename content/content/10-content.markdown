---
title: "Regression discontinuity I"
linktitle: "10: RDD I"
date: "2021-03-22"
start_date: "2021-03-22"
end_date: "2021-03-26"
menu:
  content:
    parent: Course content
    weight: 10
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/chicago-fullnote-bibliography-no-bib.csl"
slides: "10-slides"
---

## Readings

-   <i class="fas fa-book"></i> Chapter 6 in *Impact Evaluation in Practice*[^1]
-   <i class="fas fa-book"></i> Chapter 4 in *Mastering ’Metrics*[^2]
-   <i class="fas fa-book"></i> [Chapter 6, “Regression discontinuity”](https://mixtape.scunning.com/ch5.html) in *Causal Inference: The Mixtape*[^3]

### Regression discontinuity

-   The [example page on regression discontinuity](/example/rdd/) shows how to use R to analyze and estimate causal effects with regression discontinuity

## Slides

The slides for today’s lesson are available online as an HTML file. Use the buttons below to open the slides either as an interactive website or as a static PDF (for printing or storing for later). You can also click in the slides below and navigate through them with your left and right arrow keys.

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="introduction-tab" data-toggle="tab" href="#introduction" role="tab" aria-controls="introduction" aria-selected="true">Introduction</a>
</li>
<li class="nav-item">
<a class="nav-link" id="arbitrary-cutoffs-and-causal-inference-tab" data-toggle="tab" href="#arbitrary-cutoffs-and-causal-inference" role="tab" aria-controls="arbitrary-cutoffs-and-causal-inference" aria-selected="false">Arbitrary cutoffs and causal inference</a>
</li>
<li class="nav-item">
<a class="nav-link" id="drawing-lines-and-measuring-gaps-tab" data-toggle="tab" href="#drawing-lines-and-measuring-gaps" role="tab" aria-controls="drawing-lines-and-measuring-gaps" aria-selected="false">Drawing lines and measuring gaps</a>
</li>
<li class="nav-item">
<a class="nav-link" id="main-rdd-concerns-tab" data-toggle="tab" href="#main-rdd-concerns" role="tab" aria-controls="main-rdd-concerns" aria-selected="false">Main RDD concerns</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="introduction" class="tab-pane fade show active" role="tabpanel" aria-labelledby="introduction-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/10-slides.html#1">
</iframe>

</div>

</div>

<div id="arbitrary-cutoffs-and-causal-inference" class="tab-pane fade" role="tabpanel" aria-labelledby="arbitrary-cutoffs-and-causal-inference-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/10-slides.html#arbitrary-cutoffs">
</iframe>

</div>

</div>

<div id="drawing-lines-and-measuring-gaps" class="tab-pane fade" role="tabpanel" aria-labelledby="drawing-lines-and-measuring-gaps-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/10-slides.html#lines-gaps">
</iframe>

</div>

</div>

<div id="main-rdd-concerns" class="tab-pane fade" role="tabpanel" aria-labelledby="main-rdd-concerns-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/10-slides.html#main-concerns">
</iframe>

</div>

</div>

</div>

{{% div fyi %}}
**Fun fact**: If you type <kbd>?</kbd> (or <kbd>shift</kbd> + <kbd>/</kbd>) while going through the slides, you can see a list of special slide-specific commands.
{{% /div %}}

## Videos

Videos for each section of the lecture are [available at this YouTube playlist](https://www.youtube.com/playlist?list=PLS6tnpTr39sGYRrLn6OEoI5kry5gvJvdz).

-   [Introduction](https://www.youtube.com/watch?v=4y84N23Mx-o&list=PLS6tnpTr39sGYRrLn6OEoI5kry5gvJvdz)
-   [Arbitrary cutoffs and causal inference](https://www.youtube.com/watch?v=ZHBZtKL7zAg&list=PLS6tnpTr39sGYRrLn6OEoI5kry5gvJvdz)
-   [Drawing lines and measuring gaps](https://www.youtube.com/watch?v=B060u1zGOWo&list=PLS6tnpTr39sGYRrLn6OEoI5kry5gvJvdz)
-   [Main RDD concerns](https://www.youtube.com/watch?v=0v1aE70FhsQ&list=PLS6tnpTr39sGYRrLn6OEoI5kry5gvJvdz)

You can also watch the playlist (and skip around to different sections) here:

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/playlist?list=PLS6tnpTr39sGYRrLn6OEoI5kry5gvJvdz" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>

</div>

[^1]: Paul J. Gertler et al., *Impact Evaluation in Practice*, 2nd ed. (Inter-American Development Bank; World Bank, 2016), <https://openknowledge.worldbank.org/handle/10986/25030>.

[^2]: Joshua D. Angrist and Jörn-Steffen Pischke, *Mastering ’Metrics: The Path from Cause to Effect* (Princeton, NJ: Princeton University Press, 2015).

[^3]: Scott Cunningham, *Causal Inference: The Mixtape* (New Haven, CT: Yale University Press, 2021), <https://mixtape.scunning.com/>.
