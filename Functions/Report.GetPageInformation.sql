SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [Report].[GetPageInformation]
(
    @ReportName VARCHAR(1024)
)
RETURNS TABLE
AS
RETURN
    SELECT 
	   RD.ReportLogoURL
	   , RP.PageNumber
	   , RP.PageTitle
	   , RP.PageLogoURL
    FROM Report.[Definition] AS RD WITH (NOLOCK)
	   INNER JOIN Report.[Page] AS RP WITH (NOLOCK)
		  ON RP.DefinitionID = RD.DefinitionID
    WHERE RD.ReportName = @ReportName
GO
