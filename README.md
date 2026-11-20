# SnapLog Online

Before/after photo reports for technicians. This page is the quick reference for the project: where things live and who manages them. Never put passwords or secret keys here.

## Links

| What | Where |
|---|---|
| Live app | https://snaplog.online |
| Code repo | https://github.com/hafezban81/snaplog-online |
| Domain | snaplog.online, bought from Cloudflare (about $4.99 a year) |
| Hosting | GitHub Pages, from the `main` branch of this repo |
| Database | Supabase project **"tech"**, organisation **hafezban81data** |
| Database address | https://bhhpyhocacoldqiaxdql.supabase.co |
| Photo storage | "photos" bucket in the same Supabase project |

## How it's set up

- The app is a single web page (`index.html`). Projects, items, photos, the activity log and WCF rates are stored in Supabase.
- Hosting: GitHub Pages serves the page; `CNAME` points it to snaplog.online.
- Changes go in through a branch and a pull request, merged to `main`. Each change bumps the version number at the top of `index.html`.
- Database changes are kept as SQL files in `sql/`.

## Accounts

- Each technician has their own login. There is one admin login.
- The admin (you) creates technician accounts. For now this is done in Supabase.
- Three locations: Sin Ming, Ang Mo Kio, Toa Payoh.
- Expected size: about 20 users across the three locations.

## Future plans

- **Location access (decided):** each person sees only their own location by default. The admin can grant a person access to another location. Not built yet.
- **Team page in the app:** the admin creates and manages accounts from inside the app, instead of in Supabase. Mockup only so far.
- **Activity log:** an admin view of who did what, and when.
- **Password change:** technicians can change their own password.

## Photo and print settings

- Upload size: photos are saved at 1024 pixels by default, to keep storage small. Change it in the app's options.
- Original camera photos are not kept at full size.
- Print: photos are 95% of their column width. Landscape photos are shown at full column width. Page margins are 9mm.
- Items can split across pages, so the report has no near-empty pages.

## Costs

- Target: running cost under $5 a month.
- Current: domain about $4.99 a year; Supabase on the free plan; GitHub Pages free.

## Open items

- Open question: whether managers can create accounts, or only the admin
- Real WCF adjustment rates added to `snaplog_wcf_rates`
