CREATE TABLE [email].[DimSegment]
(
[DimSegmentId] [int] NOT NULL IDENTITY(-2, 1),
[Src_SegmentId] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SegmentName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SegmentDescription] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimSegmen__Creat__0ADD8CFD] DEFAULT (user_name()),
[CreatedDate] [datetime] NULL CONSTRAINT [DF__DimSegmen__Creat__0BD1B136] DEFAULT (getdate()),
[UpdatedBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__DimSegmen__Updat__0CC5D56F] DEFAULT (user_name()),
[UpdatedDate] [datetime] NULL CONSTRAINT [DF__DimSegmen__Updat__0DB9F9A8] DEFAULT (getdate())
)
GO
ALTER TABLE [email].[DimSegment] ADD CONSTRAINT [PK__DimSegme__91C6F6AA752E0464] PRIMARY KEY CLUSTERED  ([DimSegmentId])
GO
