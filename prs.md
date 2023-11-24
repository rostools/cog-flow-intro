---
title: "Pull Requests and Reviews"
date: last-modified
order: 4
---

{{< include /includes/_wip.qmd >}}

Say that you are following the [GitHub flow](index.md#branching-strategy-github-flow), have created a [branch](branching.md) and have [committed and pushed](commits.md) your local changes to the remote repository. What then? The next step is to get your changes to *reviewed* by your collaborates, before they can be merged to the `main` branch. This review process is facilitated by *pull requests*.

Ensuring that the changes are reviewed by others before they are merged into the codebase, serves multiple purposes. This process:
  
  1. Helps to maintain the code quality (and minimise the risk of errors)
  2. Facilitate collaboration (review and discussion of suggested changes)
  3. Provides a structured process for integrating new developments into the project

*Pull requests* and *reviews* are essential parts of collaborate development, and in this post, we will introduce you to these processes as well as presenting good practices. Lastly, we'll go through what to do, when *merge conflicts* arise, something that happens, when branches have conflicting changes.

![Pull requests and reviews within the GitHub flow](../images/github-flow-pr.png)

## Introduction to Pull Requests

*Pull requests* (PRs) are a feature of Git that allows for collaboration and code review within a repository. They are, in essence, proposed changes from one branch to another. Within the GitHub flow, you start by creating a branch, and implemented the changes you want on this branch. Then, you push them to the remote repository (potentially on GitHub or GitLab) and propose those changes to be a part of the `main` branch, see figure above. 
When a PR is initiated, the review process can begin. And this process, with feedback and discussions, is essential within collaborative development.
If you are working by yourself without any feedback, you are not going to enrich your learning. By allowing for your collaborators to provide feedback on your changes, you can learn from each other's experience and expertise.

PRs also work as documentation, since they will be a part of the repository forever. They enable new collaborators to read about the motivation of changes and the conversations your team had about these changes, before they were implemented.

You don't have to wait until you have incorporated your changes, before creating a PR. A good tip is to create your PRs early on, as soon as you have incorporated meaningful changes and have an idea of the full implementation. This way, you can communicate to your collaborators what you are currently working on and you ensure that you get their feedback on your changes early on. Maybe they have some other ideas on how to implement these changes and you can start the discussion already then and there, instead of waiting until after you have spent time on initial implementation idea. Furthermore, you ensure that they know what you are working on, so they don't start up a similar implementation in the meantime. If your PR is still a work in progress, remember to mark the PR as a [draft](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/changing-the-stage-of-a-pull-request#converting-a-pull-request-to-a-draft)

But how to use PRs well? Like with [branching](branching.md#when-to-create-branches-and-how-much-they-should-cover), create one PR for one purpose. The shorter the changes, the easier it will be for your collaborators to review. This will result in faster reviews and faster merging.

When you create a PR, you will add a title to it. Think of this title as an email subject line: It should be concise so that your collaborators will be able to look at the title and know what's going to be in the PR.

In addition, you will need to add the reviewers as well as assignees of the PR. A *reviewer* will be actively reviewing a pull request, while being an *assignee* means you own the pull request and are getting it into a merge-ready state.
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
