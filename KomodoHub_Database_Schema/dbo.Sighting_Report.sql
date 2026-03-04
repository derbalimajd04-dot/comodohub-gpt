CREATE TABLE dbo.Sighting_Report (
    report_id INT IDENTITY(1,1) PRIMARY KEY,

    user_id INT NOT NULL,
    school_id INT NULL,

    species_name NVARCHAR(150) NOT NULL,
    location NVARCHAR(200) NOT NULL,
    photo_url NVARCHAR(500) NULL,

    reported_at DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

    status NVARCHAR(50) NOT NULL,
    visibility NVARCHAR(20) NOT NULL DEFAULT 'ORG_ONLY'
        CHECK (visibility IN ('PUBLIC','ORG_ONLY','PRIVATE')),

    CONSTRAINT FK_SightingReport_User
        FOREIGN KEY (user_id)
        REFERENCES dbo.[User](user_id)
        ON DELETE CASCADE,

    CONSTRAINT FK_SightingReport_School
        FOREIGN KEY (school_id)
        REFERENCES dbo.School(school_id)
        ON DELETE SET NULL
);
GO