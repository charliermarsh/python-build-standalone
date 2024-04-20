============
Contributing
============

Releases
========

To cut a release, wait for the "MacOS Python build", "Linux Python build", and
"Windows Python build" GitHub Actions to complete successfully on the target commit.

Then, create a new pre-release using the date (in `YYYYMMDD` format) as the tag name and title.
For example, to create a release on April 19, 2024 at commit `29abc56`:

```shell
just release-create 29abc56954fbf5ea812f7fbc3e42d87787d46825 20240419
```

Once the pre-release exists in GitHub, run the "Release" GitHub Action to populate the release
artifacts (by downloading the artifacts from each workflow, and uploading them to the GitHub
Release) and set the `latest-release` branch. The "Release" GitHub Action assumes that the
pre-release already exists on GitHub, and takes as input the tag name and commit SHA.

Upon completion of the "Release" workflow, populate the release notes in the GitHub UI and promote
the pre-release to a full release.

At any stage, you can run the "Release" workflow in dry-run mode to avoid uploading artifacts to
GitHub. Dry-run mode can be executed before or after creating the release itself.
