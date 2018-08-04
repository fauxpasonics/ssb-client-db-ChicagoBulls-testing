CREATE TABLE [mdm].[BusinessRules]
(
[ElementID] [int] NOT NULL,
[CriteriaID] [int] NULL,
[priority] [int] NULL,
[IsDeleted] [bit] NULL,
[DateCreated] [date] NULL CONSTRAINT [DF__BusinessR__DateC__0B91BA14] DEFAULT (getdate()),
[DateUpdated] [date] NULL CONSTRAINT [DF__BusinessR__DateU__0C85DE4D] DEFAULT (getdate()),
[RuleType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LogicalOperator] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GroupID] [int] NULL,
[BusinessRuleID] [int] NOT NULL IDENTITY(1, 1)
)
GO
ALTER TABLE [mdm].[BusinessRules] ADD CONSTRAINT [CK_LogicalOperator] CHECK (([LogicalOperator]='OR' OR [LogicalOperator]='AND'))
GO
ALTER TABLE [mdm].[BusinessRules] ADD CONSTRAINT [PK_BusinessRuleID] PRIMARY KEY CLUSTERED  ([BusinessRuleID])
GO
ALTER TABLE [mdm].[BusinessRules] ADD CONSTRAINT [UQ_BusinessRule1] UNIQUE NONCLUSTERED  ([ElementID], [CriteriaID], [RuleType], [IsDeleted])
GO
ALTER TABLE [mdm].[BusinessRules] ADD CONSTRAINT [UQ_BusinessRule2] UNIQUE NONCLUSTERED  ([ElementID], [priority], [RuleType], [IsDeleted])
GO
