1. Install supabase [cli](https://supabase.com/docs/guides/cli)
2. Start up supabase [locally](https://supabase.com/docs/guides/cli/local-development)
3. Download and install [pgTAP](https://medium.com/engineering-on-the-incline/unit-testing-postgres-with-pgtap-af09ec42795) and pg_prove for running tests
4. Use the following cmd to run tests locally
`pg_prove --host localhost --user postgres --dbname postgres --port 54322 tests/*.sql`
Type in 'postgres' when prompted for password.