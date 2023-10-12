---
title: "Commits"
date: last-modified
---

{{< include /includes/_wip.qmd >}}

- Atomic commits
- Commit messages
- Referring to issues

## Commit guidelines

GitHub Flow docs (<https://docs.github.com/en/get-started/quickstart/github-flow>):

- Commit and push your changes to your branch. Give each commit a descriptive message to help you and future contributors understand what changes the commit contains. For example, fix typo or increase rate limit.
- Ideally, each commit contains an isolated, complete change. This makes it easy to revert your changes if you decide to take a different approach. For example, if you want to rename a variable and add some tests, put the variable rename in one commit and the tests in another commit. Later, if you want to keep the tests but revert the variable rename, you can revert the specific commit that contained the variable rename. If you put the variable rename and tests in the same commit or spread the variable rename across multiple commits, you would spend more effort reverting your changes.

By committing and pushing your changes, you back up your work to remote storage. This means that you can access your work from any device. It also means that your collaborators can see your work, answer questions, and make suggestions or contributions.

Continue to make, commit, and push changes to your branch until you are ready to ask for feedback.

- Atomic git commits:
  - Working with atomic git commits means your commits are of the smallest possible size. Each commit does one, and only one simple thing, that can be summed up in a simple sentence. The amount of code change doesn't matter.
- Commit messages
  - best practices
  - prefixes: fix, feat, style, refactor, test, etc.
  - reference issues
  - other?
