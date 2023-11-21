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

The *distributed* part of Git refers to the fact that every developer who works with a Git repository can have their own copy of that entire repository. Each developers version of the repository is connected to a shared repository (more on that in the section [Repositories: Local and Remote](#repositories-local-and-remote) below). This connection enables easy collaboration with others.

If you want to learn more, [GitHub Docs](https://docs.github.com/en/get-started/using-git/about-git) has a great introduction to Git.

... Could also include sections from [R Cubed Intro - Version Control](https://r-cubed-intro.rostools.org/sessions/version-control)

- Sections "6.1 What is version control?", "6.2 What is Git?", and "6.3 Basics of Git" could be relevant here

## Repositories: Local and remote

When we want to work on a Git repository, usually, we either create a new one or we want to clone (i.e., download) an existing one to our computer. When we have such a repository residing on our local machine, we call it a *local* repository.

The purpose of a local repository is to make changes to our code, create new branches, and committing the changes. It also allows you to work offline, without needing a network connection.

In contrast, a *remote* repository is a repository hosted on a server or centralised platform (such as GitHub or GitLab). Because this copy of the repository is stored on a remote server, it allows for multiple developers to collaborate on the same codebase by interacting with this shared repository.

The purpose of a remote repository is to serve as a centralised hub for collaboration. Each developer can push their local changes to the remote repository, pull changes made by others, and in this way coordinate their work.

As a result, a local repository is where you do your individual work and manage your project's history on your local machine. The remote repository is a shared, centralised location where you can collaborate and synchronise work with your collaborators.

This interaction between the local and remote repositories is a fundamental aspect of Git.

The figure below shows this interaction between the local and remote repositories (inspired by [this post](https://www.cs.swarthmore.edu/~adanner/help/git/)):

![The interaction between local and remote repositories](../images/local-vs-remote-repo.png)

In the figure, Developer 1 and Developer 2 has each their own local repository. They have cloned (i.e., downloaded) their local repository from the remote repository on e.g., GitHub. In their local repository, they complete their work by adding new files or modified existing ones ("Add" in the figure) and they manage the history by saving their changes (In Git, these "save points" are called commits, "Commits" in the figure).

When they have completed their changes, they can push them to the remote repository for review by their collaborators (more on this process later).

So see the changes that their collaborators have made and pushed to the remote repository, they can "pull" the changes to their local repository.

### Git workflows in practice ... remove/move?

If you like to use the Terminal, the [Git documentation](https://git-scm.com/docs) contains thorough description of git commands, and this [video](https://www.youtube.com/watch?v=USjZcfj8yxE) goes through the basics of Git in 15 minuntes.

If you prefer not to use the Terminal, [GitHub](https://github.com/git-guides) and [VS Code](https://code.visualstudio.com/docs/sourcecontrol/intro-to-git) has great documentation on how to use Git.
