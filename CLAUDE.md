- **SINGLE BACKTICKS ONLY.** Use `value`, and never ``value``. Always prefer
  Markdown over reStructuredText. This applies everywhere without exception:
  code comments, docstrings, chat messages, commit messages, PR descriptions.
  Double backticks are RST syntax and must *never* appear in any output you
  produce.
- Prefer the GitHub CLI (invoked via `gh`) to interact with GitHub (e.g.
  access/create issues or pull requests).
- Prefer all comments and docstrings should be in plain English. Do not
  reference code within comments and docstrings unless strictly necessary.
- Skip obvious comments or docstrings – explain the non-obvious "why" only.
- When writing multi-line docstrings, always leave the first like empty. That
  is, instead of `"""Summary line` do:
    ```
    """
    Summary line
    ```
