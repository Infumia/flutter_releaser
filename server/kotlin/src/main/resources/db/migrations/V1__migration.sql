CREATE
    TABLE
        IF NOT EXISTS files(
            id SERIAL PRIMARY KEY,
            "name" TEXT NOT NULL,
            "size" BIGINT NOT NULL,
            sha256 TEXT NOT NULL,
            request_date TIMESTAMP NOT NULL,
            upload_date TIMESTAMP NULL
        );

CREATE
    TABLE
        IF NOT EXISTS versions(
            id SERIAL PRIMARY KEY,
            file INT NOT NULL,
            "version" TEXT NOT NULL,
            platform VARCHAR(16) NOT NULL,
            size_in_bytes BIGINT NOT NULL,
            mandatory BOOLEAN NOT NULL,
            "timestamp" TIMESTAMP NOT NULL,
            changes JSON NOT NULL,
            CONSTRAINT fk_versions_file__id FOREIGN KEY(file) REFERENCES files(id) ON
            DELETE
                CASCADE ON
                UPDATE
                    RESTRICT
        );

ALTER TABLE
    versions ADD CONSTRAINT versions_file_unique UNIQUE(file);

ALTER TABLE
    versions ADD CONSTRAINT versions_version_platform_unique UNIQUE(
        "version",
        platform
    );

CREATE
    TABLE
        IF NOT EXISTS s3_files(
            id SERIAL PRIMARY KEY,
            file INT NOT NULL,
            bucket_id TEXT NOT NULL,
            path_key TEXT NOT NULL
        );

ALTER TABLE
    s3_files ADD CONSTRAINT s3_files_bucket_id_path_key_unique UNIQUE(
        bucket_id,
        path_key
    );

ALTER TABLE
    s3_files ADD CONSTRAINT fk_s3_files_file__id FOREIGN KEY(file) REFERENCES s3_files(id) ON
    DELETE
        CASCADE ON
        UPDATE
            RESTRICT;

CREATE
    SEQUENCE IF NOT EXISTS files_id_seq
START WITH
    1 MINVALUE 1 MAXVALUE 9223372036854775807;

CREATE
    SEQUENCE IF NOT EXISTS versions_id_seq
START WITH
    1 MINVALUE 1 MAXVALUE 9223372036854775807;

CREATE
    SEQUENCE IF NOT EXISTS s3_files_id_seq
START WITH
    1 MINVALUE 1 MAXVALUE 9223372036854775807;
