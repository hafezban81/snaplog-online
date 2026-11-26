-- Order of photos inside each entry (drag photos to reorder).
-- Run once in Supabase → SQL Editor, BEFORE the app version that uses it goes live.
alter table snaplog_photos add column if not exists position integer;
