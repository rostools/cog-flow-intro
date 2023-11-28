---
title: "Pull Requests and Reviews"
date: last-modified
order: 4
---

{{< include /includes/_wip.qmd >}}

Say that you are following the [GitHub flow](index.md#branching-strategy-github-flow), have created a [branch](branching.md) and have [committed and pushed](commits.md) your local changes to the remote repository. What then? The next step is to get your changes to *reviewed* by your collaborates, before they can be merged to the `main` branch. This review process is facilitated by *pull requests*.

![Pull requests and reviews within the GitHub flow](../images/github-flow-pr.png)

Ensuring that the changes are reviewed by others before they are merged into the codebase, serves multiple purposes. This process:
  
  1. Helps to maintain the code quality (and minimise the risk of errors)
  2. Facilitate collaboration (review and discussion of suggested changes)
  3. Provides a structured process for integrating new developments into a project

As the American software developer (and founder of Stack Exchange) Jeff Atwood [wrote](https://blog.codinghorror.com/code-reviews-just-do-it/?ref=hackernoon.com):

> "**Peer Code Reviews are the single biggest thing you can do to improve your code**. If you're not doing code reviews right now with another developer, you're missing a lot of bugs in your code and cheating yourself out of some key professional development opportunities. As far as I'm concerned, my code isn't done until I've gone over it with a fellow developer."

Accordingly, *pull requests* and *reviews* are essential parts of collaborate development. In this post, we will introduce you to these processes as well as presenting good practices for them. Lastly, we'll go through what to do, when branches have conflicting changes, something called *merge conflicts*.

## Introduction to Pull Requests and Reviews

*Pull requests* (PRs) are a feature of Git that allows for collaboration and code review within a repository. As described in the introduction to the [GitHub flow](index.md#branching-strategy-github-flow), PRs are where the actual collaboration happens. In essence, a PR is a proposal of adding changes from one branch to another. Creating a PR is telling your collaborators about the changes you have made and that you would like them to look over your changes. This will start a discussion of the changes through their reviews, and you can add follow-up commits to incorporate potential suggested changes, before merging the branch to `main`.

When a PR is initiated, the review process can begin. As pointed out above, this process, with feedback and discussions, is essential within collaborative development. By allowing for your collaborators to provide feedback on your changes, you can learn from each other and harvest the team's experience and expertise to create a better product more efficiently. Usually, this process will lead to higher quality work than if you worked alone.
Your collaborators will be able to add review comments, request changes, contribute to the discussion of the implemented changes, and even add commits to the PR.

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

## Merge Conflicts

Most of the time, when you want to merge new changes into the main branch, the merge happens without problems. In these cases, Git can handle the changes between the branches and merge automatically, because the changes are on different lines or in different files.

*Merge conflicts* arise when you want to merge branches that have competing changes - i.e., if the branches you want to merge have diverging changes on the same line in a file of if a file has been edited in one branch and deleted in the other. Git cannot automatically handle these situations and decide which changes to keep and which to discard. Therefore, merge conflicts require that you manually edit the conflicting files and decide what to keep and what to discard.

To minimise the risk of merge conflicts, it's good practice to integrate remote changes into your local repository. This includes:

1. Keeping your local `main` branch up-to-date with the remote `main` branch by periodically pulling to fetch and merge remote changes
2. Integrating the local main branch updates into your local feature branch by merging your local `main` into the feature branch, while you are working on a local feature branch.
3. Pushing your local feature branch to the remote branch on GitHub to back up your work.

However, if a merge conflict does arise. Here's how to resolve it using either VS Code, a Terminal, or GitHub:

:warning: I have just linked to useful websites below. Is that too lazy? :grimacing: :warning:

::: panel-tabset

### Resolving Merge Conflicts in VS Code

The [VS Code Documentation](https://code.visualstudio.com/docs/sourcecontrol/overview#_merge-conflicts) includes how to handle merge conflicts using the 3-way merge editor. Moreover, they recommend watching the video below:

{{< video <https://www.youtube.com/watch?v=HosPml1qkrg> >}}

### Resolving Merge Conflicts in a Terminal

It is also possible to resolve merge conflicts using a Terminal, see [Resolving a merge conflict using the command line](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/addressing-merge-conflicts/resolving-a-merge-conflict-using-the-command-line) in the GitHub Docs.

### Resolving Merge Conflicts on GitHub

In the [GitHub Docs](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/addressing-merge-conflicts/resolving-a-merge-conflict-on-github) how to resolve a merge conflict on GitHub is described thoroughly.

:::
