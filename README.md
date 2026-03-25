# JobsApplied

An automated job application workflow powered by Claude. You provide your experience details and a base resume; Claude tailors resumes for each job posting, organizes files by company, and flags you for approval before submitting anything.

---

## Quick Start

### 1. Copy the files

Clone or download this repository:

```bash
git clone https://github.com/zamays/JobsApplied.git
cd JobsApplied
```

### 2. Run the setup script

```bash
chmod +x setup/setup.sh
./setup/setup.sh
```

This creates a `Jobs Applied/` folder in your current directory with the full folder structure and starter templates. You can optionally provide a custom destination:

```bash
./setup/setup.sh "~/Documents/My Job Search"
```

### 3. Fill out your Experience Synopsis

Open `Jobs Applied/My Info/Experience_Synopsis.md` and fill it in completely. This is the single most important file — every detail you include gives Claude more to work with when tailoring resumes. Include:

- Contact info
- Work history (all relevant positions, responsibilities, tech stack)
- Education and certifications
- Key technical skills and domain expertise
- Job search preferences (target titles, location, work mode)
- Framing notes for Claude (e.g., "emphasize leadership for director-level roles")

### 4. Drop your base resume into `My Info/`

Place your current resume (.docx and/or .pdf) in `Jobs Applied/My Info/`. Claude can use it as a formatting and style reference.

### 5. Copy the Claude instructions into your session

Copy `setup/CLAUDE_INSTRUCTIONS.md` into your Claude Cowork session folder so Claude (Opus) can read it at the start of every session.

### 6. Share the folder with Claude

Share the `Jobs Applied/` folder with Claude in Cowork mode and say:

> "Read the CLAUDE_INSTRUCTIONS.md in the setup folder, then help me apply for jobs."

---

## How It Works

### Adding a New Job

Create a folder with the company name and drop the job posting HTML inside:

```
Jobs Applied/
  CompanyName/
    JobPosting.html
```

Then tell Claude: `"Check for new folders."`

Claude will read the posting, cross-reference your Experience Synopsis, and generate a tailored resume (docx + pdf) inside that company folder.

### Folder Structure

```
Jobs Applied/
  My Info/                            # Your personal documents (Claude reads, doesn't modify)
    Experience_Synopsis.md            # Primary source of truth for all tailoring
    YourName_Resume.docx              # Your base resume
    Application_Information.docx      # Optional fillable form (ask Claude to generate it)
  Applied/                            # Move company folders here after applying
  NotApplied/                         # Move company folders here if you decide not to apply
  setup/                              # Setup script and instruction files
  ApplicationAccounts.txt             # Log of accounts created on job sites
  Applied_Jobs_Tracker.csv            # Status tracking spreadsheet
  CompanyName/                        # One folder per job opportunity
    JobPosting.html                   # The original job posting
    YourName_Resume_CompanyName.docx
    YourName_Resume_CompanyName.pdf
    YourName_Cover_Letter_CompanyName.docx   (only if requested)
    YourName_Cover_Letter_CompanyName.pdf    (only if requested)
```

### Tracking Applications

Use `Applied_Jobs_Tracker.csv` to track every opportunity — whether you apply or not. Update it as your applications progress. See [`setup/TRACKER_INSTRUCTIONS.md`](setup/TRACKER_INSTRUCTIONS.md) for full details on columns and how to update entries.

---

## Files in This Repo

| File | Purpose |
|------|---------|
| [`setup/setup.sh`](setup/setup.sh) | Bash script that creates the full folder structure and starter templates |
| [`setup/CLAUDE_INSTRUCTIONS.md`](setup/CLAUDE_INSTRUCTIONS.md) | Instructions Claude reads at the start of every session — covers resume generation, tailoring strategy, folder structure, and token efficiency rules |
| [`setup/USER_GUIDE.md`](setup/USER_GUIDE.md) | Human-readable guide explaining how to use the system |
| [`setup/TRACKER_INSTRUCTIONS.md`](setup/TRACKER_INSTRUCTIONS.md) | How to maintain the jobs tracker spreadsheet |

---

## Tips

- **Be specific in your Experience Synopsis.** Instead of "analytics experience," write "8+ years analytics experience across healthcare claims, population health, and genomics." Claude mirrors your language.
- **Add framing notes.** For example: "This company operates as an ACO — lean into value-based care experience for this role." These notes make tailoring significantly stronger.
- **Cover letters are only generated when you ask.** This saves time and tokens.
- **Start fresh sessions for unrelated tasks.** Long conversations accumulate context and cost more tokens.
- **Review the PDF, not Claude's summary.** Claude keeps post-delivery messages short so you can judge the document yourself.
- **Optional — Application Information sheet:** Ask Claude to generate a fillable Application Information document with your personal info, work authorization, EEO demographics, education, and references. Fill it out so Claude can auto-populate job applications on your behalf.

---

## License

[MIT](LICENSE)
