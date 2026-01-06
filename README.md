# regression-book

Repo for writing undergraduate regression analysis book

[![Netlify Status](https://api.netlify.com/api/v1/badges/7c96b579-ba2a-477d-8337-3b836784958c/deploy-status)](https://app.netlify.com/sites/introregression/deploys)

🔗 [introregression.netlify.app](https://introregression.netlify.app) (deployed from `main` branch)

🔗 <https://matackett.github.io/regression-book/> (deployed from `draft` branch)

## Workflow (suggested by ChatGPT)

-   Create a new branch to write a new chapter

-   Once there is a good draft of the chapter, merge with the `draft` branch

```         
# example code

git checkout draft
git merge --no-ff ch3-results # makes the merge commit, wont' go back if other branch is older
git branch -d ch3-results # only do this if I'm ready to delete branch
git push origin draft
```

-   Once the draft is in a good place to share widely

    -   merge with the `main` branch

        ```         
        git checkout main
        git merge --no-ff draft
        git push origin main
        ```

    -   make a tag (specifies a new release)

```         
git checkout main
git tag -a v0.3 -m "Draft of Chapter 2 complete"
git push origin v0.3
```

(`-a` means an annotated tag and `v0.3` is the name of the tag, `-m` means message (like a commit message)
