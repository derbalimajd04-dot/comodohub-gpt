CREATE TABLE dbo.Submission (
    submission_id INT IDENTITY(1,1) PRIMARY KEY,

    activity_id INT NOT NULL,
    user_id INT NOT NULL,

    content_url NVARCHAR(500) NULL,
    submitted_at DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

    status NVARCHAR(50) NOT NULL,
    score INT NULL,

    CONSTRAINT FK_Submission_Activity
        FOREIGN KEY (activity_id)
        REFERENCES dbo.Activity(activity_id)
        ON DELETE CASCADE,

    CONSTRAINT FK_Submission_User
        FOREIGN KEY (user_id)
        REFERENCES dbo.[User](user_id)
        ON DELETE CASCADE,

    CONSTRAINT CK_Submission_Score
        CHECK (score IS NULL OR (score >= 0 AND score <= 100))
);
GO