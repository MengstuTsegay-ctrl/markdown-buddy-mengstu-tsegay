# AI Prompts and Key Responses Appendix

> **AI Assistance Declaration:** I used ChatGPT (OpenAI, accessed November 10, 2026) for documentation structure, formatting suggestions, wording refinement, and validation guidance. This appendix records the final prompts and summarizes the key responses. I verified suggestions against the actual repository structure, Markdown syntax, Pandoc parsing, and a self spot-check. The analysis is designed to calculate results directly in R. I am responsible for the accuracy and originality of this work.

## Tool Record

| Item | Disclosure |
|---|---|
| Tool | ChatGPT by OpenAI |
| Model/version | Model displayed in the ChatGPT interface at the time of use |
| Date used | November 10, 2026 |
| Data shared | A description of a synthetic customer-order project; no personal or confidential data |
| Verification | Manual syntax review, Pandoc conversion, file/path checks, and self spot-check |

## Prompt Set 1: README Structure

### Seed Prompt

> Explain what sections a good GitHub README for an R data analysis project should include.

### Key Response

The response recommended a title, overview, repository structure, data description, requirements, installation, usage, outputs, limitations, contribution guidance, license, and author information.

### Refinement Prompt

> Revise the sections list so it is concise and uses Markdown headers and bullet formatting. Keep it appropriate for a small base-R project using synthetic customer-order data.

### Key Response

The revised response organized the recommendations under Markdown headers and removed sections that were unnecessary for a small educational project.

### Critique/Validation Prompt

> Check the Markdown syntax for correctness and readability. Identify unsupported claims, missing code-fence labels, unclear relative links, privacy issues, or sections that do not match the actual repository.

### Key Response

The critique emphasized consistent heading levels, language labels on code fences, valid relative links, explicit synthetic-data disclosure, and avoiding claims that the project had been deployed or executed without evidence.

### Changes Made After Review

- Added an exact project tree and variable dictionary.
- Used language-specific fenced blocks for Bash and R.
- Added privacy, ethics, limitations, and validation sections.
- Removed any implied public GitHub link.
- Marked RStudio knitting and GitHub preview as remaining student checks.

## Prompt Set 2: R Markdown Documentation

###  Prompt

> Here is my R script description: it reads synthetic customer orders, validates required fields, calculates revenue, summarizes revenue by region and category, and saves CSV tables and a bar chart. Suggest Markdown formatting and code block examples.

###  Response

The response suggested sections for purpose, inputs, validation, processing, outputs, execution, limitations, and verification, with short R code examples.

### Refinement Prompt

> Add syntax highlighting and improve section organization using a clear hierarchy such as Purpose, Inputs, Processing Logic, Outputs, How to Run, Verification, and Limitations. Use valid R Markdown chunks.

###  Response

The response recommended named R chunks, `eval=FALSE` for explanatory examples, a YAML header, a table of inputs and outputs, and relative links to related files.

### Critique/Validation Prompt

> Is the Markdown consistent with R Markdown best practices? Check the YAML header, chunk syntax, heading hierarchy, file paths, and whether the documentation makes claims that require actual execution.

###  Response

The critique recommended keeping one source of truth for execution, explaining why example chunks are not evaluated, and documenting the missing runtime verification rather than claiming a successful knit.

### Changes Made After Review

- Added valid YAML metadata and a table of contents.
- Used named R chunks with `eval=FALSE`.
- Kept execution in the `.R` script instead of duplicating the full analysis.
- Added a verification section and clearly identified the remaining knit check.

## Prompt Set 3: Reflection and Ethical Review

### Final Prompt

> Review the project documentation process and help organize three reflections: how AI improved the README, what risks or weaknesses appeared, and how validation changed the final files. Do not invent execution, peer review, deployment, or GitHub evidence. Emphasize privacy, synthetic data, transparency, and manual verification.

###  Response

The response highlighted that AI can accelerate structure and wording but may introduce unsupported claims, unnecessary dependencies, or incorrect paths. It recommended documenting limitations, recording exact verification methods, and distinguishing completed checks from pending student actions.

### Final Human Review Decisions

- No peer check is claimed; the documented check is a self spot-check.
- No public repository or deployment link is claimed.
- No successful R execution or RStudio knit is claimed in this environment.
- All data are labeled synthetic.
- The student must complete the final knit, GitHub preview, and LMS submission personally.

