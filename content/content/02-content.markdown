---
title: "Regression and inference"
linktitle: "2: Regression and inference"
date: "2021-01-19"
start_date: "2021-01-19"
end_date: "2021-01-22"
menu:
  content:
    parent: Course content
    weight: 2
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/chicago-fullnote-bibliography-no-bib.csl"
slides: "02-slides"
---

## Readings

-   <i class="fas fa-book"></i> Chapter 2 in *Mastering ’Metrics*[^1]
-   <i class="fas fa-book"></i> [Chapter 2, “Probability and Regression Review”](https://mixtape.scunning.com/ch1.html) in *Causal Inference: The Mixtape* (this is long; skim through this as a review)[^2]

## Recommended readings

Look through your notes on regression from your last stats class. Also, you can skim through these resources:

-   <i class="fas fa-book"></i> [6.1–6.4 in *ModernDive*](https://moderndive.com/6-regression.html)[^3]
-   <i class="fas fa-book"></i> [7.1–7.4 in *ModernDive*](https://moderndive.com/7-multiple-regression.html)[^4]
-   <i class="fas fa-book"></i> 7.1–7.3 in *OpenIntro Statistics*[^5]
-   <i class="fas fa-book"></i> 8.1 in *OpenIntro Statistics*[^6]

We’ll review all this regression stuff in the videos, so *don’t panic* if this all looks terrifying! Also, take advantage of the videos that accompany the *OpenIntro* chapters. And *also*, the *OpenIntro* chapters are heavier on the math—don’t worry if you don’t understand everything.

## Slides

The slides for today’s lesson are available online as an HTML file. Use the buttons below to open the slides either as an interactive website or as a static PDF (for printing or storing for later). You can also click in the slides below and navigate through them with your left and right arrow keys.

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="introduction-tab" data-toggle="tab" href="#introduction" role="tab" aria-controls="introduction" aria-selected="true">Introduction</a>
</li>
<li class="nav-item">
<a class="nav-link" id="drawing-lines-tab" data-toggle="tab" href="#drawing-lines" role="tab" aria-controls="drawing-lines" aria-selected="false">Drawing lines</a>
</li>
<li class="nav-item">
<a class="nav-link" id="lines-greek-and-regression-tab" data-toggle="tab" href="#lines-greek-and-regression" role="tab" aria-controls="lines-greek-and-regression" aria-selected="false">Lines, Greek, and regression</a>
</li>
<li class="nav-item">
<a class="nav-link" id="null-worlds-and-statistical-significance-tab" data-toggle="tab" href="#null-worlds-and-statistical-significance" role="tab" aria-controls="null-worlds-and-statistical-significance" aria-selected="false">Null worlds and statistical significance</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="introduction" class="tab-pane fade show active" role="tabpanel" aria-labelledby="introduction-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/02-slides.html#1">
</iframe>

</div>

</div>

<div id="drawing-lines" class="tab-pane fade" role="tabpanel" aria-labelledby="drawing-lines-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/02-slides.html#drawing-lines">
</iframe>

</div>

</div>

<div id="lines-greek-and-regression" class="tab-pane fade" role="tabpanel" aria-labelledby="lines-greek-and-regression-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/02-slides.html#lines-greek-regression">
</iframe>

</div>

</div>

<div id="null-worlds-and-statistical-significance" class="tab-pane fade" role="tabpanel" aria-labelledby="null-worlds-and-statistical-significance-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/02-slides.html#significance">
</iframe>

</div>

</div>

</div>

{{% div fyi %}}
**Fun fact**: If you type <kbd>?</kbd> (or <kbd>shift</kbd> + <kbd>/</kbd>) while going through the slides, you can see a list of special slide-specific commands.
{{% /div %}}

## Videos

Videos for each section of the lecture are [available at this YouTube playlist](https://www.youtube.com/playlist?list=PLS6tnpTr39sERjvBbJGr9mpqvtiLVPzd4).

-   [Introduction](https://www.youtube.com/watch?v=S4OmWxc3h3Y&list=PLS6tnpTr39sERjvBbJGr9mpqvtiLVPzd4)
-   [Drawing lines](https://www.youtube.com/watch?v=DGbLEgL4g6Y&list=PLS6tnpTr39sERjvBbJGr9mpqvtiLVPzd4)
-   [Lines, Greek, and regression](https://www.youtube.com/watch?v=n-rV1TIoIgw&list=PLS6tnpTr39sERjvBbJGr9mpqvtiLVPzd4)
-   [Null worlds and statistical significance](https://www.youtube.com/watch?v=RYKsrTKWCR4&list=PLS6tnpTr39sERjvBbJGr9mpqvtiLVPzd4)

You can also watch the playlist (and skip around to different sections) here:

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/playlist?list=PLS6tnpTr39sERjvBbJGr9mpqvtiLVPzd4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>

</div>

[^1]: Joshua D. Angrist and Jörn-Steffen Pischke, *Mastering ’Metrics: The Path from Cause to Effect* (Princeton, NJ: Princeton University Press, 2015).

[^2]: Scott Cunningham, *Causal Inference: The Mixtape* (New Haven, CT: Yale University Press, 2021), <https://mixtape.scunning.com/>.

[^3]: Chester Ismay and Albert Y. Kim, *ModernDive: An Introduction to Statistical and Data Sciences via R*, 2018, <https://moderndive.com/>.

[^4]: Ibid.

[^5]: David M. Diez, Christopher D. Barr, and Mine Çetinkaya-Rundel, *OpenIntro Statistics*, 3rd ed., 2017, <https://www.openintro.org/stat/textbook.php?stat_book=os>.

[^6]: Ibid.
