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

In short, [Git](https://git-scm.com/) is a free and open source distributed version control system. With version control, ...

GitHub Docs has a great introduction to Git. Follow [this link](https://docs.github.com/en/get-started/using-git/about-git).

Sections below are copied from <https://github.com/git-guides>
Git is distributed version control software. Version control is a way to save changes over time without overwriting previous versions. Being distributed means that every developer working with a Git repository has a copy of that entire repository - every commit, every branch, every file. If you're used to working with centralized version control systems, this is a big difference!

Whether or not you've worked with version control before, there are a few things you should know before getting started with Git:

Branches are lightweight and cheap, so it's OK to have many of them
Git stores changes in SHA hashes, which work by compressing text files. That makes Git a very good version control system (VCS) for software programming, but not so good for binary files like images or videos.
Git repositories can be connected, so you can work on one locally on your own machine, and connect it to a shared repository. This way, you can push and pull changes to a repository and easily collaborate with others.

Why Use Git?

Version control is very important - without it, you risk losing your work. With Git, you can make a "commit", or a save point, as often as you'd like. You can also go back to previous commits. This takes the pressure off of you while you're working. Commit often and commit early, and you'll never have that gut sinking feeling of overwriting or losing changes.

There are many version control systems out there - but Git has some major advantages.

... Could also include sections from [R Cubed Intro - Version Control](https://r-cubed-intro.rostools.org/sessions/version-control)

- Sections "6.1 What is version control?", "6.2 What is Git?", and "6.3 Basics of Git" could be relevant here

This could also be the place for explaining how Git tracks files and local vs. remote repositories?

### Git workflows in practice ... remove/move?

If you like to use the Terminal, the [Git documentation](https://git-scm.com/docs) contains thorough description of git commands, and this [video](https://www.youtube.com/watch?v=USjZcfj8yxE) goes through the basics of Git in 15 minuntes.

If you prefer not to use the Terminal, [GitHub](https://github.com/git-guides) and [VS Code](https://code.visualstudio.com/docs/sourcecontrol/intro-to-git) has great documentation on how to use Git.
