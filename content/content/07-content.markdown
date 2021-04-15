---
title: "Randomization and matching"
linktitle: "7: Randomization and matching"
date: "2021-02-22"
start_date: "2021-02-22"
end_date: "2021-02-26"
menu:
  content:
    parent: Course content
    weight: 7
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/chicago-fullnote-bibliography-no-bib.csl"
slides: "07-slides"
---

## Readings

-   <i class="fas fa-file-pdf"></i> Andrew Heiss, “Causal Inference,” Chapter 10 in *R for Political Data Science: A Practical Guide* (forthcoming) (Ignore the exercises!). [Get the PDF here.](/files/10-causal-inference.pdf)
-   <i class="fas fa-book"></i> Chapter 4 in *Impact Evaluation in Practice*[^1]
-   <i class="fas fa-book"></i> Chapter 1 in *Mastering ’Metrics*[^2]
-   <i class="fas fa-podcast"></i> Planet Money, [“Moving To Opportunity?,”](https://www.npr.org/2019/08/30/756028025/episode-937-moving-to-opportunity) episode 937
-   <i class="fas fa-external-link-square-alt"></i> Aaron Carroll, [“Workplace Wellness Programs Don’t Work Well. Why Some Studies Show Otherwise,”](https://www.nytimes.com/2018/08/06/upshot/employer-wellness-programs-randomized-trials.html) *The Upshot*, August 6, 2018

### RCTs, matching, and inverse probability weighting

-   The [example page on RCTs](/example/rcts/) shows how to use R to analyze and estimate causal effects from RCTs
-   The [example page on matching and inverse probability weighting](/example/matching-ipw/) shows how to use R to close backdoors, make adjustments, and find causal effects from observational data using matching and inverse probability weighting

## Slides

The slides for today’s lesson are available online as an HTML file. Use the buttons below to open the slides either as an interactive website or as a static PDF (for printing or storing for later). You can also click in the slides below and navigate through them with your left and right arrow keys.

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="introduction-tab" data-toggle="tab" href="#introduction" role="tab" aria-controls="introduction" aria-selected="true">Introduction</a>
</li>
<li class="nav-item">
<a class="nav-link" id="the-magic-of-randomization-tab" data-toggle="tab" href="#the-magic-of-randomization" role="tab" aria-controls="the-magic-of-randomization" aria-selected="false">The magic of randomization</a>
</li>
<li class="nav-item">
<a class="nav-link" id="how-to-analyze-rcts-tab" data-toggle="tab" href="#how-to-analyze-rcts" role="tab" aria-controls="how-to-analyze-rcts" aria-selected="false">How to analyze RCTs</a>
</li>
<li class="nav-item">
<a class="nav-link" id="the-gold-standard-tab" data-toggle="tab" href="#the-gold-standard" role="tab" aria-controls="the-gold-standard" aria-selected="false">The “gold” standard</a>
</li>
<li class="nav-item">
<a class="nav-link" id="adjustment-with-matching-tab" data-toggle="tab" href="#adjustment-with-matching" role="tab" aria-controls="adjustment-with-matching" aria-selected="false">Adjustment with matching</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="introduction" class="tab-pane fade show active" role="tabpanel" aria-labelledby="introduction-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/07-slides.html#1">
</iframe>

</div>

</div>

<div id="the-magic-of-randomization" class="tab-pane fade" role="tabpanel" aria-labelledby="the-magic-of-randomization-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/07-slides.html#magic-randomization">
</iframe>

</div>

</div>

<div id="how-to-analyze-rcts" class="tab-pane fade" role="tabpanel" aria-labelledby="how-to-analyze-rcts-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/07-slides.html#rct-how">
</iframe>

</div>

</div>

<div id="the-gold-standard" class="tab-pane fade" role="tabpanel" aria-labelledby="the-gold-standard-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/07-slides.html#gold-standard">
</iframe>

</div>

</div>

<div id="adjustment-with-matching" class="tab-pane fade" role="tabpanel" aria-labelledby="adjustment-with-matching-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/07-slides.html#matching">
</iframe>

</div>

</div>

</div>

{{% div fyi %}}
**Fun fact**: If you type <kbd>?</kbd> (or <kbd>shift</kbd> + <kbd>/</kbd>) while going through the slides, you can see a list of special slide-specific commands.
{{% /div %}}

## Videos

Videos for each section of the lecture are [available at this YouTube playlist](https://www.youtube.com/playlist?list=PLS6tnpTr39sGJURMOwN9tf9MNDN4t0JMz).

-   [Introduction](https://www.youtube.com/watch?v=m4nKVJ-2K3I&list=PLS6tnpTr39sGJURMOwN9tf9MNDN4t0JMz)
-   [The magic of randomization](https://www.youtube.com/watch?v=-zjSixOybQE&list=PLS6tnpTr39sGJURMOwN9tf9MNDN4t0JMz)
-   [How to analyze RCTs](https://www.youtube.com/watch?v=W0NyALrjLA4&list=PLS6tnpTr39sGJURMOwN9tf9MNDN4t0JMz)
-   [The “gold” standard](https://www.youtube.com/watch?v=vHb2TYAze74&list=PLS6tnpTr39sGJURMOwN9tf9MNDN4t0JMz)
-   [Adjustment with matching](https://www.youtube.com/watch?v=jECz-SS-sqc&list=PLS6tnpTr39sGJURMOwN9tf9MNDN4t0JMz)

You can also watch the playlist (and skip around to different sections) here:

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/playlist?list=PLS6tnpTr39sGJURMOwN9tf9MNDN4t0JMz" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>

</div>

[^1]: Paul J. Gertler et al., *Impact Evaluation in Practice*, 2nd ed. (Inter-American Development Bank; World Bank, 2016), <https://openknowledge.worldbank.org/handle/10986/25030>.

[^2]: Joshua D. Angrist and Jörn-Steffen Pischke, *Mastering ’Metrics: The Path from Cause to Effect* (Princeton, NJ: Princeton University Press, 2015).
