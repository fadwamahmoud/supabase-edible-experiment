-- Start transaction and plan the tests.
BEGIN; -- Start the transaction

-- Plan count should match the number of tests. If it does
-- not then pg_prove will fail the test
SELECT plan(9);

-- Run the tests.

-- Columns
SELECT columns_are('roles', ARRAY[ 'userId', 'userRole', 'id', 'companyId' ]);

SELECT col_type_is('roles', 'userRole', 'text', 'name column type is -- text' );
SELECT col_type_is('roles', 'companyId', 'bigint', 'companyId column type is -- bigint' );
SELECT col_type_is('roles', 'userId', 'uuid', 'userId column type is -- uuid' );

-- Keys
SELECT has_pk('roles', 'Has a Primary Key' );
SELECT col_is_pk( 'roles', 'id', 'Column is Primary Key -- id' );

SELECT has_fk('roles', 'Has a Foreign Key' );
SELECT col_is_fk( 'roles', 'userId', 'Column is Foreign Key -- id' );
SELECT col_is_fk( 'roles', 'companyId', 'Column is Foreign Key -- id' );

-- Finish the tests and clean up.
SELECT * FROM finish();
ROLLBACK; -- We don’t commit the transaction, this means tests don’t change the database in anyway