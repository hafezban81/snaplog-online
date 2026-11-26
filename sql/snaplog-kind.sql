-- Project type: null = Before / After (existing), 'defect' = Defects / Photo log.
-- Run once in Supabase → SQL Editor, BEFORE the app version that uses it goes live.
alter table snaplog_projects add column if not exists kind text;
