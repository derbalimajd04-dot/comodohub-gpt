CREATE TABLE dbo.Enrolment (
    enrolment_id INT IDENTITY(1,1) PRIMARY KEY,

    user_id INT NOT NULL,
    program_id INT NOT NULL,

    enrolled_at DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

    CONSTRAINT FK_Enrolment_User
        FOREIGN KEY (user_id)
        REFERENCES dbo.[User](user_id)
        ON DELETE CASCADE,

    CONSTRAINT FK_Enrolment_Program
        FOREIGN KEY (program_id)
        REFERENCES dbo.Program(program_id)
        ON DELETE CASCADE
);
GO