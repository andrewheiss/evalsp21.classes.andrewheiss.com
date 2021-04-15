---
title: "DAGs and potential outcomes"
linktitle: "5: DAGs and potential outcomes"
date: "2021-02-08"
start_date: "2021-02-08"
end_date: "2021-02-12"
menu:
  content:
    parent: Course content
    weight: 5
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/chicago-fullnote-bibliography-no-bib.csl"
slides: "05-slides"
---

## Readings

-   <i class="fas fa-podcast"></i> Prologue and at least one of the four acts from [This American Life, “Gardens of Branching Paths,” episode \#691, January 10, 2020](https://www.thisamericanlife.org/691/gardens-of-branching-paths)
-   <i class="fas fa-book"></i> Chapter 3 in *Impact Evaluation in Practice*[^1]
-   <i class="fas fa-book"></i> [Chapter 4, “Potential Outcomes Causal Model”](https://mixtape.scunning.com/ch3.html) in *Causal Inference: The Mixtape*[^2]

### Potential outcomes, ATEs, and CATEs example page

-   The [example page on potential outcomes, ATEs, and CATEs](/example/po-ate-cate/) shows how to use R to calculate ATEs and CATEs

## Slides

The slides for today’s lesson are available online as an HTML file. Use the buttons below to open the slides either as an interactive website or as a static PDF (for printing or storing for later). You can also click in the slides below and navigate through them with your left and right arrow keys.

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="introduction-tab" data-toggle="tab" href="#introduction" role="tab" aria-controls="introduction" aria-selected="true">Introduction</a>
</li>
<li class="nav-item">
<a class="nav-link" id="doing-observational-causal-inference-tab" data-toggle="tab" href="#doing-observational-causal-inference" role="tab" aria-controls="doing-observational-causal-inference" aria-selected="false">do()ing observational causal inference</a>
</li>
<li class="nav-item">
<a class="nav-link" id="potential-outcomes-tab" data-toggle="tab" href="#potential-outcomes" role="tab" aria-controls="potential-outcomes" aria-selected="false">Potential outcomes</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="introduction" class="tab-pane fade show active" role="tabpanel" aria-labelledby="introduction-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/05-slides.html#1">
</iframe>

</div>

</div>

<div id="doing-observational-causal-inference" class="tab-pane fade" role="tabpanel" aria-labelledby="doing-observational-causal-inference-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/05-slides.html#dag-adjustment">
</iframe>

</div>

</div>

<div id="potential-outcomes" class="tab-pane fade" role="tabpanel" aria-labelledby="potential-outcomes-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/05-slides.html#potential-outcomes">
</iframe>

</div>

</div>

</div>

{{% div fyi %}}
**Fun fact**: If you type <kbd>?</kbd> (or <kbd>shift</kbd> + <kbd>/</kbd>) while going through the slides, you can see a list of special slide-specific commands.
{{% /div %}}

## Videos

Videos for each section of the lecture are [available at this YouTube playlist](https://www.youtube.com/playlist?list=PLS6tnpTr39sHwqEeiG5xb3zAHcQCGWZUC).

-   [Introduction](https://www.youtube.com/watch?v=6n7Qicffb2k&list=PLS6tnpTr39sHwqEeiG5xb3zAHcQCGWZUC)
-   [do()ing observational causal inference](https://www.youtube.com/watch?v=vARju899D3E&list=PLS6tnpTr39sHwqEeiG5xb3zAHcQCGWZUC)
-   [Potential outcomes](https://www.youtube.com/watch?v=0pOA8y3YASA&list=PLS6tnpTr39sHwqEeiG5xb3zAHcQCGWZUC)

You can also watch the playlist (and skip around to different sections) here:

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/playlist?list=PLS6tnpTr39sHwqEeiG5xb3zAHcQCGWZUC" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>

</div>

[^1]: Paul J. Gertler et al., *Impact Evaluation in Practice*, 2nd ed. (Inter-American Development Bank; World Bank, 2016), <https://openknowledge.worldbank.org/handle/10986/25030>.

[^2]: Scott Cunningham, *Causal Inference: The Mixtape* (New Haven, CT: Yale University Press, 2021), <https://mixtape.scunning.com/>.
