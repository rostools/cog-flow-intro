---
title: "Git Workflow Guidelines"
date: last-modified
---

{{< include /includes/_wip.qmd >}}

## Introduction

Note: In this and the following Git workflow posts, we assume that you know the basics of Git and GitHub. If this is not the case, go to the [Introduction to Git](git.md) post.

When using Git individually or in a collaborative setting, there are several workflow conventions to choose from. In this and the following posts, we want to make explicit how to organise your work with [Git](https://git-scm.com/) and [GitHub](https://github.com) to ensure a more homogeneous and clear structure across contributions. This includes how and when to create *branches*, *commits*, *pull requests*, *reviews*, and *issues*, as well as naming conventions.

In short, we encourage the practice of the [GitHub flow](https://docs.github.com/en/get-started/quickstart/github-flow), a simple, yet structured, Git workflow suitable for smaller teams and parallel development. In this post and the following posts, we will go through the practices of the GitHub flow as well as additional naming conventions. This is meant as guidelines for streamlining contributions to enable more effortless and efficient development and collaboration.

**Disclaimer**: This is all a learning process. It takes time to make new practices a habit and make them a seamless part of your workflow. So don't be too hard on yourself (and your collaborators), when these guidelines aren't followed completely. The guidelines are also likely evolve as we discover new or improved workflows and conventions.

## Branching Strategy: GitHub Flow

:warning: Include here or as its own page? :warning:

Different branching strategies can be applied, depending on the project, the team, the organisation, and personal preferences. All have their benefits and disadvantages. We have chosen to follow a [GitHub flow](https://docs.github.com/en/get-started/quickstart/github-flow) approach, which fits the needs for parallel development and smaller teams like ours. To read about alternative strategies and the drivers for this decision, see the [GitHub flow decision post](../why-github-flow/index.md).

The Github flow consists of the following steps:

1. Whenever you want to make a change, create a new *branch* from the main branch (e.g., a branch introducing a new feature, documentation, or fixing a bug)
2. On the new branch, change or add files to implement the required changes with small, frequent *commits*
3. Create a *pull request* and request a *review* from your collaborators
4. Collaborators review the changes and might suggest changes
5. If any suggested changes, you discuss them in the pull request and implement them in the new branch
6. When the changes has been approved, merge the new branch into the main branch
7. Delete the new branch

![Example of the GitHub flow showing the process of creating and merging a new branch](/entries/images/github-flow.png)

Note: We will cover what *branches*, *commits*, *pull requests*, and *reviews* entail on the following pages. For now, having an initial intuition about what they are and how they fit into the GitHub flow is sufficient.

There are a few points about this workflow, we would like to emphasise:

- **The main branch contains production-ready code**: In the GitHub flow, new branches are created from the main branch whenever a developer wants to make changes (e.g., to work on a new feature, documentation, or fixing a bug). The new branch is merged into the main branch as soon as the work is completed and has been reviewed. After the merge with the main branch, the new branch is deleted.
- **One branch for one purpose**: Branches are created for one specific purpose. This ensures shorter living branches (:warning: a rule of thumb could be no branches older than two weeks? :warning:) and allows your collaborators to easily get an overview of the ongoing work. Furthermore, the shorter the changes, the faster it will be reviewed and merged to the main branch.
- **Collaboration happens in the pull requests**: Better work is created when you are not working in a silo. During pull requests, you'll have a conversation about the proposed changes, and your collaborators might have some ideas for improvement. In this way, pull requests are a chance to utilise each other's experiences and expertise.
- **The change does not have to be fully implemented before creating a pull request**: When you create a pull request, you communicate to your collaborators what you are working on. In this [talk](https://www.youtube.com/watch?v=vCwuZfK0VG4) from GitHub Universe 2015, it's recommended to create your pull requests early and not wait until your work is complete for two reasons:
  1) it helps prevent that someone else starts doing the same work as you are currently working on, and
  2) you can start the discussion of the changes you are currently implementing. Remember to mark the PR as a [draft](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/changing-the-stage-of-a-pull-request#converting-a-pull-request-to-a-draft), if it's still a work in progress.
  More on this in the [pull request post](prs.md).
- **Before a branch can be merged to `main``, it needs to be reviewed and approved by a collaborator**: In this way, new or edited code or documentation will only be merged into the main branch after review and the main branch will contain deployable code and documentation.

## Overview of Git Workflow Guideline Entries

**Disclaimer**: With software development comes a lot of creative freedom. There is not *one best way* to do things. The same goes for working with Git and GitHub. We have tried to collect what we believe to be good practices. However, don't worry too much about how you will have to implement all of these recommendations into your practices. You might be able to incorporate some of them into your development process naturally and with practice, while others might take longer to get under your belt.

In the following pages, we will cover:

1. [An Introduction to Git](git.md) ... remove?
2. [Branching](branching.md)
3. [Commits](commits.md)
4. [Pull requests](prs.md)
5. [Issues](issues.md)
6. ~~... Maybe: GitHub actions and pre-commit hooks (automating workflows) + unit testing (maybe even test development guidelines?)?~~
