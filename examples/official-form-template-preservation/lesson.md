# Official Form Template Preservation

## Trigger

Use this lesson when an agent is asked to fill an official DOCX/PDF form, application form, reimbursement form, school/company form, or any document where the submitted layout matters.

## Lesson

The source template is part of the requirement. The default path is to fill the existing template, not to recreate it.

## Failure Pattern

- Agent recreates the form from scratch with a new table.
- Output silently changes A4 to Letter or changes page count.
- Borders, merged cells, signature areas, stamps, or photo slots disappear.
- Text looks acceptable in a DOCX editor but breaks after PDF export.

## Better Path

1. Render or inspect the blank template first.
2. Fill existing DOCX/PDF cells, fields, and image placeholders.
3. Export to PDF using the same office/rendering stack the user can run locally.
4. Check `pdfinfo` for page count and page size.
5. Render the PDF to images and visually compare it with the template.
6. Record the output paths and any remaining wording/layout review needed in the thread.

## Rule

Only rebuild the layout if the original template cannot be edited. If rebuilding is unavoidable, document the reason and prove the rebuilt output matches the original template geometry.
