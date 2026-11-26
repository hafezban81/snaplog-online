-- Project folders (AutoCity, AutoCare, Ang Mo Kio Park 1, Sin Ming Ind Est, Others).
-- Run once in Supabase → SQL Editor, BEFORE the app version that uses it goes live.
alter table snaplog_projects add column if not exists folder text;
