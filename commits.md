---
title: "Commits"
date: last-modified
---

{{< include /includes/_wip.qmd >}}

After you have created a new branch, you probably want to start implementing some changes to your repository. This work could be adding a new feature to your code, fixing a bug, updating the documentation, or something else.

In Git, you log the process of your work through *commits*, the "save points" within Git's version control. Git does not log these save points automatically as you modify files in your repository, so you need to choose at which stages you want to commit/log your changes.

Since your repository's history is logged through commits, how you structure these commits is important - both for you (your future self) and your collaborators. If the history of the repository is a mess, it will be difficult for you and your collaborators to trace back what led to the current state of the repository.

This post covers an introduction to what commits are, how often you should commit, good practices for commit messages, as well as how to do commits using both the Terminal and by clicking around in VS Code. :warning: better phrasing of "clicking around in VS Code" needed :warning:

## Introduction to Commits

**Commits** are the building blocks of save points within Git's version control and can be thought of as "snapshots" or "milestones" along the timeline of your Git repository. These snapshots are not saved automatically in Git, as you create or modify files in your repository. Rather, you decide when to take these snapshots and which changes to include in them.

Over time, commits tells the story of a repository, and how the work has progressed. When you commit, you include a *commit message* briefly describing the work that has been done. In addition to the message, commits include metadata such as the author and a timestamp. Since you decide *when* to commit, *what* to commit, and *how* you describe your commits, you have a lot of control of how your repository's history is logged. But fear not, we will provide you with guidelines on how to utilise this control to your advantage later in this post.

But first, let's back up a little and look at the two phases of committing: When you want to commit some changes you have made, you first have to tell Git what changes you want to include in your commit (i.e., want to capture in the snapshot). This is done by adding them to what is known as the "staging area". Then, you save the snapshot by *committing* the staged changes with a message describing your changes.

Note that you can add as many files and changes to the staging area as you want before you commit them. All changes in the staging area at the time of commit will be a part of the same commit. In this way, the staging area allows you to control which changes you want to include in a specific commit, so you can collect the changes connected to the same unit of work in one commit (we will return to what that means in the section [Atomic Commits](#atomic-commits) below).

Commits are always created locally in the specific branch you are currently on. Therefore, it is important to check that you are on the right branch before you commit (check the [Branching](branching.md#branching-in-practice) post for how you check which branch you are currently on and how to change branch). After you have created your commits, they needs to be *pushed* to the remote repository (on GitHub or or any other version control service that uses Git) for anyone else to be able to see it.

After you have pushed your commits, your work will be backed up on the remote storage. As your work progresses, you continuously commit and push changes to the branch you are working on until you are ready to ask for feedback through a pull request (more on pull requests and the review process in the [Pull Request](prs.md) post).

