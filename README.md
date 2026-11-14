Olist Commerce Data Analysis and Engineering




## EDA checklist (scoped: orders, order_items, customers, products)

**Rule:** finish all steps on one table before starting the next.

☐ **1. Schema and types.** How many rows, which columns, what types?
*Why:* Wrong types break SQL and Power BI quietly.
*Red flag:* Dates or numbers stored as strings; numeric IDs/zips losing leading zeros.

☐ **2. Grain.** What does one row represent? Is the expected key actually unique?
*Why:* Wrong grain = wrong joins and double counting.
*Red flag:* Distinct key count ≠ row count.

☐ **3. Nulls.** Null count (and %) for every column.
*Why:* Know what you can rely on.
*Red flag:* Nulls in a column that should always be filled.

☐ **4. Why null?** (only if #3 found nulls) Break nulls down by a category column.
*Why:* Expected nulls (canceled order, never delivered) are handled differently from errors.
*Red flag:* Nulls where business logic says there shouldn't be any.

☐ **5. Keys and joins.** Does every foreign key match a row in the table it points to? Is the relationship 1:1 or 1:many?
*Why:* Orphan keys break Power BI relationships and silently drop rows in inner joins.
*Red flag:* Keys with no match; a "1" side that isn't actually unique.

☐ **6. Notes.** 3–5 bullets: finding, numbers, what you'll do about it (fix, filter, flag, ignore), open questions.
*Why:* This is the deliverable. Code without conclusions isn't EDA.

### Progress
| Table | 1 | 2 | 3 | 4 | 5 | 6 |
|---|---|---|---|---|---|---|
| orders | ✅ | ✅ | ✅ | ⬜ | ⬜ | ⬜ |
| customers | ◐ | ✅ | ⬜ | ⬜ | ⬜ | ⬜ |
| order_items | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ |
| products | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ | ⬜ |