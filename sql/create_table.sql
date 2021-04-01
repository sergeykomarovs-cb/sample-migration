DROP table IF EXISTS verifiable_credential_event;

CREATE TABLE IF NOT EXISTS verifiable_credential_event(
        sequence SERIAL PRIMARY KEY,
        previous_sequence BIGINT,
        payload TEXT,
        security_principal VARCHAR(36) NOT NULL,
        event_type VARCHAR(100) NOT NULL,
        version  VARCHAR(20) NOT NULL,
        utc_date_time TIMESTAMP 
        );

INSERT INTO public.verifiable_credential_event(
sequence, previous_sequence, payload, security_principal, event_type, version, utc_date_time)
VALUES (1, 0, 'payload', 'security_principal', 'event_type', 'version', '2021-04-01 12:55:34.324');
	
INSERT INTO public.verifiable_credential_event(
sequence, previous_sequence, payload, security_principal, event_type, version, utc_date_time)
VALUES (2, 1, 'payload2', 'security_principal2', 'event_type2', 'version2', '2021-04-01 12:55:34.324');

INSERT INTO public.verifiable_credential_event(
sequence, previous_sequence, payload, security_principal, event_type, version, utc_date_time)
VALUES (3, 2, 'payload3', 'security_principal3', 'event_type3', 'version3', '2021-04-01 12:55:34.324');