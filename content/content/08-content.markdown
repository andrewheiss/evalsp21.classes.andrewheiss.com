---
title: "Difference-in-differences I + II"
linktitle: "8–9: Diff-in-diff I + II"
date: "2021-03-01"
start_date: "2021-03-01"
end_date: "2021-03-12"
menu:
  content:
    parent: Course content
    weight: 8
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/chicago-fullnote-bibliography-no-bib.csl"
slides: "08-slides"
---

## Readings

-   <i class="fas fa-book"></i> Chapter 7 in *Impact Evaluation in Practice*[^1]
-   <i class="fas fa-book"></i> Chapter 5 in *Mastering ’Metrics*[^2]
-   <i class="fas fa-book"></i> [Chapter 9, “Differences-in-differences”](https://mixtape.scunning.com/ch8.html) in *Causal Inference: The Mixtape*[^3]

## Slides

The slides for today’s lesson are available online as an HTML file. Use the buttons below to open the slides either as an interactive website or as a static PDF (for printing or storing for later). You can also click in the slides below and navigate through them with your left and right arrow keys.

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="introduction-tab" data-toggle="tab" href="#introduction" role="tab" aria-controls="introduction" aria-selected="true">Introduction</a>
</li>
<li class="nav-item">
<a class="nav-link" id="quasiexperiments-tab" data-toggle="tab" href="#quasiexperiments" role="tab" aria-controls="quasiexperiments" aria-selected="false">Quasi-experiments</a>
</li>
<li class="nav-item">
<a class="nav-link" id="interactions--regression-tab" data-toggle="tab" href="#interactions--regression" role="tab" aria-controls="interactions--regression" aria-selected="false">Interactions & regression</a>
</li>
<li class="nav-item">
<a class="nav-link" id="two-wrongs-make-a-right-tab" data-toggle="tab" href="#two-wrongs-make-a-right" role="tab" aria-controls="two-wrongs-make-a-right" aria-selected="false">Two wrongs make a right</a>
</li>
<li class="nav-item">
<a class="nav-link" id="diffindiff-assumptions-tab" data-toggle="tab" href="#diffindiff-assumptions" role="tab" aria-controls="diffindiff-assumptions" aria-selected="false">Diff-in-diff assumptions</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="introduction" class="tab-pane fade show active" role="tabpanel" aria-labelledby="introduction-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/08-slides.html#1">
</iframe>

</div>

</div>

<div id="quasiexperiments" class="tab-pane fade" role="tabpanel" aria-labelledby="quasiexperiments-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/08-slides.html#quasi-experiments">
</iframe>

</div>

</div>

<div id="interactions--regression" class="tab-pane fade" role="tabpanel" aria-labelledby="interactions--regression-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/08-slides.html#interactions-regression">
</iframe>

</div>

</div>

<div id="two-wrongs-make-a-right" class="tab-pane fade" role="tabpanel" aria-labelledby="two-wrongs-make-a-right-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/08-slides.html#two-wrongs">
</iframe>

</div>

</div>

<div id="diffindiff-assumptions" class="tab-pane fade" role="tabpanel" aria-labelledby="diffindiff-assumptions-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/08-slides.html#diff-diff-assumptions">
</iframe>

</div>

</div>

</div>

{{% div fyi %}}
**Fun fact**: If you type <kbd>?</kbd> (or <kbd>shift</kbd> + <kbd>/</kbd>) while going through the slides, you can see a list of special slide-specific commands.
{{% /div %}}

## Videos

Videos for each section of the lecture are [available at this YouTube playlist](https://www.youtube.com/playlist?list=PLS6tnpTr39sHydbEoTK9DkyKV92-uE3r-).

-   [Introduction](https://www.youtube.com/watch?v=4y84N23Mx-o&list=PLS6tnpTr39sHydbEoTK9DkyKV92-uE3r-)
-   [Quasi-experiments](https://www.youtube.com/watch?v=ZHBZtKL7zAg&list=PLS6tnpTr39sHydbEoTK9DkyKV92-uE3r-)
-   [Interactions & regression](https://www.youtube.com/watch?v=B060u1zGOWo&list=PLS6tnpTr39sHydbEoTK9DkyKV92-uE3r-)
-   [Two wrongs make a right](https://www.youtube.com/watch?v=0v1aE70FhsQ&list=PLS6tnpTr39sHydbEoTK9DkyKV92-uE3r-)
-   [Diff-in-diff assumptions](https://www.youtube.com/watch?v=tDWoNTk8CS4&list=PLS6tnpTr39sHydbEoTK9DkyKV92-uE3r-)

You can also watch the playlist (and skip around to different sections) here:

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/playlist?list=PLS6tnpTr39sHydbEoTK9DkyKV92-uE3r-" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>

</div>

[^1]: Paul J. Gertler et al., *Impact Evaluation in Practice*, 2nd ed. (Inter-American Development Bank; World Bank, 2016), <https://openknowledge.worldbank.org/handle/10986/25030>.

[^2]: Joshua D. Angrist and Jörn-Steffen Pischke, *Mastering ’Metrics: The Path from Cause to Effect* (Princeton, NJ: Princeton University Press, 2015).

[^3]: Scott Cunningham, *Causal Inference: The Mixtape* (New Haven, CT: Yale University Press, 2021), <https://mixtape.scunning.com/>.
