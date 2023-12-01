---
title: "Pull Requests and Reviews"
date: last-modified
order: 4
---

{{< include /includes/_wip.qmd >}}

Say that you are following the [GitHub flow](index.md#branching-strategy-github-flow), have created a [branch](branching.md) and have [committed and pushed](commits.md) your local changes to the remote repository. What then? The next step is to get your changes *reviewed* by your collaborates, before they can be merged to the `main` branch. This review process is facilitated by *pull requests*.

![Pull requests and reviews within the GitHub flow](../images/github-flow-pr.png)

Ensuring that the changes are reviewed by others before they are merged into the codebase, serves multiple purposes. This process:
  
  1. Helps to maintain the code quality (and minimise the risk of errors)
  2. Facilitates collaboration (review and discussion of suggested changes)
  3. Provides a structured process for integrating new developments into a project

As the American software developer (and founder of Stack Exchange) Jeff Atwood [wrote](https://blog.codinghorror.com/code-reviews-just-do-it/?ref=hackernoon.com):

> "**Peer Code Reviews are the single biggest thing you can do to improve your code**. If you're not doing code reviews right now with another developer, you're missing a lot of bugs in your code and cheating yourself out of some key professional development opportunities. As far as I'm concerned, **my code isn't done until I've gone over it with a fellow developer**."

Accordingly, *pull requests* and *reviews* are essential parts of collaborate development. In this post, we will introduce you to these processes as well as presenting good practices for them. Lastly, we'll go through what to do, when branches have conflicting changes, something called *merge conflicts*.

## Introduction to Pull Requests and Reviews

*Pull requests* (PRs) are a feature of Git that allows for collaboration and code review within a repository. As described in the introduction to the [GitHub flow](index.md#branching-strategy-github-flow), PRs are where the actual collaboration happens. In essence, a PR is a proposal of adding changes from one branch to another. Creating a PR is telling your collaborators about the changes you have made and that you would like them to look over your changes. This will start a discussion of the changes through their reviews, and you can add follow-up commits to incorporate potential suggested changes, before merging the branch to `main`.

When a PR is initiated, the review process can begin. As pointed out above, this process, with feedback and discussions, is essential within collaborative development. By allowing for your collaborators to provide feedback on your changes, you can learn from each other and harvest the team's experience and expertise to create a better product more efficiently. Usually, this process will lead to higher quality work than if you worked alone.
Your collaborators will be able to add review comments, request changes, contribute to the discussion of the implemented changes, and even add commits to the PR.

PRs also work as documentation, since they will be a part of the repository's history forever. They enable new collaborators to read about the motivation of changes and the conversations your team had about these changes, before they were implemented.

## Pull Requests in Practice

When you follow the [GitHub flow](index.md#branching-strategy-github-flow) and want to implement changes to your repository, you start by creating a new branch from `main`. Then, you begin implementing the changes on this new branch. As described in the [branching post](branching.md#introduction-to-branches), a branch acts as an isolated container to implement your changes before they are ready to be merged into `main`. Then, you push your changes to the remote repository (potentially on GitHub or GitLab) and create a PR, i.e., you ask your collaborators to review your changes before they can be added to the `main` branch.

When you create a PR, you will have to add a title to it. Think of this title as an email subject line: It should be concise so that your collaborators will be able to look at the title and know what's going to be in the PR. You should also include a summary of the changes proposed in the PR and, if relevant, a reference to a related issue in your repository (issues are references using a `#`, e.g., `#22`).

In addition, you need to request *reviewers* to your PRs, i.e., who you want to review your changes. These reviewers will be actively reviewing your PR. You should also add an *assignee*, which is the owner of the PR who is responsible for getting it into a merge-ready state. Most of the time, you will be the assignee of the PRs you create.

Like with [branching](branching.md#when-to-create-branches-and-how-much-they-should-cover), create one PR for one purpose. The shorter the changes, the easier it will be for your collaborators to review. This will result in faster reviews and faster merging. The commit history of the branch you have created a PR from will appear in chronological order and help your collaborators get an overview of the changes you have made. This is one of the reasons why writing good [commit messages](commits.md#commit-messages) is so important: it enables your collaborators to get a quick overview of the changes you have made.

::: {.callout-tip}

You don't have to wait until you have fully-incorporated your changes, before you create a PR.

As noted at[GitHub Universe](https://www.youtube.com/watch?v=vCwuZfK0VG4&list=PL0lo9MOBetEHWqH1OLA0qOL4rPDJLHl15), you should create your PRs early on, as soon as you have incorporated meaningful changes and have an idea of the full implementation, This way, you get your collaborators' feedback on your changes before you have spend a lot of time on your initial implementation idea. Maybe they have some alternative ideas on how to implement these changes, and you can start the discussion early. Furthermore, you ensure that they know what you are working on, so they don't start up a similar implementation in the meantime.

If your PR is still a work in progress, remember to mark the PR as a [draft](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/changing-the-stage-of-a-pull-request#converting-a-pull-request-to-a-draft).

:::

::: {.callout-tip}

One way to ensure that a PR incorporates the information you find necessary for your project is to include a PR template in your project.

A PR templates adds default content to PRs that will show up automatically in the body of the PR. The [GitHub Docs](https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/creating-a-pull-request-template-for-your-repository) described how to include PR templates to your repository.

For examples, see the [PR templates](https://github.com/seedcase-project/.github/tree/main/.github) in the Seedcase Organisation.
:::

::: panel-tabset

### Create a Pull Request from VS Code

To be able to create pull requests to GitHub from within VS Code, you first need to install the extension [GitHub Pull Requests and Issues](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-pull-request-github). You can find and install this extension by going to the `Extension` view in the left sidebar of VS Code and search for it.

Once you have installed it, VS Code will prompt you to link to your GitHub account by signing in and giving access.

Now, in the `Source Control` view, a pull request icon will appear above the commit message box. When you click it, you will switch to the `GitHub Pull Request` view.

In this view, you can fill our the `TITLE` and `DESCRIPTION` boxes, as well as mark it as a draft, if your work is still a work-in-progress.

Note: Double check that you are in the correct repository and on the correct branch before you continue to the next step.

Then, click the `Create` button at the bottom of the sidebar.

Now, VS Code will show you the pull request on GitHub and in this view, you can add reviewers and assignees.

Voila, you have now created a pull request!

<https://github.com/git-guides#open-a-pull-request>

### Create a Pull Request on GitHub

Go to <GitHub.com>.

### Create a Pull Request using the Command Line

:warning: I have never done this. Is this a good practice? :warning:

:::

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
