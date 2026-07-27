- **SINGLE BACKTICKS ONLY.** Use `value`, and never ``value``. Always prefer
  Markdown over reStructuredText. This applies everywhere without exception:
  code comments, docstrings, chat messages, commit messages, PR descriptions.
  Double backticks are RST syntax and must *never* appear in any output you
  produce.
- Prefer the GitHub CLI (invoked via `gh`) to interact with GitHub (e.g.
  access/create issues or pull requests).

## All Code

- Prefer all comments and docstrings should be in plain English. Do not
  reference code within comments and docstrings unless strictly necessary.
- Skip obvious comments or docstrings – explain the non-obvious "why" only.

## Python Code

- When writing multi-line docstrings, always leave the first like empty. That
  is, instead of `"""Summary line` do:
    ```
    """
    Summary line
    ```
- Do not EVER prefix constants with `_`, even if they're only relevant to a
  single file.


## Pull Requests & Committs

- Do not ever add a "Co-Authored-By" in the commit message.
- If you're creating a Pull Request that's gonna close an Issue, say "Closes
  ISSUE_ID". If you're only making progress on the Issue, say "Part of
  ISSUE_ID". Never say "Ref".
- Include the complete link to an Issue you're closing/part of. That means,
  in Linear, "[TEAM-XYZ](https://linear.app/{org}/issue/{issue_id})".
