-- Removes the project type column (all projects then act as Before / After).
alter table snaplog_projects drop column if exists kind;
