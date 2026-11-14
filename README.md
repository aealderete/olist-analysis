Olist Commerce Data Analysis and Engineering



The EDA checklist

Phase 1: Structure (what am I looking at?)

☐ 1. Row count and schema. How many rows, which columns, what types?
Why: Wrong types quietly break your later work. A timestamp stored as a string can’t do date math.
Red flag: Dates or numbers stored as strings.

☐ 2. Grain. What does one row represent? Is the key you’d expect actually unique?
Why: If you get the grain wrong, every join and count after it is wrong, usually through duplicated rows.
Red flag: The number of distinct keys doesn’t match the number of rows.

Phase 2: Completeness (what’s missing?)

☐ 3. Null count for every column.
Why: It shows you what you can and can’t rely on.
Red flag: A column you expected to be complete has nulls.

☐ 4. Why are they null? Cross-tab the nulls against a category column.
Why: Nulls can be expected (a canceled order never gets delivered) or a data error (a delivered order with no delivery date). They have to be handled differently.
Red flag: Nulls showing up where the business logic says they shouldn’t.

Phase 3: Content (what values exist?)

☐ 5. Categorical columns. Distinct values, counts and percentages.
Why: It tells you what to filter on and whether one category dominates.
Red flag: Typos, near-duplicate categories, or a tiny category that’s actually important.

☐ 6. Numeric and date columns. Min, max, and the distribution over time.
Why: It tells you the real coverage period and exposes impossible values.
Red flag: Dates in the future or before the business existed, sparse months at the edges.

Phase 4: Logic (does it make sense together?)

☐ 7. Cross-column consistency. Do related columns agree with each other? For orders, that means the timestamps should happen in order.
Why: Data-quality problems hide here. Finding them is what makes an analyst trustworthy.
Red flag: Something delivered before it was purchased.

Phase 5: Insight (what can I learn?)

☐ 8. Derived metrics. What new columns answer real business questions? For orders: delivery time, and whether delivery was late against the estimate.

☐ 9. Write down findings. Two or three bullet points per phase: what you found and what you’ll do about it (filter, flag, ignore).
Why: This is the deliverable. Code without conclusions isn’t EDA.