---
title: "Pull Requests"
date: last-modified
order: 4
---

{{< include /includes/_wip.qmd >}}

## Introduction to Pull Requests

:yellow_circle: and facilitate collaboration among team members by allowing them to work on their individual branches and then merge their changes into the main branch when they're ready. Once you've completed your work in a branch and tested it thoroughly, you can merge it back into the main branch through a pull request (PR).:yellow_circle:

## Creating a Pull Request (Checklist)?

- Naming (see below)
- Description
- Assign assignee and reviewer
  - Assignee: Assignee means you own the pull request or issue and are getting it into a merge-ready state. If you are no longer owning a given pull request or issue, take your name off as assignee.
  - Reviewer: Reviewer means you are actively reviewing a pull request.
- Is it still a draft?

## Pull Request Naming

Pull requests (PRs) are proposed changes from one branch to another. However, they are more than just changes; they are the start of a discussion

- You don't want to work in a silo; you are not going to enrich your own software development learning, if you are working by yourself - you are not getting any feedback and learn from your collaborators experience, if you haven't talked to them.

- And that talking, that collaboration, is so important.

A PR starts with a branch, then you work on that branch and implement the changes you want (push them to GitHub), and then you propose those changes back to the main branch in a PR.

**PR title: Concise; compare to an email subject line; I want to be able to look at the subject line and know what's going to be in the email**
**Comment: Remember to comment.**

PRs also works as documentation, since they are up there forever

- when a new developer comes in, sees this piece of code change, and want to know the motivation behind the change, you have a URL you can send to them "here's the conversation that we had, where's why" - and if they want to comment on that change, they should comment on that PR

How to use PRs well?

- The shorter the changes, the faster it will be reviewed
  - Also: Create your PRs early (don't wait until your feature is complete bc then someone else might start working on it) - and then you will have something to talk about
  - Change something to talk about and then send the PR
- CI pipeline; tests run automatically - in the PR (so they will be a part of the story of that feature) - to ensure that your PR is merged with confidence

"Peer Code Reviews are the single biggest thing you can do to improve your code"

- Jeff Atwood

In GitHub repositories, the main branch is protected, which means that an admin (?) at Seedcase needs to review and approve the changes before they can be pushed to the main branch.

Summary

- If you need code review, decide what's best for your team
  - Culture of communicating on the PRs, ask to review work
- If you want more code review, use the API or a service like ReviewNinja

- At it's core, GitHub Flow is a lightweight, branch-based workflow that supports teams and projects where deployments are made regularly.
- Allows us to be flexible with the code review

### How to name and describe PRs?

- PR templates (hurray)

### Review guidelines

For guidelines on how to review a pr, see the post [Review through pull requests](https://seedcase-project.org/community/guide-entries/reviewing-prs/index.html) <- maybe move that info here instead.

Tip: How to view "Rich diff" in pull requests --> very helpful for html and markdown reviewing!

- Go to "Files changed" and press the "Rich diff" button in the (looks like a document, much like a "Blank document"-button in Word)
