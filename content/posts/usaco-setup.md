+++
title = "USACO setup"
date = 2016-03-28
categories = ["Programming"]
tags = ["programming", "competitive programming"]
aliases = ["/usaco-setup.html"]
+++

[USACO](http://www.usaco.org/) is fun. Though it is fairly easy to get up
and running on the platform, there remain a few repetitive steps during
problem solving that can be automated. Here is a brief summary of my
automation steps:

1.  Use a template. Here is mine. Save it as *template.cpp*:
    <script src="https://gist.github.com/j4nu5/d2b23dcdc20c9de48715.js"></script>
2.  Save this script as *solve.sh* in the same directory as above:
    <script src="https://gist.github.com/j4nu5/55005626c282e056b753.js"></script>
3.  All done!
    Whenever you're ready to begin coding a solution, simply execute
    `./solve.sh PROBLEM_NAME`

All the best!
