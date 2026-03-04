CREATE TABLE dbo.Program (
    program_id INT IDENTITY(1,1) PRIMARY KEY,
    title NVARCHAR(150) NOT NULL,
    description NVARCHAR(500) NULL,
    organisation_type NVARCHAR(50) NOT NULL,
    organisation_id INT NOT NULL,
    created_at DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
);
GO