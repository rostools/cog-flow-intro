---
title: "Introduction to Git"
date: last-modified
order: 1
---

{{< include /includes/_wip.qmd >}}

::: callout-note
If you are already familiar with the basics of Git and version control (such as committing, history, and pushing/pulling to a remote repository), you can skip this section.
:::

## Introduction

This post will cover some of the basics of Git and version control. We'll cover what repositories are, the interaction between local and remote repositories, as well as how Git tracks files and file changes.

## What is Git?

In short, [Git](https://git-scm.com/) is a free and open source distributed version control system. *Version control* means that changes are saved over time without overwriting previous versions, meaning that we record a history of how our files have evolved over time. So instead of having "v1", "v2", "v3", etc. in the name of your files, you only have one name for your files (e.g. "report.docx"). Along with that file, you will have the history of all the changes made to it at each stage that you have saved it. In Git, these "save points" are called "commits", which will be explained more in the [Commits](commits.md) post. This means that you can always go back to a previous version of your work. Nice! :tada:

With Git, you create something called a "repository" (often abbreviated to "repo") that serves as a "container" for all files and folders contained within the folder that you tell Git to track. This repo not only includes all the files and folders kept inside the "parent" or "main" folder, but also the entire revision history of all those files. Everything within the parent folder is tracked by Git.

The *distributed* part of Git refers to the fact that every person who works with a Git repository can have their own copy of that entire repository on their own computer, rather than on a central server. Each person's version of the repository could be connected to a shared repository. We'll cover that more in the the later section called [Repositories: Local and Remote](#repositories-local-and-remote). This connection enables easy collaboration with others.

If you want to learn more, the [GitHub Docs](https://docs.github.com/en/get-started/using-git/about-git) website has a great introduction to Git. Below is a quote from that website that explains this fairly well:

> "The file history appears as snapshots in time called commits. The commits can be organized into multiple lines of development called branches. Because Git is a \[distributed version control system\], repositories are self-contained units and anyone who has a copy of the repository can access the entire codebase and its history. Using the command line or other ease-of-use interfaces, a Git repository also allows for: interaction with the history, cloning the repository, creating branches, committing, merging, comparing changes across versions of code, and more."

## Repositories: Local and remote

When we want to work on a Git repository, we either create a new one or we clone (i.e., download) an existing one to our computer. When we have such a repository residing on our local machine, it's called a *local* repository.

The purpose of a local repository is to make changes to our code, create new branches (more on this in the [Branching](branching.md) post), and committing the changes. It also allows you to work offline, without needing a network connection.

In contrast, a *remote* repository is a repository hosted on a server or centralised platform (such as GitHub or GitLab). Because this copy of the repository is stored on a remote server, it allows for multiple developers to collaborate on the same codebase by interacting with this shared repository.

The purpose of a remote repository is to serve as a centralised hub for collaboration. Each developer can *push* their local changes to the remote repository, *pull* changes made by others to their local repository, and in this way coordinate their work. Furthermore, the remote repository serves as a place where you and your collaborators can review each others changes.

In short, a local repository is where you do your individual work and manage your project's history on your local machine. The remote repository is a shared, centralised location where you can collaborate and synchronise work with your collaborators.

This interaction between the local and remote repositories is a fundamental aspect of Git.

The figure below shows this interaction between the local and remote repositories (inspired by [this post](https://www.cs.swarthmore.edu/~adanner/help/git/)):

![The interaction between local and remote repositories](../images/local-vs-remote-repo.png)

In the figure, Developer 1 and Developer 2 has each their own local repository located on their computer. They have cloned (i.e., downloaded) their local repository from the remote repository on e.g., GitHub or GitLab. In their local repository, they complete their work by adding new files or modifying existing ones ("Add" in the figure) and they manage the history by saving their changes at different points in time ("Commit" in the figure).

When they have completed their changes, they can *push* them to the remote repository so their collaborators can review the changes they made (more on this process in the [Pull Requests](prs.md) post).

To see the changes that their collaborators have made and pushed to the remote repository or update their local repository with the changes in the remote repository, they "pull" the changes to their local repository.

## Initialising a Git Repository

Note: To be able to create a Git repository, you will need to have Git installed. Go to [git-scm.scm](https://git-scm.com/) or search online on how to install Git.

When you're starting a new project, you should create (i.e., initialise) a new Git repository to start keeping track of how your work progresses.

After you have initialised your new repository, you need to publish it to e.g., GitHub, to allow others to see and work on it too. When you publish a local repository to GitHub, this will create a new repository on your GitHub account. This allows for the code you have created locally to be pushed to GitHub and, in this way, it will be backed up and allow for others to see and collaborate to your project.

::: panel-tabset

### Initialise and Publish a Repo in VS Code

#### Initialise Local Repository in VS Code

First, open VS Code and press the *Explorer* view in the sidebar. Choose "Open Folder" and choose the folder on your computer where you would like your new repository to be located.

Then, in the *Source Control* view in the sidebar, click the "Initialize Repository" button. Now, you have created a new Git repository in the folder you chose.

#### Publish to GitHub in VS Code

In the *Source Control* view, click the "Publish to GitHub" button. Afterwards, you can name and describe the repository as well as decide whether it should be public or private.

When this is done, your code will be pushed to the remote repository and your code will be backed up and you can start collaborating with others on the project.

### Initialise and Publish a Repo using the Terminal

#### Initialise Local Repository using the Terminal

First, open a Terminal in the folder you would like to create your repository in. To navigate to folders in the Terminal, use the `cd` command. If you can't remember which folders are accessible, press `Tab` to see them.

```bash
cd /path/to/your/project/folder 
```

Then, initialise the new repository:

```bash
git init
```

This will create a `.git` folder in the repository (which might be hidden depending on the setting on your computer).

Then, create a README.md as the first file to your repository (this could be any file, but it's good practice to have a README in the repository that documents and introduces what's in the repository). For now, we will just create a README with a single header:

```bash
echo "# <my-project>" >> README.md
```

Change `<my-project>` to the name of your repository or the title of your project.
The `echo` command print the text `# <my-project>` to the Terminal, and the `>> README.md` command appends the output to a file named README.md. If the file doesn't exist, as in this case, this command will create the README.md file.

Now, we will add and commit the README.md file (what that means will be covered in the [Commits.md](commits.md) post).

```bash
git add README.md
git commit -m "Initial commit"
```

#### Publish to GitHub using the Terminal (and GitHub.com)

Go to [GitHub](https://github.com/) and log in to your account (or create an account if you don't have one).

Click "+" > "New repository" and follow the instructions.

To add the remote repository, insert your username and the name of your repository in the command below and run it in the Terminal:

```bash
git remote add origin https://github.com/<your-username>/<your-repository>.git
```

Now, push your local repository to GitHub:

```bash
git push -u origin main
```

And you're done! You have now initialised a Git repository and published it on GitHub.

:::

## Cloning an Existing Git Repository

If you want to work locally on a repository that already exists on e.g., GitHub, you will need to clone (i.e., download) the repository to your computer.

::: panel-tabset

### Cloning a Repository in VS Code

In VS Code, go to the *Explorer* view in the sidebar, and open the folder where you would like to locate the Git repository.

Then, go to the *Source Control* view and click the "Clone Repository" button.

If you want to clone a repository from GitHub, press the option "Clone from GitHub". Now, you will be prompted to authenticate with GitHub to connect to your account.
Furthermore, this allows you to search all available repositories and clone private repositories directly from VS Code.

Select the repository you want to clone, and you are good to go!

### Cloning a Git Repository using the Terminal

First, go to the GitHub repository you want to clone on GitHub. Then, click the green "Code" button ans copy the repository URL.

Then, open a Terminal in the folder you would like to clone the repository in. To navigate folders in the Terminal, use the `cd` command. If you can't remember which folders are accessible, press `Tab` to see them.

```bash
cd /path/to/your/project/folder 
```

To clone the repository, use the `git clone`command` followed by the repository URL you just copied:

```bash
git clone <repository-url>
```

Replace `<repository-url>` with the URL you copied from GitHub.

Now you have  cloned a GitHub repository to your local machine!

:::

## Git Workflows in Practice

Throughout the following posts, you will be introduced to git commands and good practices following the GitHub flow, using a Terminal, VS Code, and GitHub.

Below, we have gathered some useful resources on how to use Git. These can be quite helpful (along with regular internet searches), when you can't remember how to do certain things with Git.

If you like to use the Terminal, the [Git documentation](https://git-scm.com/docs) contains thorough description of git commands, and this [video](https://www.youtube.com/watch?v=USjZcfj8yxE) goes through the basics of Git in 15 minutes.

If you prefer to use GitHub or VS Code, GitHub has some great[Git Guides](https://github.com/git-guides) and VS Code has a great [introduction to Git](htts://code.visualstudio.com/docs/sourcecontrol/intro-to-git).

:warning: Could also include a "cheat sheet" with common Git commands used in the Terminal + how to do the same things in VS Code? Or is that verbose, when that's basically what we'll unpack in the following posts? :warning:


## Summary

- *Git* is a free and open source distributed version control system
- *Version control* means that Git tracks how the files changes over time
- *Distributed* means that you can have your own copy of the Git repository on your local computer, which is connected to a shared repository
- A *repository* is a container for the project's code and history which includes all files and folders of the projects
- A *remote repository* is a shared repository hosted on a server or a centralised platform, such as GitHub or GitLab. It's a shared, centralised location where you can collaborate and synchronise work with your collaborators.
- A *local repository* is a local copy of the remote repository on e.g., your own computer. This is where you do your individual work and manage your project’s history on your local machine.
- To use Git, you first need to install it.
- To publish a repository to or clone a repository from GitHub, you need a GitHub account.
- Git repositories can be initialised and cloned in different ways. In this post, we have seen how it can be done in VS Code and the Terminal.

## Additional resources

- [Introduction to Reproducible Research in R: Version Control with Git](https://r-cubed-intro.rostools.org/sessions/version-control).
