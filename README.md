# Git for Collaborative Teams
#### An introductory course on team-based collaboration with Git and GitHub

[![](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

## Description

Reproducibility and open scientific practices are increasingly being
requested or required of scientists and researchers, but training on
these practices has not kept pace. This course intends to help bridge
that gap and covers the fundamentals and workflow of data analysis in R.

This repository contains the lesson, lecture, and assignment material
for the course, including the website source files and other associated
course administration files.

For more detail on the course, check out the [welcome
page](https://cog-flow-intro.rostools.org).

## Instructional Design

The lectures and lessons in this course are designed to be presented
primarily with a participatory live-coding approach. This involves an
instructor typing and running code in
[RStudio](https://posit.co/products/open-source/rstudio/) in front of
the class, while the class follows along using their own computers.
Challenges are interspersed in the lesson material, allowing
participants to collaboratively work on smaller coding problems for a
few minutes. All lesson materials are provided ahead of time on the
course website for participants to refer to during lectures.

## Lesson content

The teaching material is found mainly in these locations:

- `index.Rmd`: Contains the overview of the course.
- `preamble/` folder: Contains the files necessary for use before the
    course, for instance the syllabus, schedule, and pre-course tasks.
- `sessions/` folder: Contains the files used during the course (e.g.
    code-along material)
- `appendix/` folder: Contains the files used to support the course,
    such as pre-course tasks, code of conduct, resources, and
    instructions for instructors.
- `slides/`: The lecture slides are rendered into HTML slides from
    Markdown.

The website is generated from [Quarto](https://quarto.org/), so it
follows the file and folder structure conventions from that package.

## Contributing

If you are interested in contributing to the course material, please
refer to the [contributing guidelines](CONTRIBUTING.md). For guidelines
on how to be a helper or instructor, check out the [Teaching in
class](https://guides.rostools.org/instructors) page.

Please note that the project is released with a [Contributor Code of
Conduct](CODE_OF_CONDUCT.md). By contributing to or being involved in
this project, you agree to abide by its terms.

## Re-use

The course is largely designed to be taught in the order given, as each
session builds off of the previous ones. The easiest way to use this
material is to use it as-is, making use of the tips and instructions
found throughout this page. The only thing you might want to make as
your own would be the slides, however, they are also good enough to use
on their own too.

Since this is a CC-BY licensed course, you are free to take and modify
the content to fit your purposes (as long as appropriate attribution is
given). The website is built automatically with GitHub Actions and then
published as a website through Netlify. More detail on how to build your
own website from the material is outside the scope of this document but
you can find more information on Quarto's
[Publishing](https://quarto.org/docs/publishing/) page.

To help with general admin tasks of running the course, there is the
[r3admin](https://github.com/rostools/r3admin) R package.

<!--
### How to cite the material

Please cite the material as:

> TODO: Update

Or as BibTeX:

TODO: Update
-->
