This example migration:

- backup table "verifiable_credential_event" into table "verifiable_credential_event_backup"
- create new column "sequence_and_payload" in table "verifiable_credential_event"
- concat column "sequence" and column "payload" in new column "sequence_and_payload"
- can manually rollback if need

Instruction for run migration:

- for creation table with mock data run: . ./run_any.sh {your_password_for_user} ./sql/create_table.sql
- for start migration run: . ./run_migration.sh {your_password_for_user}
- for rollback migration run: . ./run_any.sh {your_password_for_user} ./sql/rollback_table.sql

pluses

- simple
- only SQL
- no dependencies

minuses

- not found
