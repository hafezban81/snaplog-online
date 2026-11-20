-- Removes the per-project labels column (labels fall back to the defaults).
alter table snaplog_projects drop column if exists labels;
