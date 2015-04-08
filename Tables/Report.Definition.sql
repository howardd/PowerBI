CREATE TABLE [Report].[Definition]
(
[DefinitionID] [int] NOT NULL IDENTITY(1, 1),
[ReportName] [varchar] (1024) COLLATE Latin1_General_CI_AS NOT NULL,
[ReportLogoURL] [varchar] (255) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Report].[Definition] ADD CONSTRAINT [PK_Report_Definition] PRIMARY KEY CLUSTERED  ([DefinitionID]) ON [PRIMARY]
GO
