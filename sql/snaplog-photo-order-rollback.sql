-- Removes the photo order column (photos then sort by time taken).
alter table snaplog_photos drop column if exists position;
