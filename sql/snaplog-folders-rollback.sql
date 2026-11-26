-- Removes the folder column (projects then show under Others).
alter table snaplog_projects drop column if exists folder;
