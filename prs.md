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
As the American software developer (and founder of Stack Exchange) Jeff Atwood [wrote](https://blog.codinghorror.com/code-reviews-just-do-it/?ref=hackernoon.com):

> "**Peer Code Reviews are the single biggest thing you can do to improve your code**. If you're not doing code reviews right now with another developer, you're missing a lot of bugs in your code and cheating yourself out of some key professional development opportunities. As far as I'm concerned, my code isn't done until I've gone over it with a fellow developer."

## Introduction to Pull Requests

*Pull requests* (PRs) are a feature of Git that allows for collaboration and code review within a repository. They are, in essence, proposed changes from one branch to another. Within the GitHub flow, you start by creating a branch, and implemented the changes you want on this branch. Then, you push them to the remote repository (potentially on GitHub or GitLab) and propose those changes to be a part of the `main` branch, see figure above. 
When a PR is initiated, the review process can begin. And this process, with feedback and discussions, is essential within collaborative development.
If you are working by yourself without any feedback, you are not going to enrich your learning. By allowing for your collaborators to provide feedback on your changes, you can learn from each other's experience and expertise.

PRs also work as documentation, since they will be a part of the repository forever. They enable new collaborators to read about the motivation of changes and the conversations your team had about these changes, before they were implemented.

## Review Guidelines

So how do you do a review of a pull request? Thankfully GitHub has a
pretty decent set of instructions on how to do them.

- This is the [main listing
    page](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/reviewing-changes-in-pull-requests)
    of the documents related to doing reviews.

- These two instruction pages
    [here](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/reviewing-proposed-changes-in-a-pull-request)
    and
    [here](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/commenting-on-a-pull-request)
    detail how to add comments to a pull request.

Briefly, the steps you take to review a pull request is:

1. Open the pull request you have been asked to review on GitHub.
2. Go to the "Files changed" tab. This tab shows what text has been
    added (in green) or removed (in red).
    - Tip: if you're reviewing a text file (Markdown or Quarto), you can press the "Rich diff" button in the (looks like a document, much like a "Blank document"-button in Word) to see the changes in a more readable view.
3. Review the removed and added changes. If you have comments to give,
    hover with the cursor on the line you want to comment on. There will
    be a blue plus button that pops up on the left of the line number.
4. To add a comment, click the blue button and a text box will pop up.
    Write your comment there. Almost always, you will want to click the
    "Start a review" green button.
5. When you are through, scroll to the top and click the green "Review changes"
    button. You can optionally write a general comment in the text box,
    otherwise, select one of the options: "Approve", "Request changes",
    or "Comment". Then click the "Submit review".
6. You have now finished the review!

For a short 4 minute demonstration, check out the YouTube below on doing
a pull request review.

{{< video <https://www.youtube.com/embed/lSnbOtw4izI> >}}


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
