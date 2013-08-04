/*
 * Call Center Operations Database
 * Project #18 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: MSSQL, SSRS
 * Created: 2012
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'CallCenterDB')
BEGIN
    ALTER DATABASE CallCenterDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE CallCenterDB;
END
GO

CREATE DATABASE CallCenterDB
ON PRIMARY
(
    NAME = 'CallCenterDB_Data',
    FILENAME = 'C:\SQLData\CallCenterDB_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'CallCenterDB_Log',
    FILENAME = 'C:\SQLData\CallCenterDB_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE CallCenterDB SET RECOVERY SIMPLE;
ALTER DATABASE CallCenterDB SET AUTO_UPDATE_STATISTICS ON;
GO

USE CallCenterDB;
GO

PRINT 'Database CallCenterDB created successfully';
PRINT 'Project: Call Center Operations Database';
PRINT 'Description: Call logging, agents, and resolution metrics';
GO
