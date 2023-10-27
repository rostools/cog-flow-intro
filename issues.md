---
title: "Issues"
date: last-modified
---

{{< include /includes/_wip.qmd >}}

When you find that something is wrong in the codebase on GitHub, or you would like to request a feature to the code, you can add an *issue* to the repository.

This post will introduce the notion of issues on GitHub as well as guidelines on how to write an issue.

## Introduction to Issues

In [GitHub Docs](https://docs.github.com/en/issues/tracking-your-work-with-issues/about-issues#), issues are described as a way to track ideas, feedback, tasks, or bugs for work on GitHub.

Since issues are a part of GitHub, they are well-documented in GitHub's documentation. Go to the [Quickstart for GitHub Issues](https://docs.github.com/en/issues/tracking-your-work-with-issues/quickstart) post for an introduction to what they are and how to open a blank issue and filling in information.

## Cross-reference

Issues can be cross-referenced in other issues or pull requests to keep track of related work. If you are working on solving an issue, you show that work is in progress by linking the issue to the pull request. When an issue is linked to a pull request, it will automatically close, when the pull request is merged.

You can find information on linking an issue and a pull request in [Linking a pull request to an issue](https://docs.github.com/en/issues/tracking-your-work-with-issues/linking-a-pull-request-to-an-issue#linking-a-pull-request-to-an-issue-using-a-keyword) oin GitHub Docs.

## Issue Naming

## Issue Templates

One way to structure an issue is in the form of a [user story](https://www.atlassian.com/agile/project-management/user-stories). This structure helps with 1) keeping the user in mind, 2) explicitly stating the functionality of the change requested, and 3) how this will benefit the user, when writing the issue.

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
