-- Start transaction and plan the tests.
BEGIN; -- Start the transaction

-- Plan count should match the number of tests. If it does
-- not then pg_prove will fail the test
SELECT plan(4);

-- Run the tests.

-- Columns
SELECT columns_are('companies', ARRAY[ 'name', 'created_at', 'id' ]);

SELECT col_type_is('companies', 'name', 'text', 'name column type is -- text' );

-- Keys
SELECT has_pk('companies', 'Has a Primary Key' );
SELECT col_is_pk( 'companies', 'id', 'Column is Primary Key -- id' );

-- Indexes
-- SELECT has_index( 'companies', 'idx_companies_name', 'name', 'Column has index -- name' );

-- Constraints
-- SELECT col_is_unique( 'companies', 'name', 'Name columns has unique constraint' );

-- Finish the tests and clean up.
SELECT * FROM finish();
ROLLBACK; -- We don’t commit the transaction, this means tests don’t change the database in anyway