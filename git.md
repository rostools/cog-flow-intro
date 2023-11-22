---
title: "Introduction to Git"
date: last-modified
order: 1
---

{{< include /includes/_wip.qmd >}}

**Disclaimer**: If you are already familiar with Git and version control, you can skip this section.

## Introduction

This post will briefly go over what Git and version control is all about. Furthermore, we'll go through what repositories are (and the interaction between local and remote repositories), as well as take a look at how Git tracks files and file changes.

## What is Git?

In short, [Git](https://git-scm.com/) is a free and open source distributed version control system. *Version control* means that changes are saved over time without overwriting previous versions, i.e., we have a history of how our files have evolved over time. The smart thing about version control is that you instead of having "v1", "v2", "v3", etc. of your files, you only need one, and with that file, you will have the history of how it looked at each stage that you have saved (in Git these "save points" are called "commits", something you'll learn more about in the [Commits](commits.md) post). This means that you can always go back to a previous version of your work. Nice!

With Git, you create a "repository" (often called "repo") that serves as a container for the project's code and history. This container includes all files and folders associated with the project as well as the revision history of all files. Everything within the repository is tracked by Git.

The *distributed* part of Git refers to the fact that every developer who works with a Git repository can have their own copy of that entire repository. Each developer's version of the repository is connected to a shared repository (more on that in the section [Repositories: Local and Remote](#repositories-local-and-remote) below). This connection enables easy collaboration with others.

If you want to learn more, [GitHub Docs](https://docs.github.com/en/get-started/using-git/about-git) has a great introduction to Git.

- :warning: I like this part from the link above
  - "The file history appears as snapshots in time called commits. The commits can be organized into multiple lines of development called branches. Because Git is a DVCS, repositories are self-contained units and anyone who has a copy of the repository can access the entire codebase and its history. Using the command line or other ease-of-use interfaces, a Git repository also allows for: interaction with the history, cloning the repository, creating branches, committing, merging, comparing changes across versions of code, and more." :warning:

- Could also include sections from [R Cubed Intro - Version Control](https://r-cubed-intro.rostools.org/sessions/version-control)
  - Sections "6.1 What is version control?", "6.2 What is Git?", and "6.3 Basics of Git" could be relevant here

## Repositories: Local and remote

When we want to work on a Git repository, we either create a new one or we clone (i.e., download) an existing one to our computer. When we have such a repository residing on our local machine, it's called a *local* repository. :warning: do we want to include how to init and clone a repo or it that taking it too far? :warning:

The purpose of a local repository is to make changes to our code, create new branches (more on this in the [Branching](branching.md) post), and committing the changes. It also allows you to work offline, without needing a network connection.

In contrast, a *remote* repository is a repository hosted on a server or centralised platform (such as GitHub or GitLab). Because this copy of the repository is stored on a remote server, it allows for multiple developers to collaborate on the same codebase by interacting with this shared repository.

The purpose of a remote repository is to serve as a centralised hub for collaboration. Each developer can *push* their local changes to the remote repository, *pull* changes made by others to their local repository, and in this way coordinate their work. Furthermore, the remote repository serves as a place where you and your collaborators can review each others changes.

In short, a local repository is where you do your individual work and manage your project's history on your local machine. The remote repository is a shared, centralised location where you can collaborate and synchronise work with your collaborators.

This interaction between the local and remote repositories is a fundamental aspect of Git.

The figure below shows this interaction between the local and remote repositories (inspired by [this post](https://www.cs.swarthmore.edu/~adanner/help/git/)):

![The interaction between local and remote repositories](../images/local-vs-remote-repo.png)

In the figure, Developer 1 and Developer 2 has each their own local repository located on their computer. They have cloned (i.e., downloaded) their local repository from the remote repository on e.g., GitHub or GitLab. In their local repository, they complete their work by adding new files or modifying existing ones ("Add" in the figure) and they manage the history by saving their changes at different points in time ("Commit" in the figure).

When they have completed their changes, they can *push* them to the remote repository so their collaborators can review the changes they made (more on this process in the [Pull Requests](prs.md) post).

To see the changes that their collaborators have made and pushed to the remote repository or update their local repository with the changes in the remote repository, they "pull" the changes to their local repository.

### Git workflows in practice ... remove/move?

If you like to use the Terminal, the [Git documentation](https://git-scm.com/docs) contains thorough description of git commands, and this [video](https://www.youtube.com/watch?v=USjZcfj8yxE) goes through the basics of Git in 15 minuntes.

If you prefer not to use the Terminal, [GitHub](https://github.com/git-guides) and [VS Code](https://code.visualstudio.com/docs/sourcecontrol/intro-to-git) has great documentation on how to use Git.
