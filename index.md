---
title: "Git Workflow Guidelines"
date: last-modified
---

{{< include /includes/_wip.qmd >}}

### Introduction

When using Git in a collaborative setting, there are several workflow conventions to choose from. For the Seedcase project, we want to make explicit how we work with Git to ensure a more homogeneous and clear structure across contributions. This includes how and when we create *branches*, *pull requests*,
*reviews*, *issues*, and *commits*, as well as naming conventions for all of the above.

In short, we follow the [GitHub Flow](https://docs.github.com/en/get-started/quickstart/github-flow), a simple Git workflow for collaboration, which will be explained below. See the [GitHub flow decision post](../why-github-flow/index.md) for why we made this decision.

In this post, we will go through the practices of the GitHub flow and clarify the conventions we follow. This is meant as guidelines for streamlining how we work together so we, as a team, can collaborate more effortless and efficiently across repositories.

Remember that this is all a learning process. It takes time to get these practices under the belt, so they are a seamless part of you workflow. So don't be too hard on yourself (and your collaborators), when these guidelines aren't followed :o)

--- issue templates, in another post? "Furthermore, we have implemented a couple of issue templates to follow."

### Introduction to Branches (is this too basic? / should we remove this?)

In Git, a branch is a separate line of development that allows you to work on a feature, bug fix, or other code changes without affecting the main branch of your repository. When the work is complete, the changes can be merged to the main branch. Branches are essential for collaborative software development, and they serve several purposes:

- **Isolating Changes and Parallel Development**: Branches provide isolation for different features or bug fixes. Each branch represents a specific task or development effort, allowing multiple developers to work on different parts of a project simultaneously without interfering with each other's code. This speeds up development and reduces conflicts that may arise when multiple people modify the same code simultaneously.
- **Testing and Experimentation**: You can create branches to experiment with new features or changes without affecting the main project. This is useful for testing ideas or implementing potentially disruptive changes before deciding whether to merge them into the main codebase.
- **Bug Fixing**: When a bug is discovered in the main branch, you can create a branch specifically to fix that bug. Once the fix is ready, it can be merged back into the main branch.

Overall, branches facilitate collaboration among team members by allowing them to work on their individual branches and then merge their changes into the main branch when they're ready. Once you've completed your work in a branch and tested it thoroughly, you can merge it back into the main branch through a pull request (PR). Branches are a fundamental concept in Git and GitHub, and they play a crucial role in managing code changes and ensuring a smooth and organised development workflow.

For a more thorough, general introduction to branches, see the [Git Documentation Book](https://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell) and [GitHub Docs](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-branches).

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

## Overview of Git Workflow Guideline Entries

1. [Branching](branches.md)
2. [Commits](commits.md)
3. [Pull requests](prs.md)
4. [Issues](issues.md)
5. ... Maybe: GitHub actions (automating workflows) + unit testing (maybe even test development guidelines?)?

### Git workflows in practice ... remove/move?

If you like to use the Terminal, the [Git documentation](https://git-scm.com/docs) contins thorough description of git commands.
If you prefer not to use the Terminal, GitHub has great [Documentation](https://docs.github.com/en).

## Automatic workflows (CI pipeline?) ... remove/move?

- Add linters (and the like) to install and use
- Pre-commit hooks? Md checks in doc repos? -- canonical with justfile
- Automatic deletions of branches after merge?
I think this would also be helpful for the Onboarding page.
