CREATE TABLE dbo.Subscription (
    sub_id INT IDENTITY(1,1) PRIMARY KEY,
    organisation_type NVARCHAR(50) NOT NULL,
    organisation_id INT NOT NULL,
    plan_name NVARCHAR(50) NOT NULL,
    status NVARCHAR(50) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NULL
);
GO