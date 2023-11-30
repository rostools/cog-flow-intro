---
title: "Issues"
date: last-modified
order: 5
---

{{< include /includes/_wip.qmd >}}

When you stumble upon a bug or get an idea for an enhancement or new feature for the codebase, you can add an *issue* to the repository on GitHub.

GitHub issues facilitates a transparent environment where it is easy to get an overview of ongoing challenges and feature requests within the project. They also provide a centralised platform for discussion of issues and collaboration among collaborators. As many things within Git and GitHub repositories, issues are logged and serve as a historical record of the project. With issues, everything from the initial issue to the discussion and final solution are documented.

This post will introduce the notion of issues on GitHub and good practices for writing **actionable** issues.

## Introduction to Issues

Issues is a feature on GitHub that enables you and your collaborators track ideas, feedback, tasks, or bugs for your project. They serve as a central space for discussing ideas, challenges, and resolving bugs. In this way, issues are a versatile feature that helps with streamlining these processes and aids with effective communication and coordination.

Since issues are a part of GitHub, they are well-documented in GitHub's documentation. You can go to the [Quick start for GitHub Issues](https://docs.github.com/en/issues/tracking-your-work-with-issues/quickstart) post for an introduction to what they are and how to open a blank issue and filling in information.

Central aspects of creating issues include:

- **Title and Description:** For each issue, you will fill out a title and description. Like with PR titles, think of the issue title as a subject line in an email; it should be concise and convey what the issue is about. Similarly, ensure that the description is clear and makes it easy to understand the problem or proposed improvement. It's possible to add lines of code (using *permalinks*) or screenshots to the description help clarifying what the issue addresses.

- **Assignees:** Like with PRs, you should assign a person or team that is responsible for addressing the issue.

- **Comments and Discussions:** An important part of issues is the comment section where you and your collaborators can discuss the whys and hows of the issue. You can use @mentions to alert a person or a team about a specific comment.

- **Link to related issues or PRs:** Issues can be cross-referenced in other issues or pull requests to keep track of related work and how they connect. If you are working on solving an issue, you show that work is in progress by linking the issue to the pull request. When an issue is linked to a pull request, it will automatically close, when the pull request is merged. You can find information on linking an issue and a pull request in [Linking a pull request to an issue](https://docs.github.com/en/issues/tracking-your-work-with-issues/linking-a-pull-request-to-an-issue#linking-a-pull-request-to-an-issue-using-a-keyword) in the GitHub Docs.

- **Break large issues into smaller issues:** This makes the work more manageable and enables collaborators to work in parallel. Since issues and PRs usually are connected, making smaller issues also leads to smaller pull requests that are easier to review and, therefore, will be merged faster. You can facilitate the process of breaking larger issues into smaller ones, using [task lists](https://docs.github.com/en/issues/tracking-your-work-with-issues/quickstart#adding-a-task-list).

- **Check that the issue doesn't already exist:** Before you create a new issue, use the search feature on GitHub to check that the bug or feature hasn't already been reported or requested.

## Types of Issues

As described above, issues is quite a versatile feature of GitHub and issues can be used to raise awareness of different types of future work. Which "types" that are relevant is highly dependent on the project. In the sections below, we will highlight three types of issues and what isi relevant to include in those. This includes:

- Feature Requests
- Bug Reports
- User Stories

Essential to all issue types is, naturally, a clear title and description that enables your collaborators to quickly get an overview and understanding of the issue raised.

In addition, always remember to check if the issue or a similar one already has been raised in the repository.

### Feature Requests

A *feature request* is a suggestion of a new feature, functionality, or improvement to be implemented in the codebase.

When creating a feature request, first present the feature you want implemented. This includes a concise description of the problem to be addressed. A good practice is to be clear as you can on what parts of the problem that are considered to be in-scope and out-of-scope of the issue.

If possible, yuo can include a concise suggestion to a solution Things to address include details of the technical implementation, tradeoffs made in design decisions, and caveats and considerations for the future.

To clearly communicate that an issue is a feature request, you  can add this to the title of the issue like so: `feature request: <concise title describing the issue>`.

### Bug Reports

If you find an error, a *bug* in a repository, you file a *bug report*, describing the bug.

For a bug report, it is important to include the steps to reproduce the bug to clarify how the bug is triggered. Reduce the reproduction steps to their bare minimum and be precise.

You can use the “>” symbol to show the steps.
For example:

```default
1. Go to settings > Profile (this would take user to new screen)
2. Tap on More Options > Delete Account
```

Remember to out your instructions before filing the report to ensure that they reproduce the error.

After the reproduction steps, include a description of the expected result (i.e., what *should* happen, whe the steps are followed) as well as the actual results (the bug). When describing the bug, be as specific as you can. It can be helpful to include screenshots or videos here.

### User Stories

One way to structure an issue is in the form of a [user story](https://www.atlassian.com/agile/project-management/user-stories). When writing the issue, this structure helps with explicitly 1) phrasing the issue/change from the the user's perspective, 2) stating the functionality of the change requested, and 3) stating how this will benefit this kind of user.

Remember to be specific about the user this change will benefit, and the functionality you would like to see implemented

The structure looks like this:

```default
As a <user>
I want to <functionality>
so that <benefit>
```

Where:

- **User** is a specific user type, i.e., a specific role. Remember to think about the capabilities and skills of such users.
- **Functionality** is the change requested, i.e., the action that the issue is about, and
- **Benefit** is the reason why this is needed amd the benefit of this change is.

::: {.callout-tip}

A way to standardise issues within your project is to use [issue templates](https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/configuring-issue-templates-for-your-repository) in your repository.

For examples of issue templates, see the [issue templates](https://github.com/seedcase-project/.github/tree/main/.github/ISSUE_TEMPLATE) of the Seedcase Organisation on GitHub.

:::

