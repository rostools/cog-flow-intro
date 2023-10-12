---
title: "GitHub Flow"
description: "Our reasons for using the GitHub Flow as our branching strategy"
author: "Signe Kirk Brødbæk"
date: last-modified
categories:
  - Decision
  - Workflow
references:
  - id: sooni
    title: A guide to trunk-based development (LogRocket)
    author: 
      family: Sooni
      given: S
    issued: 
      year: 2023
    URL: https://blog.logrocket.com/product-management/a-guide-to-trunk-based-development/#whatistrunkbaseddevelopment
  - id: tilburg
    title: Git Branching Strategies (Tilburg Science Hub)
    author: 
      family: Ambroziak
      given: Paulina
    issued: 
      year: n.d.
    URL: https://tilburgsciencehub.com/building-blocks/collaborate-and-share-your-work/use-github/git-branching-strategies/
  - id: tbd
    title: Trunk-based development
    author: 
      family: Hammant,
      given: Paul
    issued: 
      year: 2017-2020
    URL: https://trunkbaseddevelopment.com
  - id: thummala
    title: "Choosing the Right Git Branching Strategy: A Comparative Analysis"
    author: 
      family: Thummala
      given: S
    issued: 
      year: 2023
    URL: https://medium.com/@sreekanth.thummala/choosing-the-right-git-branching-strategy-a-comparative-analysis-f5e635443423#
  - id: driessen
    title: A successful Git branching model
    author: 
      family: Driessen
      given: V
    issued: 
      year: 2010
    URL: https://nvie.com/posts/a-successful-git-branching-model/
  - id: gitkraken
    title: What is the best Git branch strategy?
    author: 
      family: GitKraken
    issued: 
      year: n.d.
    URL: https://www.gitkraken.com/learn/git/best-practices/git-branch-strategy
  - id: githubflowpost
    title: GitHub Flow - The best wasy to use Git and GitHub
    author: 
      family: GitHub
    issued: 
      year: n.d.
    URL: https://githubflow.github.io
  - id: githubflow
    title: GitHub flow - Follow GitHub flow to collaborateon projects.
    author: 
      family: GitHub
    issued: 
      year: n.d.
    URL: https://docs.github.com/en/get-started/quickstart/github-flow

nocite: |
  @tbd, @driessen, @githubflow, @gitkraken
---

::: content-hidden
Use other decision posts as inspiration to writing these.
:::

## Context and Problem Statement

::: content-hidden
State the context and some background on the issue, then write a
statement in the form of a question for the problem.
:::

When developing software in a collaborative setting, as we do, we believe it's important to implement an explicitly stated Git branching strategy. This aligns with our [Guiding Principles](https://seedcase-project.org/design/software-architecture/introduction#guiding-principles). A clear and well-defined branching strategy enables consistency and efficiency, and, as a result, cleaner workflows across contributions with more time to focus on actual collaboration, problem-solving, and ensuring high quality work.

There are several branching strategies available, each with its own set of advantages and disadvantages. Which strategy is the most suitable depends on the project, the team, and the organisation (as well as preferences).

The question is, therfore: Which branching strategy is the best fit for the Seedcase project?

## Decision Drivers

::: content-hidden
List some reasons for why we need to make this decision and what things
have arisen that impact work.
:::

With collaborative software development, each developer might have their own way of doing things such as branching, committing, and reviewing their own and other's work. However, explictly agreeing on how we do these things will ensure common workflows across developers to help along efficient collaboration. When a team follows the same workflows, the focus can be shifted from trying to understand *what* each other are currently working on, *how* the problem at hand is solved, and *why* this work is needed, to harnessing each other's expertise and prior experience and highting the quality of everyone's work.

For the Seedcase project, we want to employ a branching strategy that:

1) is simple, transparant, and beginner-friendly
2) enables consistency across contributions through clear guidelines for branching, committing, and reviewing
3) works well with parallel, asynchronous development
4) supports continuous delivery, and (is that something we want further down the line, when we want to explicitly version the code?)
5) works well for smaller teams like ours

## Considered Options

::: content-hidden
List and describe some of the options, as well as some of the pros and
cons for each option.
:::

In the following sections, we evaluate commonly used branching strageties to decide on which fit the project and our needs the best. These strategies include: Trunk-based development, Git flow, and GitHub flow.

NB: To keep this decision post from getting too long, the strategies and their differences are outlined in a rather simple way, which might result in the loss of some nuances.

### Trunk-Based Development

In [trunk-based development](https://trunkbaseddevelopment.com), developers frequently integrate their code changes into a shared main branch, the **trunk**, instead of working on long-lived additional branches that will be merged into main less frequently [@tilburg]. This workflow focuses on making smaller, self-contained changes which helps reduce complexity, minimise conflicts, and enable faster review processes and integration [@sooni]. Naturally, this leads to a more continuous integration with frequent merges to the main branch.
Some smaller teams might even avoid branching altogether and commit directly to the trunk/main branch.

#### Benefits of Trunk-Based Development

- More continuous integration with frequent merges to the main branch
- Focuses on smaller, self-contained changes
- Minimises merge conflicts
- Allows for quick releases
- Works well for smaller teams

#### Drawbacks of Trunk-Based Development

- Frequent integration requires strong collaboration and communication skills, potentially with frequent sync-up meetings
- Works best with small, self-contained tasks to enable short-lived branches (or omission of additional branches all together)

### Git Flow

A contrast to trunk-based development is the [Git flow](https://nvie.com/posts/a-successful-git-branching-model/). Git flow is a comprehensive branching strategy with two central branches: **main** and **develop**. In this strategy, the **main** branch always reflect a production ready state of the codebase. In contrast, the **develop** branch contains the latest development changes for the next release. When the new developments are at a stable point and is ready to be released, all the changes from the develop branch will be merged into the main branch. As a result, whenever there is a new change to the main branch, this is a new release by definition. Each release version will be tagged [@thummala].

Besides the two central branches, supporting branches will be created to enable parallell development across contributors. These supporting branches are created for specific purposes, such as adding or modifying features (a *feature* branch) or fixing a critical issue in the code (a *hotfix* branch).
A feature branch must always be created from and merged into the develop branch, while a hotfix branch is usually created from the main branch and is be merged into both main and develop.

#### Benefits of Git Flow

- Clear framework offering an explicit shared understanding of the branching and releasing processes
- Clear responsibilities for each branch
- Versioning per definition
- Production versions are easy to navigate through tags

#### Drawbacks of Git Flow

- Revolves around releases, and we, currently, need a more continuous delivery-like approach
- Complexity due to the number of branches, which could lead to merge conflicts and slow down the development process

### GitHub Flow

[GitHub flow](https://docs.github.com/en/get-started/quickstart/github-flow) is a simpler branching strategy than Git flow, revolving around the **main** branch. The only "hard" rule in this workflow is that anything on the main branch is deployable [@githubflowpost]. Whenever new work needs to be done, a new branch with a descriptive name is created from the main branch. Like with the Git flow, types of branches include (among others) feature and hotfix branches. After a new branch has been created, changes are made on this branch with regular pushes and descriptive commit messages.

When the developer wants feedback, they create a pull request, which their collaborators review. Any suggested changes are addressed and implemented. When the work is complete, the branch can be merged into the main branch and is deleted. With this branching strategy, the work on the new branch is deployed as soon as it is merged into main.

#### Benefits of GitHub Flow

- Allows for continuous development and the ability to quickly address issues of all kinds (including security issues, bugs, and small feature requests)
- The same simple processes are used to address smaller and larger developments
- Works well for smaller teams and asynchronous collaboration, common in open-source projects

#### Drawbacks of GitHub Flow

- Does not by definition include releases
- Might be more susceptible to bugs in production (compared to Git flow) because of the lack of dedicated development branches
- Long-living branches can increase the risk of merge conflicts

## Decision Outcome

::: content-hidden
What decision was made, use the form "We decided on CHOICE because of
REASONS."
:::

We decided on using the GitHib flow branching strategy because:

1) it is simple and beginner-friendly strategy
2) it is both well-known and well documented, creating clear guidelines that enable consitency across contributions
3) it offers clear guidelines on every step of collaborative development, including branching, committing, and review processes
4) longer-living branches works well with parallel, asynchronous work
5) the balance between multiple branches and simplicity supports continuous delivery, while maintaining the **structure** from git flow (what do I mean here?)
6) not overly complex for a smaller team like ours
7) allows for continuous development with the same simple processes for both

For a more thorough review of this branching strategy and how we use it, including naming schemes, see the post [Git workflow guidelines](../git-workflow-guidelines.md).

### Consequences

::: content-hidden
List some potential consequences of this decision.
:::

Eventhough, the GitHub flow is the most suitable branching strategy for the Seedcase project at this point in time, this choice does come with consequences. For example, working on longer-living branches (compared to trunk-based-development) could increase the risk of merge conflicts (which is easier to avoid using trunck-based-development). This strategy also comes without release tagging (as Git flow does), something we might want to implement for the Seedcase Software Product later on.

In the future, when we the Seedcase repositories are at a more stable state and we have more contributors, we might need a more complex branching strategy, like Git flow, that revolves around formal releases. But currently, when we deploy continuously, a simpler workflow like GitHub flow is the best fit for us.

"The Git-Flow suits large teams and complex projects, while GitHub-Flow excels in open-source and small team environments. GitLab-Flow provides a compromise between Git-Flow and GitHub-Flow, while Trunk Based Development is ideal for experienced teams focused on collaboration and quick releases. Select the strategy that aligns with your team’s capabilities, project complexity, and desired workflow to maximize efficiency and success [@thummala]."