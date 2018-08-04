SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 
CREATE FUNCTION [etl].[fnGetClientSetting] (@Setting NVARCHAR(255)) 
RETURNS VARCHAR(2000)
AS 
BEGIN
	RETURN (SELECT value FROM etl.ClientSetting WHERE Setting = @Setting)
END
GO
