CREATE TABLE dbo.Activity (
    activity_id INT IDENTITY(1,1) PRIMARY KEY,

    program_id INT NOT NULL,

    title NVARCHAR(150) NOT NULL,
    description NVARCHAR(500) NULL,
    activity_type NVARCHAR(50) NOT NULL,
    due_date DATE NULL,

    created_at DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

    CONSTRAINT FK_Activity_Program
        FOREIGN KEY (program_id)
        REFERENCES dbo.Program(program_id)
        ON DELETE CASCADE
);
GO