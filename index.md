---
title: "Git Workflow Guidelines"
date: last-modified
---

{{< include /includes/_wip.qmd >}}

### Introduction

Note: In this and the following Git workflow posts, we assume that you know the basics of what Git is. If this is not the case, the Git-scm website includes great documentation, videos to get you started, as well as cheat sheets. (from VS code post)
Otherwise, we will briefly introduce Git below.

When using Git in a collaborative setting, there are several workflow conventions to choose from. For the Seedcase project, we want to make explicit how we work with Git to ensure a more homogeneous and clear structure across contributions. This includes how and when we create *branches*, *pull requests*, *reviews*, *issues*, and *commits*, as well as naming conventions for all of the above.

In short, we encourage the practice of the [GitHub Flow](https://docs.github.com/en/get-started/quickstart/github-flow), a simple, yet structured, Git workflow suitable for smaller teams and parallel developmet. See the [GitHub flow decision post](../why-github-flow/index.md) for why we made this decision.

In this post, we will go through the practices of the GitHub flow and clarify the conventions we follow. This is meant as guidelines for streamlining how we work together so we, as a team, can collaborate more effortless and efficiently across repositories.

Remember that this is all a learning process. It takes time to get these practices under the belt, so they are a seamless part of you workflow. So don't be too hard on yourself (and your collaborators), when these guidelines aren't followed :o)

--- issue templates, in another post? "Furthermore, we have implemented a couple of issue templates to follow."

### What is Git?

https://github.com/git-guides

This could also be the place for explaining how Git tracks files and local vs. remote repositories?

### Branching Strategy: GitHub Flow

Different branching strategies can be applied, depending on the project, the team, and the organisation (as well as preferences). We have chosen to follow a GitHub Flow approach. To read about the drivers for this decision, see the [GitHub flow decision post](../why-github-flow/index.md).

This approach has, generally speaking, the following steps:

1. Create a branch from main (e.g., a branch introducing a new feature or fixing a bug)
2. Change or add files to implement the feature
3. Create a pull request and request reviews from your collaborator (and discuss the changes in the PR)
4. Collaborators review the changes and might suggest changes
5. Implement suggested changes (if any)
6. When the changes has been approved, merge the feature branch into the main branch
7. Delete the feature branch

![Example of the GitHub flow showing the process of creating and merging a feature branch](/entries/images/github-flow.png)

There are a few points about this kind of workflow, we would like to emphasise:

- **The main branch contains production-ready code**: In this workflow, branches are created to work on new features, bug fixes, or the like and merged into the main branch as soon as the work is completed and has been reviewed. After the merge with main, the branch is deleted.
- **One branch for one purpose**: Create a branch for one specific purpose. This allows your collaborators to easily get an overview of the ongoing work. Furthermore, the shorter the changes, the faster it will be reviewed and merged to main.
- **Collaboration happens in the PRs**: Better work is created when you are not working in a silo. During PRs, you'll have a conversations about the proposed changes and your collaborators might have some ideas for improvement. PRs is a chance to utilise each other's experiences and expertise
- **The change does not have to be fully implemented before creating a PR**: When you create a PR, you communicate to your collaborators what you are working on. In this [talk](https://www.youtube.com/watch?v=vCwuZfK0VG4), it is recommended to create your PRs early and not wait until your work is complete, for two reasons: 1) it helps prevent that someone else does not start doing the same work as you are currently working on, and 2) you can start the discussion of the changes you are currently implementing. Remember to mark the PR as a [draft](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/changing-the-stage-of-a-pull-request#converting-a-pull-request-to-a-draft), if it's still a work in progress.

- When a developer should branch? From where?
- When they should merge (and how often)? To where?

Following the GitHub flow, branches should be created whenever a developer wants to make changes or add something new to the codebase. They will create the new branch from the main branch. Aim for shorter living branches - e.g., max two weeks? Idk. but be specific!

Before a branch can be merged, it needs to be reviewed and approved by a collaborator. In this way, new or edited code or documentation will only be merged into the main branch after review and the main branch will contain deployable code and documentation.

## Overview of Git Workflow Guideline Entries

**Disclaimer**: With software development comes a lot of creative freedom. There is not one *best* way to do things. The same goes for working with Git. We have tried to collect what we believe to be good practices when working with Git. However, don't worry too much about how you will have to implement all of these recommendations into your practices. You might be able to incorporate some of them into your development process naturally, with practice. However, each can actually be applied iteratively after you have written your code (if need be). ???

1. [Branching](branching.md)
2. [Commits](commits.md)
3. [Pull requests](prs.md)
4. [Issues](issues.md)
5. ... Maybe: GitHub actions (automating workflows) + unit testing (maybe even test development guidelines?)?

### Git workflows in practice ... remove/move?

If you like to use the Terminal, the [Git documentation](https://git-scm.com/docs) contains thorough description of git commands.
If you prefer not to use the Terminal, GitHub has great [Documentation](https://docs.github.com/en).

## Automatic workflows (CI pipeline?) ... remove/move?

- Add linters (and the like) to install and use
- Pre-commit hooks? Md checks in doc repos? -- canonical with justfile
- Automatic deletions of branches after merge?
I think this would also be helpful for the Onboarding page.
