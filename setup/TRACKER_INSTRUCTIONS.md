# Jobs Tracker — Maintenance Guide

## File Location
`Applied_Jobs_Tracker.xlsx`

## Overview

This spreadsheet tracks all job opportunities you've researched, whether you've applied or not. It serves as a single source of truth for your job search activity and allows you to:
- Monitor application status and dates
- Identify trends in job postings you find (companies, titles, locations)
- Prepare for follow-ups and rejections
- Document salary ranges and role details for future reference

## Columns Explained

| Column | Purpose | When to Fill |
|--------|---------|--------------|
| **Company** | Company name | When adding a new job |
| **Title** | Official job title | When adding a new job |
| **Date Found** | The date you discovered the posting | When adding a new job |
| **Date Applied** | The date you submitted your application | After applying; leave blank if "Not Applied" |
| **Status** | Applied or Not Applied | When adding a new job; update if status changes |
| **Location** | City/Remote/Hybrid | When adding a new job (from job posting) |
| **Salary Range** | If posted; format as "Min - Max" or "$X,XXX - $Y,YYY" | From job posting (if available) |
| **Notes** | Brief notes about the role or your decision | Ongoing (e.g., "Healthcare focus", "Declined — prefer remote") |

## How to Update

### When Claude Finds a New Job

After Claude creates tailored materials for a new company:

1. **Add a new row** at the bottom of the tracker
2. **Fill in these fields:**
   - Company
   - Title
   - Date Found (today's date)
   - Status: Set to "Applied" or "Not Applied" based on whether you want to proceed
   - Location (from the job posting)
   - Salary Range (if mentioned in the posting)
   - Notes (optional — any relevant details)
3. **Leave Date Applied blank** until you actually submit the application

### After Submitting an Application

1. **Find the row** for that job
2. **Update Date Applied** to today's date (or whenever you submitted)
3. **Update Notes** if needed (e.g., "Submitted", "Waiting for response")

### If You Decide Not to Apply

1. **Change Status** to "Not Applied"
2. **Update Notes** with your reason (e.g., "Not remote", "Salary too low", "Role doesn't match")
3. You can leave **Date Applied** blank for non-applied jobs

### When You Get a Response

Update the **Notes** column:
- "Interviewed — Round 1 (Date: MM/DD/YYYY)"
- "Rejected — insufficient experience"
- "Offer received (Date: MM/DD/YYYY)"
- "Accepted offer (Start: MM/DD/YYYY)"

## Tips

- **Keep Notes Brief**: Use initials and dates in parentheses for clarity
  - ✓ Good: "1st interview scheduled 3/28"
  - ✗ Too long: "I had a really good first interview with the hiring manager and they seemed interested"

- **Update Regularly**: Add new jobs right away so you don't lose track. Update status as soon as something changes.

- **Use for Follow-ups**: If a company hasn't responded after 2 weeks, you can reference this tracker and send a follow-up email.

- **Salary Data**: Collect this data even if you don't apply — it helps you understand market rates for your target roles.

- **Decision Log**: The "Notes" column also serves as a decision log. If you declined a role, write why. This helps you refine what you're looking for.

## Example Entry

```
Company: AlignmentHealthcare
Title: Director, AI and Data Science
Date Found: 2026-03-22
Date Applied: 2026-03-22
Status: Applied
Location: Remote
Salary Range: $198,219 - $297,329
Notes: Enterprise AI strategy, strong fit; awaiting response
```

## Tracking Status Over Time

As your applications progress, update the same row:

```
# Initial submission
Status: Applied
Date Applied: 2026-03-22
Notes: Submitted application

# After phone screen
Notes: 1st phone screen 3/28, strong feedback

# After rejection
Status: Applied (keep as-is, the full history is in Notes)
Notes: 1st phone screen 3/28, rejected 3/31 — scope differs from description

# After offer
Notes: 1st phone screen 3/28, 2nd interview 4/05, offer received 4/10, salary $X
```

## Syncing with Your Folder Structure

Your jobs are organized like this:

```
Jobs Applied/
  Applied/
    2026-03-22_CompanyName_JobTitle/
    ...
  NotApplied/
    2026-03-23_CompanyName_JobTitle/
    ...
```

**When Claude adds a new folder**, it will be in either `Applied/` or `NotApplied/`. Make sure you add a corresponding row to this tracker.
