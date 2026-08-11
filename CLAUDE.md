## Communication

- Always prefer Markdown over reStructuredText. This applies everywhere without
  exception: code comments, docstrings, chat messages, commit messages, PR
  descriptions, etc. This means **USE SINGLE BACKTICKS ONLY.** Use `value`, and
  never ``value``. Double backticks are RST syntax and must *never* appear in
  any output you produce.
- Do not invent jargon. If a given phrase has not been used in existing
  communication, do not invent it. I do not ever want to write the term
  load-bearing or gate. Don't refer to conditionals as "gating" something.

## Code

- All comments and docstrings should be in plain English. Do not reference code
  within comments and docstrings unless strictly necessary. Do not ever include
  line numbers in prose.
- Skip obvious comments or docstrings – only explain the non-obvious "why".
- Do not prefix constants with `_`, even if they're only relevant to a single
  file.
- Do not add a constant to the top of the file if it's only used in a single
  spot. This only creates indirection and hurts readability without any
  benefits.
- Do not inline imports unless you have empirical proof that a top-level import
  doesn't work.

## Tests

- When writing multi-line docstrings, always leave the first like empty. That
  is, instead of `"""Summary line` do:
    ```
    """
    Summary line
    ```
- When asserting on a boolean value in tests, do NOT write `assert xyz` or
  `assert not xyz`. Instead, write `assert xyz is True` or `assert xyz is
  False`. This is more precise and ensures an unexpected truthy/falsy object
  is not gonna sneak through.

## Pull Requests & Committs

- Always talk in ASD-STE100 Simplified Technical English.
- Do not ever add a "Co-Authored-By" in the commit message.
- If you're creating a Pull Request that's gonna close an Issue, say "Closes
  ISSUE_ID". If you're only making progress on the Issue, say "Part of
  ISSUE_ID". Never say "Ref".
- Include the complete link to an Issue you're closing/part of. That means,
  in Linear, "[TEAM-XYZ](https://linear.app/{org}/issue/{issue_id})".
- Prefer the GitHub CLI (invoked via `gh`) to interact with GitHub (e.g.
  access/create issues or pull requests).
