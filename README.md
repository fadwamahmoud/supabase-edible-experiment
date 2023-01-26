1. Install supabase cli via npm globally
2. Create some tables and insert data using curl commands
3. Install pgTAP for testing
(Installation docs)[https://pgtap.org/documentation.html#installation]

4. install pg_prove using cpan

5. Run tests locally
`pg_prove --host localhost --user postgres --dbname postgres --port 54322 tests/*.sql`