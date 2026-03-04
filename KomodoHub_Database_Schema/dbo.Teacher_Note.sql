CREATE TABLE dbo.Teacher_Note (
    note_id INT IDENTITY(1,1) PRIMARY KEY,

    submission_id INT NOT NULL,
    teacher_id INT NOT NULL,

    note_text NVARCHAR(1000) NOT NULL,
    created_at DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

    CONSTRAINT FK_TeacherNote_Submission
        FOREIGN KEY (submission_id)
        REFERENCES dbo.Submission(submission_id)
        ON DELETE CASCADE,

    CONSTRAINT FK_TeacherNote_TeacherUser
        FOREIGN KEY (teacher_id)
        REFERENCES dbo.[User](user_id)
        ON DELETE NO ACTION
);
GO