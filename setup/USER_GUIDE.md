# Job Application System — User Guide

## What This Is

An automated job application workflow powered by Claude. You provide your experience details and base resume, then Claude tailors resumes for each job posting, organizes files by company, and flags you for approval before submitting anything.

## Quick Start

1. **Run the setup script:**
   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```
   This creates the folder structure and starter templates.

2. **Fill out your Experience Synopsis** (`My Info/Experience_Synopsis.md`):
   This is the most important file. Be thorough — every detail you include gives Claude more to work with when tailoring resumes. Include all jobs, skills, certifications, and specific framing notes (e.g., "emphasize leadership for manager roles").

3. **Drop your base resume** into `My Info/`:
   Claude uses this as a formatting and style reference. Both .docx and .pdf versions are helpful.

4. **Optional — Application Information sheet:**
   Ask Claude to create a fillable Application Information document with fields for personal info, work authorization, EEO demographics, education, references, and common application questions. Fill it out so Claude can auto-populate job applications on your behalf.

5. **Share the folder with Claude** in Cowork mode and say:
   > "Read the CLAUDE_INSTRUCTIONS.md in the setup folder, then help me apply for jobs."

## How It Works

### Adding a New Job

Create a folder with the company name and drop the job posting HTML inside:
```
Jobs Applied/
  CompanyName/
    JobPosting.html
```
Then tell Claude: "Check for new folders."

Claude will read the posting, cross-reference your Experience Synopsis, and generate a tailored resume (docx + pdf) inside that company folder.

### Folder Structure

```
Jobs Applied/
  My Info/              # Your personal documents (Claude reads, doesn't modify)
  Applied/              # Move folders here after applying
  NotApplied/           # Move folders here if you decide not to apply
  setup/                # This guide and setup files
  ApplicationAccounts.txt   # Log of accounts created on job sites
  Applied_Jobs_Tracker.csv  # Tracking spreadsheet
  CompanyName/          # One folder per job opportunity
    JobPosting.html       # The original posting
    YourName_Resume_CompanyName.docx
    YourName_Resume_CompanyName.pdf
    YourName_Cover_Letter_CompanyName.docx  (only if requested)
    YourName_Cover_Letter_CompanyName.pdf   (only if requested)
```

### Daily Job Search (Optional)

Ask Claude to set up a scheduled task that searches LinkedIn (or other boards) on a recurring basis. You specify target titles, location, and industries. Claude will create folders and tailored materials for matching postings, then notify you for approval.

## Tips

- **Be specific in your Experience Synopsis.** Instead of "analytics experience," write "8+ years analytics experience across healthcare claims, population health, and genomics." Claude mirrors your language.
- **Tell Claude your framing preferences.** For example: "Innovista operates as an ACO — lean into VBC experience for healthcare roles." These notes make tailoring much stronger.
- **Cover letters are only generated when you ask.** This saves time and tokens.
- **Start fresh sessions for unrelated tasks.** Long conversations accumulate context and cost more tokens.
- **Review the PDF, not Claude's summary.** Claude keeps post-delivery messages short so you can judge the document yourself.
