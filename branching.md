---
title: "Branching"
date: last-modified
order: 2
---

{{< include /includes/_wip.qmd >}}

*Branching* is a fundamental concept in Git that plays a crucial role in managing code changes and helping along smooth and organised development workflows. Branches are also is essential for parallel software development.

This entry covers what a branch is, when to create branches and how much work a single branch should cover (following the [GitHub flow](https://docs.github.com/en/get-started/quickstart/github-flow)), as well as branch naming conventions.

## Introduction to Branches

When you create a Git repository, it will have a single *branch* by default, typically named `main`. Likewise, if you have ever visited a Git repository online and taken a look at the code, you will by default be on the `main` branch. Inherently, there is nothing special about the `main` branch, except that it is the default branch, and when you create a new Git repository, it will have this one branch. Whenever you want to add some new work to your repository or fix a bug, you can create additional branches to encapsulate your changes and develop in a "safe" environment away from the production ready code.

In Git, a branch can be said to be a separate line of development that allows you to work on a feature, bug fix, or other changes without affecting the `main` branch of your repository. When you create a new branch, you essentially take a "snapshot" of the current codebase at that point in time and create a copy of it to work on separately. After you have created a new branch, you can add and/or change files to complete the new work in this contained part of the repository while the code on the `main` branch remains unchanged (see figure below). When your work is complete, the changes can be reviewed and merged to the `main` branch. More on this in the [pull requests](prs.md) post. After merging, the new branch is deleted, since the changes on that branch have been added to the `main` branch.

![Example of simple branching.](../images/branching-simple.png)

As a consequence, branches provide isolation during the development of e.g., new features, bug fixes, or documentation. Branching enables parallel development by allowing multiple developers to work on different parts of a project simultaneously without interfering with each other's work. This speeds up development and reduces conflicts that may arise when multiple people modify the codebase at the same time. Note, however, that altering the same files in two different branches could result in [*merge conflicts*](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/addressing-merge-conflicts/about-merge-conflicts), which is when you try to merge to branches with "competing" changes to the same file or line, and you have to tell Git which changes to keep.

In the figure below, showing an example of parallel development, two branches are created from the `main` branch by two developers: bugfix/fix-data-cleaning-function created by Developer 1 and feature/add-scatter-plot created by Developer 2. This branching allows for each developer to work on their changes in isolation before creating a pull request and merging the changes into the `main` branch.

![Example of parallel development using branching. Dev = Developer. PR = Pull request. \n NB: Pull requests and reviews process are covered in the post on [pull requests](prs.md).](../images/branching-parallel-development.png)

Hopefully, this gave you an intuition about what a branch is and what the benefits of branching are. If you would like more information on branches, check out the ["About branches"](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-branches) post in the GitHub documentation and the ["Branches in a nutshell](https://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell) post in the Git documentation book.

## When To Create Branches (and How Much They Should Cover)

Every time you want to add something new to or modify existing work in a Git repository, you should create a new branch (following the [GitHub flow](https://docs.github.com/en/get-started/quickstart/github-flow) approach). Importantly, each branch should represent a specific task or development effort. That is, a branch should be created for one particular purpose, independently of how many new lines of work is required for that purpose. Multiple developers can also contribute to the same branch.

When you create branches for one specific purpose, it benefits your (and your collaborators') workflow in (at least) two ways:

1. It enables you to give the branch a short, descriptive name that clearly communicates to your collaborators what work has been done on this particular branch.
2. Smaller changes allows for a faster reviewing and merging to the `main` branch, since it is easier for your collaborators to get an overview of the work you have done.

As an example, a branch could cover a fix to a particular bug or [issue](issues.md) (i.e., a problem in the current code or documentation that has been reported in the repository in GitHub) or add a new feature, such as a new plot, like in the figure above showing parallel development.

## Branch Naming

When you create a branch, it's important to give the branch a short, descriptive name to clearly communicate to your collaborators what this work is on. When naming a branch, stick to lowercase alphanumeric characters (a-z, 0-9) and use hyphens to separate words. Avoid punctuation, spaces, underscores, or other any non-alphanumeric characters than hyphen.

We encourage the use of prefixes so it is easy to identify what kind of work is being done on the branch. In addition, we recommend using a forward slash (/) after the prefix. The use of forward slash results in the name being interpreted by many IDEs and Git tools as a directory structure, which creates a nice grouping of the branches. For prefixes and examples of branch names, see the table below.

| Type | Use case | Pattern | Example |
|-|-----|-----|-----|
| Bugfix | For fixing a bug | bugfix/(short-description) | bugfix/fix-data-cleaning-function |
| Feature | For adding, removing, or modifying a feature | feature/(short-description) | feature/add-scatter-plot |
| Hotfix | For quickly fixing critical issues, usually with a temporary solution | hotfix/(short-description) | hotfix/fix-select-button |
| Docs | For writing, updating, or fixing documentation | docs/(short-description) | docs/git-guidelines |

In the "Pattern" column in the table above, "short-description" is a short phrase, concisely describing the work done on the branch. Examples of short descriptions could be *fix-data-cleaning-function*, *add-scatter-plot*, or *fix-recursive-loop*, or *git-guidelines*. As with file naming, we recommend the [kebab-case](https://www.tuple.nl/knowledge-base/kebab-case) naming convention (i.e., hyphens between words). :warning: not written anywhere why we do it or that we do it. Should we add a decision post on this somewhere? :warning:

If you want your branch to refer to a specific [issue](issues.md), you can also be include this in the branch name. For example, the branch name "feature/30-optimise-data-load-with-parquets" shows that the work on this branch includes a feature related to issue number 30 which related to optimising the data loading process with parquets (which is a column-oriented data storage format). Remember to still add a short description of the work being done on the branch. If you only include the issue ID, you force your collaborators to go to that issue and read about it, instead of just knowing what the work covers from the branch name.

In addition, some teams include author initials in the branch names to keep track of developers' work, e.g., feature/skb-add-scatter-plot. :warning: do we want to do that? :warning:

These naming practices will help you avoid bad practices such as using numbers only and long branch names, as well as support consistency. Consistency is key, so whenever you have chosen a convention, stick to it throughout the project to avoid confusion.

## Branching in Practice

Depending on whether you use the Terminal or prefer to click around in e.g., VS Code, the workflow of creating a new branch differs a bit. Below, we will go through how to create and switch branches using the Terminal and VS Code. If you prefer to use another editor, you can Google how it's done for that specific editor. Usually, there are plenty of nice beginner-friendly guides out there.

::: panel-tabset

### Branching using the Terminal

When you have cloned, i.e., downloaded, a Git repository or created your own, open that folder in a Terminal.

In VS Code, you can open a Terminal by going to `Terminal` in the menu and click on `New Terminal`.

Make sure you are in the root directory (i.e., the repository folder) and not in a subfolder in the directory.

To check which branch you are currently on, write the following in the Terminal:

```bash
git status
```

The Terminal will write "On branch name-of-branch", where name-of-branch could be e.g., *`main`* or *feature/add-scatter-plot*.

To see the local branches currently in your repository:

```bash
git branch
```

To go to an existing branch:

```bash
git checkout <name-of-existing-branch>
```

To create a new branch and go to that branch, use the flag '-b':

```bash
git checkout -b <name-of-new-branch>
```

The flag '-b' creates a new branch.

If you want to learn how to use the Terminal within VS Code, the [Terminal Basics](https://code.visualstudio.com/docs/terminal/basics) post by VS Code can help you along.

### Branching in VS Code

When you have cloned, i.e., downloaded a Git repository or created your own, open that folder in VS Code. If you are in a Git repository in VS Code, you can see which branch you are currently on in the bottom left corner of the window.

To switch branches, you can click on the branch name, and a window with a "+ Create New Branch" option will appear.

Alternatively, you can open the Command Palette by pressing `shift+cmd+P` on a Mac or `shift+ctrl+P` on a Windows computer. Then, write "Git: Create Branch". If you want to switch to an existing branch, write "Git: Checkout to"

If you would like to *see* these steps, go to the [Branches and Tags](https://code.visualstudio.com/docs/sourcecontrol/overview#_branches-and-tags) part of the [Using Git source control in VS Code](https://code.visualstudio.com/docs/sourcecontrol/overview#:~:text=You%20can%20create%20and%20checkout,tags%20in%20the%20current%20repository) post.

:::

## Summary

- By default, a Git repository has one branch, usually called `main`
- Additional branches should be created frp, `main` whenever you want to modify or add to your repository (following the GitHub flow). This enables several developers to work in parallel
- A branch should be created for one particular purpose and have a short descriptive name, like "feature/add-scatter-plot"
- We recommend using prefixes to clearly show what kind of work has been done in this branch. E.g., "feature", "bugfix", or "docs"
- In addition, we recommend the use of forward slash (/) after the prefix to create a nice ordering in many IDEs. E.g., "feature/"
- If the work you are doing on a branch should refer to a particular issue, you can add the issue ID to the branch name after the prefix. Remember to still include a short description of the work being done on the branch. E.g., "feature/12-fix-data-cleaning-function"
- Collecting these recommendations, a branch name could be "feature/add-scatter-plot" or "bugfix/12-fix-data-cleaning-function"
- When you have chosen a branch naming convention, be consistent and stick to it

**The branch naming scheme presented here is inspired by the following posts:**

- [Organizing git branches with naming conventions](https://code.erpenbeck.io/git/2021/03/01/git-naming-conventions/)
- [Git/GitHub branching standards & conventions](https://gist.github.com/digitaljhelms/4287848)
- [Best Practices for Naming Git Branches](https://tilburgsciencehub.com/building-blocks/collaborate-and-share-your-work/use-github/naming-git-branches/)
- [Naming conventions for Git Branches — a Cheatsheet](https://medium.com/@abhay.pixolo/naming-conventions-for-git-branches-a-cheatsheet-8549feca2534)

## :warning: should these "branch types" be included as well?

- | User | user/(user-id)/(short-description) | user/merpenbeck/sandbox |
- | Topic | topic/(id)-(short-description) | topic/456-query-optimization |
- | Release | release/(release-id) | release/2021-04-13 |
- | Support | support/(id)-(short-description) | support/876-app-support-reboot-fix |
- test for experimenting something which is not an issue
- wip for a work in progress
