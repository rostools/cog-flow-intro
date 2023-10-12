---
title: "Branching"
date: last-modified
---

{{< include /includes/_wip.qmd >}}

- When to branch? How much should one branch cover?

### Branch Naming

When you create a branch, remember to give the branch a short, descriptive name to clearly communicate to your collaborators what this work is on. We encourage the use of prefixes so anyone can easily identify what kind of work is being done on a certain branch. In addition, we encourage using a forward slah (/) after the prefix. The use of the slash results in the name being interpreted by many IDEs and git tools as a directory structure, which creates a nice grouping of the branches. For prefixes and examples, see the table below.

| Type | Usecase | Pattern | Example |
|-|---|---|---|
| Bugfix | for fixing a bug | bug/(short-description) | bug/pen-test-finding |
| Feature | for adding, removing, or modifying a feature* | feature/(short-description) | feature/update-default-table |
| Hotfix | for quickly fixing critical issues, usually with a temporary solution | hotfix/(short-description) | hotfix/fix-select-button |

In which (short-description) is a short phrase, such as recursive-loop-fix or init-git-entry, concisely describing the work done on the branch.
*a feature can also be adding or modifying documentation.

Inspired by [this post](https://code.erpenbeck.io/git/2021/03/01/git-naming-conventions/) and [this post](https://gist.github.com/digitaljhelms/4287848).

- Which also included these:
  - | User | user/(user-id)/(short-description) | user/merpenbeck/sandbox |
  - | Topic | topic/(id)-(short-description) | topic/456-query-optimization |
  - | Release | release/(release-id) | release/2021-04-13 |
  - | Support | support/(id)-(short-description) | support/876-app-support-reboot-fix |
  - | Bugfix (alternative) | bugfix/(id)-(short-description) | bugfix/689-pen-test-finding |

Expanding on the use cases of each type of branch:

- Bugfix: Created when there is a bug on the main branch that should be fixed and merged into the next deployment.
- Feature: For the development of a new feature or enhancement which has the potential of a development lifespan longer than a single deployment.
- Hotfix: Comes from the need to act immediately upon an undesired state of a live production version.

As with file naming, we use kebab-case. (not written anywhere why we do it or that we do it?)

MORE:

- 3. Use the ID of the Issue
  - Using the ID of the related issue in the branch name makes it easy to identify the task and keep track of its progress.
  - Example: wip-451-optimize-data-analysis

  - This name indicates that the task of optimizing data analysis related to issue 451 is a work in progress.

- 4. Include Author Name
  - Another approach is to also include the name of the author working on the branch, to keep track of developers' work. Usually, the name of the author is the first element of the branch name, according to this format: author-category-name.

  - Example: jane.doe-bugfix-broken-link

- Summary
  - Keep it short and concise, but make sure to include relevant key words.
  - Use category words to easily identify the type of the task.
  - Include ID of related issues to help tracking of progress.
  - Adding the name of the author helps to keep track of shared work.
  - Keep the same name conventions for the whole project.

From: <https://tilburgsciencehub.com/building-blocks/collaborate-and-share-your-work/use-github/naming-git-branches/>
