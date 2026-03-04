CREATE TABLE dbo.Library_Item (
    item_id INT IDENTITY(1,1) PRIMARY KEY,

    school_id INT NOT NULL,
    user_id INT NOT NULL,

    item_type NVARCHAR(50) NOT NULL,
    title NVARCHAR(150) NOT NULL,
    content_url NVARCHAR(500) NULL,

    visibility NVARCHAR(20) NOT NULL DEFAULT 'ORG_ONLY'
        CHECK (visibility IN ('PUBLIC','ORG_ONLY','PRIVATE')),

    created_at DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

    CONSTRAINT FK_LibraryItem_School
        FOREIGN KEY (school_id)
        REFERENCES dbo.School(school_id)
        ON DELETE CASCADE,

    CONSTRAINT FK_LibraryItem_User
        FOREIGN KEY (user_id)
        REFERENCES dbo.[User](user_id)
        ON DELETE NO ACTION
);
GO