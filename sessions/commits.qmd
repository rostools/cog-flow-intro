---
title: "Commits"
date: last-modified
order: 3
---

{{< include /includes/_wip.qmd >}}

After you have created a new branch, you probably want to start implementing some changes to your repository, like adding a new feature to your code.

With Git, you log the process of your work through *commits*, the save points within Git's version control. Git does not log these save points automatically as you modify files in your repository, so you have to choose when you want to commit (i.e., log) your changes and what to include in each commit.

Since your repository's history is logged through commits, how you structure these commits are important - both for you (your future self) and your collaborators. If the history of the repository messy and non-transparent, it will be difficult for you and your collaborators to trace back how the the current state of the repository came to be. For example, when and why you decided to add a particular figure or when and why you changed the significant levels of your analysis.

This post covers what commits are, how often you should commit, good practices for commit messages, as well as how to do commits using either the Terminal or the sidebar in VS Code.

![Commits within the GitHub flow](../images/github-flow-commits.png)

## Introduction to Commits

**Commits** are the building blocks of save points within Git's version control and can be thought of as "snapshots" or "milestones" along the timeline of your Git repository. These snapshots are not saved automatically in Git, as you create or modify files in your repository. Rather, you decide when to take these snapshots and which changes to include in them.

Over time, commits tells the story of a repository, and how the work has progressed. When you commit, you include a *commit message* briefly describing the work that has been done. In addition to the message, commits include metadata such as the author and a timestamp. Since you decide *when* to commit, *what* to commit, and *how* you describe your commits, you have a lot of control of how your repository's history is logged. But fear not, we will provide you with guidelines on how to utilise this control to your advantage later in this post.

But first, let's back up a little and look at the two phases of committing: When you want to commit some changes you have made, you first have to tell Git what changes you want to include in your commit (i.e., want to capture in the snapshot). This is done by adding them to what is known as the "staging area". Then, you save the snapshot by *committing* the staged changes with a message describing your changes.

To understand these two phases, it might help to briefly go through how Git tracks changes (:warning: too much detail? :warning:). In the figure below (inspired by [this](https://learn.microsoft.com/en-us/azure/devops/repos/git/commits?view=azure-devops&tabs=visual-studio-2022#how-git-tracks-changes) post), it's visualised how Git tracks changes in three categories: **Unmodified**, **modified**, and **staged**.

![How Git tracks file changes](../images/file-tracking-in-git.png)

*Unmodified* files includes all tracked files that haven't been created or modified since the last commit. As soon as you save a new file or save an edited file, Git tracks that as being *modified*. When you are happy with your changes, you can *stage* the modifications by adding them to the *staging area*, which includes all changes that will be a part of the next commit. Adding changes to the staging area can, therefore, be said to be the first phase of a commit. In the second phase, you commit the staged changes, and Git saves a snapshot of your repository with these changes. This snapshot includes only the staged changes and the unmodified changes. Changes that haven't been staged are kept but not included in the snapshot.

Note that you can add as many files and changes to the staging area as you want before you commit them. All changes in the staging area at the time of commit will be a part of the same commit. In this way, the staging area allows you to control which changes you want to include in a specific commit, so you can collect the changes connected to the same unit of work in one commit (we will return to what that means in the section [Atomic Commits](#atomic-commits) below).

Commits are always created locally in the specific branch you are currently on. Therefore, it is important to check that you are on the right branch before you commit (check the [Branching](branching.md#branching-in-practice) post for how you check which branch you are currently on and how to change branch). After you have created your commits, they needs to be *pushed* to the remote repository (on GitHub or or any other version control service that uses Git) for anyone else to be able to see it.

After you have pushed your commits, your work will be backed up on the remote storage. As your work progresses, you continuously commit and push changes to the branch you are working on until you are ready to ask for feedback through a pull request (more on pull requests and the review process in the [Pull Request](prs.md) post).

## Atomic Commits

Now we have looked at the phases of commits, but how often should you commit, and how much work should you include in a commit?

A good practice is to commit often based around isolated, complete changes. This practice is called **atomic** commits. This means that each commit should document a *single, complete unit of work* that represents a specific idea (as described in the posts [Make Atomic Git Commits](https://www.aleksandrhovhannisyan.com/blog/atomic-git-commits/#atomic-commits-and-the-single-responsibility-principle) and the [Git guides](https://github.com/git-guides/git-commit)). As a result, that one commit should do one - and only one - thing, which can be summed up in a short, simple sentence (i.e., in the *commit message*).

An atomic commit can also be described as a commit of the smallest possible size that can be undone without any unwanted side effects apart from what would be expected based on its commit message. Following on this description, a commit is not atomic, if undoing it removes other changes than described.

It's not important how many lines of code or text you have created or modified, or how many files it concerns. Rather, as long as you commit a single, complete unit of work that can be described in a short, simple message, the "size" of the changes (in terms of the number of modified lines) doesn't matter.

Working with atomic commits can sound simple, but it takes practice. How do you describe your work in a short, clear message and what if you start working on a couple of different things before you commit?

Fear not, we have some tips for you! The first tip concerns best practices for commit messages, the second covers how to do partial commits (i.e., including some, but not all, of the changes you have made to the same file). Lastly, we'll go through how to undo commits.

## Commit Messages

What constitutes a good commit message can differ according to different conventions, but generally, we recommend the following guidelines for writing commit messages (inspired by the [Conventional Commits guidelines](https://www.conventionalcommits.org/en/v1.0.0/), the post [A note about Git Commit Messages](https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html), [Writing Good Commit Messages: A Practical Guide](https://www.freecodecamp.org/news/writing-good-commit-messages-a-practical-guide/), and [Bad Commit Messages Hall of Shame](https://www.codelord.net/2015/03/16/bad-commit-messages-hall-of-shame/)).

According to the Conventional Commits convention, commit messages should be structured like so:

```default
<type>([optional scope]): <description>

[optional body]

[optional footer]
```

Below, this structure is unpacked by first presenting the required items and, subsequently, the optional items:

- **`<type>`**: Specifies what the kind of commit it is, using one of the types below:
  - `feat`: Introduces a new feature
  - `fix`: Fixes a bug
  - `style`: Introduces updates related to styling (i.e., changes that don't affect the meaning of the code, such as white-space, formatting, missing semi-colons, etc.)
  - `refactor`: Refactors a specific section of the codebase (change that neither fixes a bug nor adds a feature).
    - Note: Refactoring is the process of restructuring code, while not changing its original functionality.
  - `test`: Everything related to testing (such as adding missing tests or correcting existing tests)
  - `docs`: Everything related to documentation
  - `chore`: Regular code maintenance, i.e., other changes that doesn't modify source or test files
  - `revert`: If a mistake has been made in a previous commit that you would like undo/revert

- **`<description>`**: A short, precise summary of the code changes written in imperative mood, immediately following the colon and space after the type/scope prefix.
  - The description briefly describes what was done, enabling future collaborators or your future self to effectively glance through the history and find what is needed
  - It's written in imperative mood. i.e., "Fix button disappearance on click", not "Fixed", "Fixing", or "Fixes"
  - It's self-contained. You can refer to an issue that the commit fixes using hash (e.g., #13), but remember to include what the changes were, so the reviewer don't have to go to that issue to understand the changes

- **`[optional scope]`**: If needed, provide additional contextual information.
  - A scope should be a noun describing a section of the codebase surrounded by parenthesis.

- **`[optional body]`**: If needed, provide additional contextual information about the code changes in the body.
  - If your commit requires additional text, separate the subject from the body with a blank line.
  - Use the body to explain the changes you made and *why* you made them. This way you ensure that the reviewer (and your future self) understands what the original problem was.

- **`[optional footer]`**: If needed, provide one or more footers consisting of a word token, `:<space>` or `<space>#`, and a string value
  - In the footer, you can refer to who has reviewed the changes or refer to an issue this commit solves.
  - E.g., "Reviewed-by: Z" and/or "Issue: #123"

To aid the understanding of all these parts of a conventional commit message, here are some examples:

### Commit Message with Only Required Items (Prefix and Description)

```default
fix: reduce data point opacity for a clearer regression line in the scatter plot
```

### Commit Message with All Optional Items

```default
docs(decision-posts): update headers to fit template

The headers of these posts did not follow the new decision post template.
Therefore, I have re-ordered the sections to fit the updated template.

Issue: #31 (update decision posts to fit new template)
```

### Commit Message with Required Items + Scope and Body

```default
feat(t-test): add option to change significance level

For the second part of our analysis, we want to be able to change the 
significance level to 0.01 following existing literature. 
The default is still 0.05.
```

As you can see in the examples above, following the conventional commit structure makes the work included in the commit quite explicit and clear. However, including all items from the conventional commits convention can result in quite long commit messages. All items are, therefore, not required for all commits. But, when you make larger changes or changes where additional context is needed to understand *why* the change was made, including the body and/or footer can be very useful.

When going through a repository's history, consistency is key. Therefore, try to follow the commit convention specified by your team or your project and stick to them throughout the project.

## Example of Atomic Commits using the Conventional Commit Structure

:warning: Verbose? Maybe remove this example? However, it does remind the reader of branching practices and how commits fit into the scheme of the GitHub flow. ... this post is just very long by now ... :warning:

Let's say you want to create a scatter plot for your analysis. To follow the GitHub flow, you first need to create a new branch for your changes. Adding a scatter plot will be to add a new feature, and following the branching naming convention described in [Branching](branching.md), the branch can be called `feature/add-scatter-plot`. When you have switched to this new branch, you can start making the scatter plot.

![Figure of committing workflow following the guidelines in this post. NB: Within the GitHub flow, you always create a supporting branch, commit your changes there, and after a PR and review, the approved changes will be merged into main.
](../images/commits.png)

First, you create the initial version of the scatter plot showing the data points on relevant axes. You add these changes to the staging area and commit with the message `feat: init scatter plot`.

Then, you decide that it would be nice to add a linear regression line to the scatter plot to see the trend line in the data points. You commit these changes with the message `feat: add regression line`.

Then, you add legends to the plot to make it easier to understand. You commit these changes with the message `feat: add legends`.

Last, you found that data points make the regression line a bit difficult to see. Therefore, you lower the opacity of the data points, and commit these changes with the message `fix: reduce data point opacity for a clearer regression line in the scatter plot`.

Now your work on the scatter plot is complete and you would like feedback from your collaborators before the changes are merged to the main branch. So, you create a pull request (more on those in the [Pull Request](prs.md) post). After your changes has been reviewed, your feature branch `feature/add-scatter-plot` is merged into the main branch and deleted.

## Commits in Practice (the Basics)

Like most things in Git, committing files are possible both through the Terminal and with most Git interfaces.

Below, we'll go through how to stage, commit, and push to the remote repository using VS Code and the Terminal. If you use another source-code editor, try searching online - there's typically plenty of nice guides out there.

Importantly, commits are created on the branch you are currently on. Therefore, always remember to check that you are on the branch you intend to be on before you commit. If you don't remember how you check which branch you are on or how to create a new branch, go to the [Branching in Practice](branching.md#branching-in-practice) section in the Branching post.

::: panel-tabset

### Commit using VS Code

If you use VS Code, go to the *Source Control* view in the sidebar on the left. This view shows the changes you have made since your last commit. You can click on each file you have made changes to, to see the lines that have changed (highlighted).

As described above, the first phase of a commit is to stage the changes you want to commit. To stage a file, go to the *Source Control* view and click the `+` icon next to the file. If you stage a file by mistake, you can press the `-` icon next to the file name.

The next phase of a commit is to stage the selected changes. You can type the commit message in the text box in the upper part of the sidebar and click the `Commit` button when you're done. Now, you have completed your commit and the changes has been saved as a "snapshot" in your local repository.

Remember, if you want to backup your changes and allow your collaborators to see your work, you have to push your changes to the remote repository.
In VS Code, this is done by pressing the `···` button at the top left of the *Source Control* view and click `Push` in the dropdown menu.

We want to emphasise that you should commit often, since this will allow more versions to revert to, if need be. VS Code allows you to navigate through local changes and commits in the *Explorer* view, by clicking on the *Timeline* view in the bottom of the sidebar.

If you would like visualisations on how to stage and commit, go to VS Code's posts [Introduction to Git in VS Code](https://code.visualstudio.com/docs/sourcecontrol/intro-to-git#_staging-and-committing-code-changes) and [Using Git source control in VS Code](https://code.visualstudio.com/docs/sourcecontrol/overview).

::: {.callout-tip}

The VS Code extension [Conventional Commits](https://marketplace.visualstudio.com/items?itemName=vivaxy.vscode-conventional-commits) helps with writing commit messages following the Conventional Commits convention. To see how this extension works in VS Code, go to [this video](https://www.youtube.com/watch?v=lwGcnDgwmFc).

:::

### Commit using the Terminal

If you want to commit using the Terminal, you first have to open a Terminal.

If you use VS Code to edit your code, you can open a Terminal using the command palette (press `Cmd+Shift+P` or `Ctrl+Shift+P`, depending on whether you have a Macbook or a Windows) and write "Terminal". Choose the option `Terminal: Open New Terminal`.

Once you have opened a Terminal, you can start by checking the status of your Git repository:

```bash
git status
```

It is always a good idea to run this command before committing, since it tells you which branch you are on and shows you which files have been created or changed since the last commit.

Then, you stage the files, with the `git add` command:

```bash
# stage specific file
git add <file-name>

# stage all modified and untracked files
git add .
```

In the first command, you stage a specific file by changing `<file-name>` with the relative path to the file you want to stage. The relative path in this case is the path from your root directory (i.e., your repository folder) to the file.

If you want to stage all changes you have made, you can use a period `.` after the command, as seen in the second command above.

Next, you want to commit your staged changes and write a commit message using the `-m` flag:

```bash
git commit -m "<commit-message>"
```

The `-m` flag enables you to write your commit message directly in the Terminal. Without this flag, the command will open your default text editor, which is probably VIM (if this happens, you can press `esc`, then `:q` and `Enter`).
Replace `<commit-message>` with a short description of your changes, preferably following the Conventional Commits structure. Remember quotation marks around your message, otherwise Git will try to parse it as a file name.

Now, you have completed the two phases of a commit. Remember, if you want to backup your changes and allow your collaborators to see your work, you have to push your changes to the remote repository. In the Terminal, you push by writing:

```bash
git push
```

We want to emphasise that you should commit often, since this will allow more versions to revert to, if need be. Git you to navigate through previous commits using the `git log` command. To escape the log, press `q` in the Terminal.

GitHub's [Git Guides](https://github.com/git-guides/git-commit) go through the different steps of committing using the Terminal. The [Git Documentation](https://git-scm.com/docs/git-commit) also covers how to commit in a more technical manner.

:::

## Partial Commits

Sometimes, when you are working on a project, you start to add do several things before you start committing. This can seem like a no-go when we want to create atomic commits, but don't worry: Git can handle this with partial commits.

A *partial commit* is when you commit some parts of the changes you have made in a file but not all of them.

::: panel-tabset

## Partial Commit using VS Code

After you have completed some changes and you want to commit them, go to the *Source Control* view in the sidebar on the left of the screen.

Click on the file you would like to do a partial commit on. This will show you the *working tree* of the file, i.e., the changes you have made since the last commit.

Mark the lines you would like to add to the staging area, and right click. Choose *Stage Selected Lines* to add the lines to the staging area.

Repeat until you have staged the lines you would like to include in your next commit.

Then, write a commit message in the box saying *Message* and press the *Commit* button.

Now, you have completed a partial commit!

## Partial commit using the Terminal

There are multiple ways to do a partial commit in the Terminal. One way is to use the patch flag (`-p`) with the git add command:

```bash
git add -p <name-of-file>
```

Where `<name-of-file>` is the name of the file you would like to do a partial commit on.

This command will show you the first chunk with changes with edited or deleted text shown in red and the new text shown in green. Black text is unchanged.

In Git, a changed part is called a *hunk* and you will have the following options for the shown hunk:

```default
y = Stage this hunk to commit next.
n = Don’t stage this hunk to commit next.
q = Quit. Don’t stage this or any other remaining hunks.
a = Stage this hunk and all later hunks to commit next.
d = Don’t stage this hunk or any other remaining to commit next.
g = Select a hunk to go to.
/ = Search for a hunk matching the given regex.
j = Leave this hunk undecided, and see the next undecided hunk.
J = Leave this hunk undecided, and see the next hunk.
k = Leave this hunk undecided, and see the previous undecided hunk.
K = Leave this hunk undecided, and see the previous hunk.
s = Split the current hunk into smaller hunks.
e = Manually edit the current hunk.
? = Print the hunk help.
```

Continue with choosing the appropriate options until you are through the file(s) you want to add to the staging area.

To commit and write the commit message in the Terminal:

```bash
git commit -m <commit-message>
```

Change `<commit-message>` to a short sentence describing your work, potentially following the structure from Conventional Commits.

Now, you have completed a partial commit!

:::

## Undoing a Commit

If you make an error in your commit, there are ways to undo them without rewriting your repository's history. Importantly, it's a lot "safer" to undo a local commit, i.e., a commit you haven't pushed to the remote repository on e.g., GitHub. It is possible to undo a pushed commit, but this is a more delicate operation and should be done with caution.

In general, it's considered bad practice to directly modify the commit history that has been pushed to a shared repository, especially if others are collaborating on the same codebase. For example, if others have already pulled the changes you pushed, modifying the commit history can lead to inconsistencies and conflicts in their local repositories.

Therefore, especially if you are new to Git, we recommend to avoid undoing commits that you have pushed. If you have already pushed your commit, revert the change with a commit message using the `revert` prefix.

If you would like to undo a commit (without rewriting the history of your repository), this is how to do it:

::: panel-tabset

## Undo the Most Recent Local Commit in VS Code

In VS Code, we can use the command palette to undo a commit. Get the command palette by pressing `cmd+shift+P` (Macbook) or `ctrl+shit+P` (Windows). Then type "Git: Undo last commit" and click that option.

Alternatively, we can click "Undo Last Commit" in the "Source Control" sidebar, as shown in the video below:

{{< video <https://www.youtube.com/watch?v=HRn2lcOcjw4> >}}

Voila! We have undone our last commit using VS Code.

If you want to learn more about commits in VS Code, see the [Commit](https://code.visualstudio.com/docs/sourcecontrol/overview#_commit) section in the VS Code documentation.

## Undo the Most Recent Local Commit Using a Terminal

To undo a commit in a Terminal, we first need to open a Terminal. This can be done using the command pallet by pressing `cmd+shift+P` (Macbook) or `ctrl+shit+P` (Windows). Then type "Terminal" and click the "Terminal: Create New Terminal" option.

As described in GitHub's [Git Guides](https://github.com/git-guides/git-commit), the safest way - and in most cases the **recommended way** - to undo a commit, is to use the following command:

```bash
git revert <commit>
```

This command looks at the commit specified and then applies the inverse of those changes in a new commit. In this way, you undo the changes without altering the repository's history. `<commit>` can be specified in multiple manners (for additional information, see the [git-revert](https://git-scm.com/docs/git-revert) documentation). An easy way to specific a commit is in relation to `HEAD` (the branch's most recent commit). If you want to revert the last commit, write `git revert HEAD~1`. Alternatively, if you want to revert the fourth last commit, write `git revert HEAD~3`.

In the [git revert documentation](https://git-scm.com/docs/git-revert), it is strongly recommended to explain *why* the original commit was reverted.

Go to the [Git Guides](https://github.com/git-guides/git-commit#how-to-undo-commits-in-git) for a run-through of how to undo a commit.

:::

## Summary

- *Commits* are the save points within Git’s version control and can be thought of as snapshots along the timeline of your Git repository
- There are two stages to commits: *Staging* (i.e., preparing which changes to include in the next commit) and *committing*
- Commits include a *commit message* as well as meta data, such as author and time of commit
- You should commit often based around isolated, complete changes (*atomic* commits)
- Following the *Conventional Commits* convention, a commit message should have this structure:

  ```default
  <type>([optional scope]): <description>

  [optional body]

  [optional footer]
  ```

- In this post, we have shown how to stage, commit, and push using VS Code and the Terminal
- Furthermore, we have looked at *partial commits*, i.e., committing only a part of a file instead of the entire file. This practice gives you more control on how you structure your commits.
- Lastly, we have looked at how to undo a commit, without rewriting the history of your repository.
