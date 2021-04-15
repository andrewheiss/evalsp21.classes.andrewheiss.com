---
title: "Measurement and DAGs"
linktitle: "4: Measurement and DAGs"
date: "2021-02-01"
start_date: "2021-02-01"
end_date: "2021-02-05"
menu:
  content:
    parent: Course content
    weight: 4
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/chicago-fullnote-bibliography-no-bib.csl"
slides: "04-slides"
---

## Readings

### Measurement

-   <i class="fab fa-youtube"></i> [The witch trial scene from *Monty Python and the Holy Grail*](https://www.youtube.com/watch?v=yp_l5ntikaU)
-   <i class="fas fa-book"></i> Chapter 5 in *Evaluation: A Systematic Approach*.[^1] This is available on iCollege.

### DAGs

-   <i class="far fa-file-pdf"></i> Julia M. Rohrer, “Thinking Clearly About Correlations and Causation: Graphical Causal Models for Observational Data”[^2] This will be posted on iCollege.
-   <i class="far fa-file-pdf"></i> Section 2 only (pp. 4–11) from Julian Schuessler and Peter Selb, “Graphical Causal Models for Survey Inference.”[^3] [The PDF is available at SocArXiv.](https://osf.io/preprints/socarxiv/hbg3m/)
-   <i class="fas fa-book"></i> [Chapter 3, “Directed Acyclic Graphs”](https://mixtape.scunning.com/ch2.html) in *Causal Inference: The Mixtape*[^4]

### DAG example page

-   The [example page on DAGs](/example/dags/) shows how to draw and analyze DAGs with both dagitty.net and R + **ggdag**

## Slides

The slides for today’s lesson are available online as an HTML file. Use the buttons below to open the slides either as an interactive website or as a static PDF (for printing or storing for later). You can also click in the slides below and navigate through them with your left and right arrow keys.

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="introduction-tab" data-toggle="tab" href="#introduction" role="tab" aria-controls="introduction" aria-selected="true">Introduction</a>
</li>
<li class="nav-item">
<a class="nav-link" id="abstraction-stretching-and-validity-tab" data-toggle="tab" href="#abstraction-stretching-and-validity" role="tab" aria-controls="abstraction-stretching-and-validity" aria-selected="false">Abstraction, stretching, and validity</a>
</li>
<li class="nav-item">
<a class="nav-link" id="causal-models-tab" data-toggle="tab" href="#causal-models" role="tab" aria-controls="causal-models" aria-selected="false">Causal models</a>
</li>
<li class="nav-item">
<a class="nav-link" id="paths-doors-and-adjustment-tab" data-toggle="tab" href="#paths-doors-and-adjustment" role="tab" aria-controls="paths-doors-and-adjustment" aria-selected="false">Paths, doors, and adjustment</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="introduction" class="tab-pane fade show active" role="tabpanel" aria-labelledby="introduction-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/04-slides.html#1">
</iframe>

</div>

</div>

<div id="abstraction-stretching-and-validity" class="tab-pane fade" role="tabpanel" aria-labelledby="abstraction-stretching-and-validity-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/04-slides.html#abstraction">
</iframe>

</div>

</div>

<div id="causal-models" class="tab-pane fade" role="tabpanel" aria-labelledby="causal-models-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/04-slides.html#causal-models">
</iframe>

</div>

</div>

<div id="paths-doors-and-adjustment" class="tab-pane fade" role="tabpanel" aria-labelledby="paths-doors-and-adjustment-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/04-slides.html#paths-doors-adjustment">
</iframe>

</div>

</div>

</div>

{{% div fyi %}}
**Fun fact**: If you type <kbd>?</kbd> (or <kbd>shift</kbd> + <kbd>/</kbd>) while going through the slides, you can see a list of special slide-specific commands.
{{% /div %}}

## Videos

Videos for each section of the lecture are [available at this YouTube playlist](https://www.youtube.com/playlist?list=PLS6tnpTr39sFVrHdTifzlyS9dsJjhEhsF).

-   [Introduction](https://www.youtube.com/watch?v=V9zIL7bI9WI&list=PLS6tnpTr39sFVrHdTifzlyS9dsJjhEhsF)
-   [Abstraction, stretching, and validity](https://www.youtube.com/watch?v=QkFhHOoYq-I&list=PLS6tnpTr39sFVrHdTifzlyS9dsJjhEhsF)
-   [Causal models](https://www.youtube.com/watch?v=kJQuH3nssfI&list=PLS6tnpTr39sFVrHdTifzlyS9dsJjhEhsF)
-   [Paths, doors, and adjustment](https://www.youtube.com/watch?v=_qs_1B4ySWY&list=PLS6tnpTr39sFVrHdTifzlyS9dsJjhEhsF)

You can also watch the playlist (and skip around to different sections) here:

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/playlist?list=PLS6tnpTr39sFVrHdTifzlyS9dsJjhEhsF" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>

</div>

[^1]: Peter H. Rossi, Mark W. Lipsey, and Gary T. Henry, *Evaluation: A Systematic Approach*, 8th ed. (Los Angeles: Sage, 2019).

[^2]: Julia M. Rohrer, “Thinking Clearly about Correlations and Causation: Graphical Causal Models for Observational Data,” *Advances in Methods and Practices in Psychological Science* 1, no. 1 (March 2018): 27–42, doi:[10.1177/2515245917745629](https://doi.org/10.1177/2515245917745629).

[^3]: Julian Schuessler and Peter Selb, “Graphical Causal Models for Survey Inference” (Working Paper, SocArXiv, December 17, 2019), doi:[10.31235/osf.io/hbg3m](https://doi.org/10.31235/osf.io/hbg3m).

[^4]: Scott Cunningham, *Causal Inference: The Mixtape* (New Haven, CT: Yale University Press, 2021), <https://mixtape.scunning.com/>.
