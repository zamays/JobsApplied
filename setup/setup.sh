#!/bin/bash
# ============================================================
# Job Application System — Setup Script
# ============================================================
# Creates the folder structure and starter files for an
# automated job application workflow powered by Claude.
#
# Usage:
#   chmod +x setup.sh
#   ./setup.sh [TARGET_DIR]
#
# If TARGET_DIR is omitted, creates "Jobs Applied" in the
# current directory.
# ============================================================

set -e

TARGET="${1:-Jobs Applied}"

echo "Setting up job application system in: $TARGET"

# --- Create folder structure ---
mkdir -p "$TARGET/My Info"
mkdir -p "$TARGET/Applied"
mkdir -p "$TARGET/NotApplied"

# --- ApplicationAccounts.txt ---
cat > "$TARGET/ApplicationAccounts.txt" << 'EOF'
# Application Accounts Log
# Format: Site | Email | Date Created | Notes
# Example: Workday (Acme Corp) | you@email.com | 2026-03-24 | Created for Senior DS role
EOF

# --- Applied Jobs Tracker ---
cat > "$TARGET/Applied_Jobs_Tracker.csv" << 'EOF'
Company,Title,Date Found,Date Applied,Status,Salary Range,Location,Notes
EOF

# --- Experience Synopsis template ---
cat > "$TARGET/My Info/Experience_Synopsis.md" << 'SYNEOF'
# Your Name — Experience Synopsis
*Last updated: YYYY-MM-DD. Claude should check this file before writing any tailored resumes.*

## Contact
- Email:
- Phone:
- Location:

## Experience Summary
- **X years** developing [primary skill]
- **X years** of [secondary skill]
- **X years** supervisory/team management experience (if applicable)

## Current Education
- **University** — Degree (In Progress, Expected YYYY)
  - Focus area or notes

## Work History

### Company Name — Title (Location, Start–End)
- Key responsibility or achievement
- Another responsibility
- Tech stack or tools used

### Company Name — Title (Location, Start–End)
- Key responsibility or achievement

(Add all relevant positions)

## Education (Complete)
- University — Degree (Year)
- Certifications

## Key Technical Skills
- **Programming**: Languages
- **ML & Analytics**: Techniques
- **Cloud**: Platforms
- **Data Viz**: Tools
- **Other**: Tools, frameworks

## Key Strengths for Target Roles
- Strength 1
- Strength 2

## Domain Expertise
- **Industry 1**: Specific knowledge areas
- **Industry 2**: Specific knowledge areas

## Job Search Preferences
- Target titles:
- Location:
- Work mode: Remote / Hybrid / On-site / All
- Industry preference:

## Notes for Resume Tailoring
- Key facts to always include
- Framing notes for specific types of roles
- Cover letter tone preference
- Any other instructions for Claude

## Workflow Notes (Token Savings)
- Only generate a cover letter if explicitly requested
- Do not re-read SKILL.md for docx creation — patterns are established after first run
- Keep post-delivery summaries short — user will review the PDF
- Reuse the JS resume template pattern; only swap tailored content
- For new sessions: read this synopsis + the job posting HTML, then produce the resume directly
SYNEOF

# --- README in My Info ---
cat > "$TARGET/My Info/README.md" << 'READEOF'
# My Info Folder

Place your personal documents here. Claude reads from this folder but does not modify it unless you ask.

## Required
1. **Experience_Synopsis.md** — Fill this out completely. This is the single source of truth Claude uses to tailor every resume. The more detail you provide, the better your tailored resumes will be.

2. **Your base resume** (.docx and/or .pdf) — Drop your current resume here. Claude can use it as a style reference or starting point.

## Optional
3. **Application_Information.docx** — Ask Claude to generate a fillable application info sheet with your personal details, work authorization, EEO demographics, education, references, and common application questions. Fill it out so Claude can auto-populate applications.

4. **Additional documents** — Certifications, transcripts, cover letter samples, portfolio links, etc.
READEOF

echo ""
echo "Setup complete. Folder structure:"
echo ""
find "$TARGET" -type f | sort | sed "s|^$TARGET/|  |"
echo ""
echo "Next steps:"
echo "  1. Fill out: $TARGET/My Info/Experience_Synopsis.md"
echo "  2. Drop your base resume into: $TARGET/My Info/"
echo "  3. Share this folder with Claude in Cowork mode"
echo "  4. Tell Claude: 'Read the CLAUDE_INSTRUCTIONS.md in the setup folder, then help me apply for jobs.'"
