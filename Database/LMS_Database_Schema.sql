-- =====================================================
-- LIBRARY MANAGEMENT SYSTEM (LMS)
-- SQL Server Database Schema
-- =====================================================
-- Database: LibraryManagementDB
-- Created: June 2026
-- Version: 1.0

-- Create Database
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = N'LibraryManagementDB')
BEGIN
    CREATE DATABASE LibraryManagementDB;
END
GO

USE LibraryManagementDB;
GO

-- =====================================================
-- 1. USERS TABLE (Members, Staff, Admin)
-- =====================================================
CREATE TABLE [Users] (
    [UserId] INT PRIMARY KEY IDENTITY(1,1),
    [Username] NVARCHAR(100) NOT NULL UNIQUE,
    [Email] NVARCHAR(100) NOT NULL UNIQUE,
    [PasswordHash] NVARCHAR(MAX) NOT NULL,
    [FirstName] NVARCHAR(100) NOT NULL,
    [LastName] NVARCHAR(100) NOT NULL,
    [PhoneNumber] NVARCHAR(20),
    [Address] NVARCHAR(500),
    [City] NVARCHAR(50),
    [PostalCode] NVARCHAR(20),
    [UserType] NVARCHAR(50) NOT NULL, -- 'Member', 'Staff', 'Admin'
    [MembershipStatus] NVARCHAR(50), -- 'Active', 'Inactive', 'Suspended'
    [JoinDate] DATETIME NOT NULL DEFAULT GETDATE(),
    [LastLogin] DATETIME,
    [IsActive] BIT NOT NULL DEFAULT 1,
    [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE(),
    [ModifiedDate] DATETIME NOT NULL DEFAULT GETDATE()
);
CREATE INDEX IX_Users_Email ON [Users]([Email]);
CREATE INDEX IX_Users_Username ON [Users]([Username]);
GO

-- =====================================================
-- 2. CATEGORIES TABLE
-- =====================================================
CREATE TABLE [Categories] (
    [CategoryId] INT PRIMARY KEY IDENTITY(1,1),
    [CategoryName] NVARCHAR(100) NOT NULL UNIQUE,
    [Description] NVARCHAR(500),
    [IsActive] BIT NOT NULL DEFAULT 1,
    [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE()
);
GO

-- =====================================================
-- 3. AUTHORS TABLE
-- =====================================================
CREATE TABLE [Authors] (
    [AuthorId] INT PRIMARY KEY IDENTITY(1,1),
    [FirstName] NVARCHAR(100) NOT NULL,
    [LastName] NVARCHAR(100) NOT NULL,
    [Biography] NVARCHAR(MAX),
    [Nationality] NVARCHAR(50),
    [BirthYear] INT,
    [IsActive] BIT NOT NULL DEFAULT 1,
    [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE()
);
GO

-- =====================================================
-- 4. PUBLISHERS TABLE
-- =====================================================
CREATE TABLE [Publishers] (
    [PublisherId] INT PRIMARY KEY IDENTITY(1,1),
    [PublisherName] NVARCHAR(200) NOT NULL UNIQUE,
    [Address] NVARCHAR(500),
    [Email] NVARCHAR(100),
    [Phone] NVARCHAR(20),
    [IsActive] BIT NOT NULL DEFAULT 1,
    [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE()
);
GO

-- =====================================================
-- 5. BOOKS TABLE
-- =====================================================
CREATE TABLE [Books] (
    [BookId] INT PRIMARY KEY IDENTITY(1,1),
    [ISBN] NVARCHAR(20) NOT NULL UNIQUE,
    [Title] NVARCHAR(300) NOT NULL,
    [AuthorId] INT NOT NULL,
    [PublisherId] INT,
    [CategoryId] INT NOT NULL,
    [Edition] NVARCHAR(50),
    [PublicationDate] DATE,
    [TotalCopies] INT NOT NULL DEFAULT 1,
    [AvailableCopies] INT NOT NULL DEFAULT 1,
    [Description] NVARCHAR(MAX),
    [Language] NVARCHAR(50) DEFAULT 'English',
    [PageCount] INT,
    [CoverImage] NVARCHAR(500),
    [Location] NVARCHAR(100), -- Shelf/Location in library
    [IsActive] BIT NOT NULL DEFAULT 1,
    [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE(),
    [ModifiedDate] DATETIME NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY ([AuthorId]) REFERENCES [Authors]([AuthorId]),
    FOREIGN KEY ([PublisherId]) REFERENCES [Publishers]([PublisherId]),
    FOREIGN KEY ([CategoryId]) REFERENCES [Categories]([CategoryId])
);
CREATE INDEX IX_Books_ISBN ON [Books]([ISBN]);
CREATE INDEX IX_Books_Title ON [Books]([Title]);
CREATE INDEX IX_Books_CategoryId ON [Books]([CategoryId]);
GO

-- =====================================================
-- 6. BOOK_COPIES TABLE (Track individual book copies)
-- =====================================================
CREATE TABLE [BookCopies] (
    [CopyId] INT PRIMARY KEY IDENTITY(1,1),
    [BookId] INT NOT NULL,
    [CopyNumber] INT NOT NULL, -- Copy 1, Copy 2, etc.
    [BarCode] NVARCHAR(50) UNIQUE,
    [Condition] NVARCHAR(50), -- 'Good', 'Fair', 'Poor'
    [Status] NVARCHAR(50) NOT NULL DEFAULT 'Available', -- 'Available', 'Issued', 'Reserved', 'Damaged'
    [AcquisitionDate] DATE NOT NULL,
    [Cost] DECIMAL(10,2),
    [IsActive] BIT NOT NULL DEFAULT 1,
    [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY ([BookId]) REFERENCES [Books]([BookId]),
    UNIQUE (BookId, CopyNumber)
);
CREATE INDEX IX_BookCopies_BookId ON [BookCopies]([BookId]);
GO

-- =====================================================
-- 7. BOOK_ISSUES TABLE (Track book issuance)
-- =====================================================
CREATE TABLE [BookIssues] (
    [IssueId] INT PRIMARY KEY IDENTITY(1,1),
    [CopyId] INT NOT NULL,
    [UserId] INT NOT NULL,
    [IssueDate] DATETIME NOT NULL DEFAULT GETDATE(),
    [DueDate] DATE NOT NULL,
    [ReturnDate] DATE,
    [Status] NVARCHAR(50) NOT NULL DEFAULT 'Active', -- 'Active', 'Returned', 'Overdue'
    [Remarks] NVARCHAR(500),
    [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY ([CopyId]) REFERENCES [BookCopies]([CopyId]),
    FOREIGN KEY ([UserId]) REFERENCES [Users]([UserId])
);
CREATE INDEX IX_BookIssues_UserId ON [BookIssues]([UserId]);
CREATE INDEX IX_BookIssues_Status ON [BookIssues]([Status]);
GO

-- =====================================================
-- 8. BOOK_RESERVATIONS TABLE
-- =====================================================
CREATE TABLE [BookReservations] (
    [ReservationId] INT PRIMARY KEY IDENTITY(1,1),
    [BookId] INT NOT NULL,
    [UserId] INT NOT NULL,
    [ReservationDate] DATETIME NOT NULL DEFAULT GETDATE(),
    [Status] NVARCHAR(50) NOT NULL DEFAULT 'Pending', -- 'Pending', 'Ready', 'Completed', 'Cancelled'
    [NotificationSent] BIT NOT NULL DEFAULT 0,
    [CompletedDate] DATETIME,
    [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY ([BookId]) REFERENCES [Books]([BookId]),
    FOREIGN KEY ([UserId]) REFERENCES [Users]([UserId])
);
CREATE INDEX IX_BookReservations_UserId ON [BookReservations]([UserId]);
CREATE INDEX IX_BookReservations_BookId ON [BookReservations]([BookId]);
GO

-- =====================================================
-- 9. FINES TABLE (Track member fines)
-- =====================================================
CREATE TABLE [Fines] (
    [FineId] INT PRIMARY KEY IDENTITY(1,1),
    [IssueId] INT NOT NULL,
    [UserId] INT NOT NULL,
    [FineAmount] DECIMAL(10,2) NOT NULL,
    [Reason] NVARCHAR(200), -- 'Overdue', 'Damage', 'Loss'
    [FineDate] DATETIME NOT NULL DEFAULT GETDATE(),
    [DueDate] DATETIME,
    [PaidDate] DATETIME,
    [Status] NVARCHAR(50) NOT NULL DEFAULT 'Pending', -- 'Pending', 'Paid', 'Waived'
    [Remarks] NVARCHAR(500),
    [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY ([IssueId]) REFERENCES [BookIssues]([IssueId]),
    FOREIGN KEY ([UserId]) REFERENCES [Users]([UserId])
);
CREATE INDEX IX_Fines_UserId ON [Fines]([UserId]);
GO

-- =====================================================
-- 10. FINE_PAYMENTS TABLE
-- =====================================================
CREATE TABLE [FinePayments] (
    [PaymentId] INT PRIMARY KEY IDENTITY(1,1),
    [FineId] INT NOT NULL,
    [UserId] INT NOT NULL,
    [Amount] DECIMAL(10,2) NOT NULL,
    [PaymentMethod] NVARCHAR(50), -- 'Cash', 'Card', 'Online'
    [TransactionId] NVARCHAR(100),
    [PaymentDate] DATETIME NOT NULL DEFAULT GETDATE(),
    [Status] NVARCHAR(50) NOT NULL DEFAULT 'Completed', -- 'Pending', 'Completed', 'Failed'
    [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY ([FineId]) REFERENCES [Fines]([FineId]),
    FOREIGN KEY ([UserId]) REFERENCES [Users]([UserId])
);
GO

-- =====================================================
-- 11. SYSTEM_CONFIG TABLE (System configuration)
-- =====================================================
CREATE TABLE [SystemConfig] (
    [ConfigId] INT PRIMARY KEY IDENTITY(1,1),
    [ConfigKey] NVARCHAR(100) NOT NULL UNIQUE,
    [ConfigValue] NVARCHAR(MAX) NOT NULL,
    [Description] NVARCHAR(500),
    [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE(),
    [ModifiedDate] DATETIME NOT NULL DEFAULT GETDATE()
);
GO

-- =====================================================
-- 12. ACTIVITY_LOG TABLE (Audit trail)
-- =====================================================
CREATE TABLE [ActivityLog] (
    [LogId] INT PRIMARY KEY IDENTITY(1,1),
    [UserId] INT,
    [Action] NVARCHAR(200) NOT NULL,
    [TableName] NVARCHAR(100),
    [RecordId] INT,
    [OldValue] NVARCHAR(MAX),
    [NewValue] NVARCHAR(MAX),
    [IPAddress] NVARCHAR(50),
    [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY ([UserId]) REFERENCES [Users]([UserId])
);
CREATE INDEX IX_ActivityLog_UserId ON [ActivityLog]([UserId]);
CREATE INDEX IX_ActivityLog_CreatedDate ON [ActivityLog]([CreatedDate]);
GO

-- =====================================================
-- 13. NOTIFICATIONS TABLE
-- =====================================================
CREATE TABLE [Notifications] (
    [NotificationId] INT PRIMARY KEY IDENTITY(1,1),
    [UserId] INT NOT NULL,
    [Type] NVARCHAR(100), -- 'Overdue', 'ReservationReady', 'FineReminder', 'System'
    [Title] NVARCHAR(200) NOT NULL,
    [Message] NVARCHAR(MAX) NOT NULL,
    [IsRead] BIT NOT NULL DEFAULT 0,
    [RelatedIssueId] INT,
    [RelatedReservationId] INT,
    [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY ([UserId]) REFERENCES [Users]([UserId])
);
CREATE INDEX IX_Notifications_UserId ON [Notifications]([UserId]);
GO

-- =====================================================
-- INSERT DEFAULT DATA
-- =====================================================

-- Insert System Configuration
INSERT INTO [SystemConfig] ([ConfigKey], [ConfigValue], [Description]) VALUES
    ('LibraryName', 'COMSATS University Library', 'Name of the library'),
    ('IssueLimit', '3', 'Maximum books a member can issue at once'),
    ('IssueDays', '14', 'Default number of days for book issue'),
    ('FinePerDay', '10', 'Fine amount per day (PKR)'),
    ('MaxFine', '500', 'Maximum fine amount (PKR)'),
    ('RenewalLimit', '2', 'Maximum times a book can be renewed');

-- Insert Categories
INSERT INTO [Categories] ([CategoryName], [Description]) VALUES
    ('Fiction', 'Novels, Short Stories, Literature'),
    ('Non-Fiction', 'Educational, Self-help, Biography'),
    ('Science', 'Physics, Chemistry, Biology'),
    ('Technology', 'Computer Science, IT, Engineering'),
    ('History', 'Historical Events, Biographies'),
    ('Business', 'Management, Economics, Finance'),
    ('Art & Design', 'Art, Design, Photography'),
    ('Reference', 'Dictionaries, Encyclopedias');

-- Insert Authors
INSERT INTO [Authors] ([FirstName], [LastName], [Nationality], [BirthYear]) VALUES
    ('Muhammad', 'Iqbal', 'Pakistan', 1877),
    ('Allama', 'Hassan', 'Pakistan', 1882),
    ('Jane', 'Austen', 'British', 1775),
    ('Stephen', 'Hawking', 'British', 1942),
    ('Albert', 'Einstein', 'German', 1879);

-- Insert Publishers
INSERT INTO [Publishers] ([PublisherName], [Address], [Email]) VALUES
    ('Oxford University Press', 'Oxford, UK', 'info@oup.com'),
    ('Penguin Books', 'London, UK', 'info@penguin.com'),
    ('Bloomsbury Publishing', 'London, UK', 'info@bloomsbury.com'),
    ('Springer', 'New York, USA', 'info@springer.com'),
    ('Educational Press Pakistan', 'Karachi, Pakistan', 'info@epp.com.pk');

-- Insert Admin User
INSERT INTO [Users] ([Username], [Email], [PasswordHash], [FirstName], [LastName], [UserType], [MembershipStatus], [IsActive]) 
VALUES ('admin', 'admin@library.com', '$2a$11$KxxzDJ1O.F9jE5V8Xj7mAOFx6Y5U8z9m2l3k4j5h6g7f8d9c0b1a2', 'Admin', 'User', 'Admin', 'Active', 1);

-- Insert Test Books
INSERT INTO [Books] ([ISBN], [Title], [AuthorId], [PublisherId], [CategoryId], [Edition], [PublicationDate], [TotalCopies], [AvailableCopies], [Language], [PageCount], [Location])
VALUES
    ('978-0-06-112008-4', 'To Kill a Mockingbird', 1, 2, 1, '1st', '2023-01-15', 5, 3, 'English', 281, 'Shelf A1'),
    ('978-0-14-303943-3', 'Pride and Prejudice', 3, 2, 1, '2nd', '2022-06-20', 4, 2, 'English', 279, 'Shelf A2'),
    ('978-0-374-52974-5', 'A Brief History of Time', 4, 4, 3, '10th', '2022-09-10', 6, 4, 'English', 256, 'Shelf B1'),
    ('978-0-19-280623-2', 'The Selfish Gene', 5, 1, 3, '3rd', '2021-12-05', 3, 1, 'English', 224, 'Shelf B2');

GO

-- =====================================================
-- CREATE VIEWS FOR REPORTING
-- =====================================================

-- View: Active Issues
CREATE VIEW [vw_ActiveIssues] AS
SELECT 
    bi.[IssueId],
    b.[Title],
    u.[FirstName] + ' ' + u.[LastName] AS MemberName,
    bi.[IssueDate],
    bi.[DueDate],
    DATEDIFF(DAY, GETDATE(), bi.[DueDate]) AS DaysRemaining,
    bi.[Status]
FROM [BookIssues] bi
JOIN [BookCopies] bc ON bi.[CopyId] = bc.[CopyId]
JOIN [Books] b ON bc.[BookId] = b.[BookId]
JOIN [Users] u ON bi.[UserId] = u.[UserId]
WHERE bi.[Status] = 'Active';
GO

-- View: Overdue Books
CREATE VIEW [vw_OverdueBooks] AS
SELECT 
    bi.[IssueId],
    b.[Title],
    u.[FirstName] + ' ' + u.[LastName] AS MemberName,
    u.[Email],
    bi.[DueDate],
    DATEDIFF(DAY, bi.[DueDate], GETDATE()) AS OverdueDays,
    (DATEDIFF(DAY, bi.[DueDate], GETDATE()) * 10) AS CalculatedFine -- 10 PKR per day
FROM [BookIssues] bi
JOIN [BookCopies] bc ON bi.[CopyId] = bc.[CopyId]
JOIN [Books] b ON bc.[BookId] = b.[BookId]
JOIN [Users] u ON bi.[UserId] = u.[UserId]
WHERE bi.[ReturnDate] IS NULL AND bi.[DueDate] < GETDATE();
GO

-- View: Member Activity
CREATE VIEW [vw_MemberActivity] AS
SELECT 
    u.[UserId],
    u.[FirstName] + ' ' + u.[LastName] AS MemberName,
    COUNT(DISTINCT bi.[IssueId]) AS BooksIssued,
    COUNT(DISTINCT br.[ReservationId]) AS BooksReserved,
    SUM(CASE WHEN f.[Status] = 'Pending' THEN f.[FineAmount] ELSE 0 END) AS PendingFines,
    u.[JoinDate],
    u.[LastLogin]
FROM [Users] u
LEFT JOIN [BookIssues] bi ON u.[UserId] = bi.[UserId]
LEFT JOIN [BookReservations] br ON u.[UserId] = br.[UserId]
LEFT JOIN [Fines] f ON u.[UserId] = f.[UserId]
WHERE u.[UserType] = 'Member'
GROUP BY u.[UserId], u.[FirstName], u.[LastName], u.[JoinDate], u.[LastLogin];
GO

-- View: Book Inventory
CREATE VIEW [vw_BookInventory] AS
SELECT 
    b.[BookId],
    b.[Title],
    a.[FirstName] + ' ' + a.[LastName] AS AuthorName,
    c.[CategoryName],
    b.[TotalCopies],
    b.[AvailableCopies],
    (b.[TotalCopies] - b.[AvailableCopies]) AS IssuedCopies,
    b.[ISBN],
    b.[Location]
FROM [Books] b
JOIN [Authors] a ON b.[AuthorId] = a.[AuthorId]
JOIN [Categories] c ON b.[CategoryId] = c.[CategoryId]
WHERE b.[IsActive] = 1;
GO

PRINT 'Database created successfully!';
