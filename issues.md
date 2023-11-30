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


One way to structure an issue is in the form of a [user story](https://www.atlassian.com/agile/project-management/user-stories). When writing the issue, this structure helps with explicitly 1) keeping the user in mind, 2) explicitly stating the functionality of the change requested, and 3) how this will benefit this kind of user.

The structure is like so:

```bash
As a <user>
I want to <functionality>
so that <benefit>
```

- **User**: Role, capability, skills
- **Functionality**: Action, change requested
- **Benefit**: Reason why this is needed/what is the benefit of this change?

- Issue templates. Which kinds of issues do we expect?
  - Documentation Clarification
  - Feature Request
  - Bug Report
  - Report a Safety Vulnerability
    - <https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/about-issue-and-pull-request-templates>
    - <https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/configuring-issue-templates-for-your-repository>

- Advanced: Creating issue templates for your repository?

Maybe: GitHub Action for issues: E.g., label, assign (maybe to someone per default?), is the issue reproducible?
