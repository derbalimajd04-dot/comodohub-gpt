CREATE TABLE dbo.[User] (
    user_id INT IDENTITY(1,1) PRIMARY KEY,

    school_id INT NULL,

    role NVARCHAR(50) NOT NULL,
    name NVARCHAR(150) NOT NULL,
    email NVARCHAR(150) NOT NULL UNIQUE,
    password_hash NVARCHAR(255) NOT NULL,
    avatar_theme NVARCHAR(50) NULL,

    created_at DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

    CONSTRAINT FK_User_School
        FOREIGN KEY (school_id)
        REFERENCES dbo.School(school_id)
        ON DELETE SET NULL
);
GO