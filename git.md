---
title: "Introduction to Git"
date: last-modified
order: 1
---

{{< include /includes/_wip.qmd >}}

:warning: Maybe even more a collection of random notes than a wip or a draft :warning:

:warning: I'm debating with myself whether this is too basic. I guess it would be necessary for a "intro to git and github practices module", but might be too basic for describing the workflow practices of our team? :warning:

**Disclaimer**: If you are already familiar with Git and version control, you can skip this section.

## Introduction

This post will briefly go over what Git and version control is all about. Furthermore, we'll go through what repositories are (and the interaction between local and remote repositories), as well as take a look at how Git tracks files and file changes.

## What is Git?

In short, [Git](https://git-scm.com/) is a free and open source distributed version control system. *Version control* means that changes are saved over time without overwriting previous versions, i.e., we have a history of how our files have evolved over time. The smart thing about version control is that you instead of having "v1", "v2", "v3", etc. of your files, you only need one, and with that file, you will have the history of how it looked at each stage that you have saved (in Git these "save points" are called "commits"). This means that you can always go back to a previous version of your work. Nice!

With Git, you create a "repository" (often called "repo") that serves as a container for the project's code and history. Everything within this container is tracked by Git.

The "distributed" part of Git refers to the fact that every developer who works with a Git repository can have their own copy of that entire repository. Each developers version of the repository is connected to a shared repository (more on that in the section [Repositories: Local and Remote](#repositories-local-and-remote) below). This connection enables easy collaboration with others.

GitHub Docs has a great introduction to Git. Follow [this link](https://docs.github.com/en/get-started/using-git/about-git).

... Could also include sections from [R Cubed Intro - Version Control](https://r-cubed-intro.rostools.org/sessions/version-control)

- Sections "6.1 What is version control?", "6.2 What is Git?", and "6.3 Basics of Git" could be relevant here

This could also be the place for explaining how Git tracks files and local vs. remote repositories?

### Git workflows in practice ... remove/move?

If you like to use the Terminal, the [Git documentation](https://git-scm.com/docs) contains thorough description of git commands, and this [video](https://www.youtube.com/watch?v=USjZcfj8yxE) goes through the basics of Git in 15 minuntes.

If you prefer not to use the Terminal, [GitHub](https://github.com/git-guides) and [VS Code](https://code.visualstudio.com/docs/sourcecontrol/intro-to-git) has great documentation on how to use Git.
