-- Removes the sort order column (projects then sort by date within each folder).
alter table snaplog_projects drop column if exists sort_order;
