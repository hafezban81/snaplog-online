-- Order of projects inside each folder (drag to rearrange).
-- Run once in Supabase → SQL Editor, BEFORE the app version that uses it goes live.
alter table snaplog_projects add column if not exists sort_order integer;
