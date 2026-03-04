CREATE TABLE dbo.Access_Code (
    code_id INT IDENTITY(1,1) PRIMARY KEY,

    sub_id INT NOT NULL,
    code NVARCHAR(100) NOT NULL UNIQUE,
    created_by INT NOT NULL,

    expires_at DATETIME2 NOT NULL,
    status NVARCHAR(50) NOT NULL,

    CONSTRAINT FK_AccessCode_Subscription
        FOREIGN KEY (sub_id)
        REFERENCES dbo.Subscription(sub_id)
        ON DELETE CASCADE,

    CONSTRAINT FK_AccessCode_User
        FOREIGN KEY (created_by)
        REFERENCES dbo.[User](user_id)
        ON DELETE NO ACTION
);
GO