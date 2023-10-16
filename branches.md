---
title: "Branching"
date: last-modified
---

{{< include /includes/_wip.qmd >}}

*Branching* is a fundamental concept in Git and GitHub that plays a crucial role in managing code changes and ensuring smooth and organised development workflows. Branches are also is essential for parallel software development.

This entry covers what a branch is, when to create branches and how much work a single branch should cover (following the [GitHub flow](https://docs.github.com/en/get-started/quickstart/github-flow)), as well as branch naming conventions.

## Introduction to Branches

When you create a Git repository, it will have a single *branch*, known as the **main** branch. Likewise, if you have ever visited a Git repository online and taken a look at the code, you will by default be on the **main** branch. Inherently, there is nothing special about the main branch, except that it is the default branch. When you create a new Git repository, it will have this one branch. Whenever you want to add some new work to your repository or fix a bug, you can create additional branches to encapsulate your changes.

In Git, a branch can be said to be a separate line of development that allows you to work on a feature, bug fix, or other changes without affecting the main branch of your repository. When you create a new branch, you essentially take a "snapshot" of the current codebase at that point in time and create a copy of it to work on separately. After a new branch has been created, you can add and/or change files to complete the new work in this contained part of the repository. When your work is complete, the changes can be reviewed and merged to the main branch.

![Example of simple branching (without GitHub flow).](../images/branching-simple.png)

In this way, branches provide isolation during the development of new features, bug fixes, or experiments. Branching enables parallel development by allowing multiple developers to work on different parts of a project simultaneously without interfering with each other's work. This speeds up development and reduces conflicts that may arise when multiple people modify the codebase at the same time.

![Example of parallel development using branching. Dev = Developer. PR = Pull request. \n NB: Pull requests and reviews process are covered in the post on [pull requests](prs.md).](../images/branching-parallel-development.png)

In the figure above, showing an example of parallel development, two branches are created from the main branch by two developers: bugfix/fix-data-cleaning-error created by Developer 1 and feature/add-variance-plot created by Developer 2. This branching allows for each developer to work on their changes in isolation before creating a pull request and merging the changes into the main branch.

Hopefully, this gave you an intuition about what a branch is and what the benefits of branching are. If you would like more information on branches, check out the [GitHub Documentation](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-branches) and the [Git Documentation Book](https://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell).

## When To Create Branches (and How Much They Should Cover)

Every time you want to add something new to or modify existing work in a Git repository, you should create a new branch (following [GitHub flow](https://docs.github.com/en/get-started/quickstart/github-flow)). Importantly, each branch should represent a specific task or development effort. I.e., a branch should be created for one particular purpose, independelty of how many new lines of work is required for that purpose.

If you create branches for *one* particular purpose, it benefits your (and your collaborators') workflow in (at least) two ways:

1. It enables you to give the branch a short, decriptive name that clearly communicates to your collaborators what work has been done on this particular branch.
2. Smaller changes allows for a faster reviewing and merging to the main branch, since it is easier for your collaborators to get an overview of the work you have done.

As an example, a branch could cover a fix to a particular bug or [issue](issues.md) or add a new feature, such as a new plot, like in the figure showing parallel development above.

## Branch Naming

When you create a branch, it's important to give the branch a short, descriptive name to clearly communicate to your collaborators what this work is on. We encourage the use of prefixes so anyone can easily identify what kind of work is being done on a certain branch. In addition, we recommend using a forward slash (/) after the prefix. The use of  slash results in the name being interpreted by many IDEs and Git tools as a directory structure, which creates a nice grouping of the branches. For prefixes and examples, see the table below.

| Type | Usecase | Pattern | Example |
|-|-----|-----|-----|
| Bugfix | For fixing a bug | bugfix/(short-description) | bugfix/fix-data-cleaning-error |
| Feature | For adding, removing, or modifying a feature* | feature/(short-description) | feature/add-variance-plot |
| Hotfix | For quickly fixing critical issues, usually with a temporary solution | hotfix/(short-description) | hotfix/fix-select-button |

In the table above, (short-description) in the "Pattern" column is a short phrase, concisely describing the work done on the branch. Examples of short descriptions could be *fix-data-cleaning-error*, *add-variance-plot*, *fix-recursive-loop*, or *init-git-entry*. As with file naming, we use the [kebab-case](https://www.tuple.nl/knowledge-base/kebab-case) naming convention. :warning: not written anywhere why we do it or that we do it. Should we add a decision post on this somewhere? :warning:

Elaborating on the use cases of each type of branch:

- **Bugfix**: Created when there is a bug on the main branch that should be fixed and merged into the next deployment.
- **Feature**: For the development of a new feature or enhancement which has the potential of a development lifespan longer than a single deployment. A "feature" can also be adding or modifying documentation.
- **Hotfix**: Comes from the need to act immediately upon an undesired state of a live production version.

If you want your branch to refer to a specific issue, this can also be included in the branch name. For example, the branch name "feature/30-optimise-data-load-with-parquets" shows that the work on this branch includes a feature related to issue 30 which optimised the data loading process with parquets (which is a column-oriented data storage format)

In addition, some teams include author initials in the branch names to keep track of developers' work, e.g., feature/skb-add-variance-plot.

## Summary

- By default, a Git repository has one default branch called **main**
- Additional branches should be created whenever you want to modify or add to your respository. This enables several developers to work in parallel
- A branch should be created for one particular purpose and have a short descriptive name, like "add-variance-plot"
- We recommend using prefixes to clearly show what kind of work has been done in this branch. E.g., "feature" or "bugfix"
- In addition, we recommend the use of forward slash (/) after the prefix to create a nice ordering in many IDEs. E.g., "feature/" or "bugfix/"
- If the work you are doing on a branch should refer to a particular issue, you can add the issue ID to the branch name after the prefix. E.g., "feature/12-fix-data-cleaning-error"
- Collecting these recommendations, a branch name could be "feature/add-variance-plot" or "bugfix/12-fix-data-cleaning-error"

The naming scheme presented in this post is inspired by the following posts:

- [Organizing git branches with naming conventions](https://code.erpenbeck.io/git/2021/03/01/git-naming-conventions/)
- [Git/GitHub branching standards & conventions](https://gist.github.com/digitaljhelms/4287848)
- [Best Practices for Naming Git Branches](https://tilburgsciencehub.com/building-blocks/collaborate-and-share-your-work/use-github/naming-git-branches/).

## should these "branch types" be included as well?

- | User | user/(user-id)/(short-description) | user/merpenbeck/sandbox |
- | Topic | topic/(id)-(short-description) | topic/456-query-optimization |
- | Release | release/(release-id) | release/2021-04-13 |
- | Support | support/(id)-(short-description) | support/876-app-support-reboot-fix |
