/*DO NOT EXECUTE THIS QUERY all at once. EXECUTE ONLY section you needed*/

USE [MulesoftEnablement]
GO
/****** Object:  Table [dbo].[EventCatalog]    Script Date: 12/5/2018 11:10:03 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventCatalog](
	[EventTypeID] [int] IDENTITY(1,1) NOT NULL,
	[EventName] [nvarchar](200) NOT NULL,
	[QueueName] [nvarchar](150),
	[RoutingKey] [nvarchar](150),
	[Headers] [nvarchar](500) NULL,
	[ExchangeName] [nvarchar](200) NOT NULL,
	[ExchangeType] [nvarchar](100) NOT NULL
 CONSTRAINT [PK_EventCatalog] PRIMARY KEY CLUSTERED 
(
	[EventTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


/* Create Dummy Data here if you need to insert identity column*/

SET IDENTITY_INSERT [dbo].[EventCatalog] ON 
-- Your query goes here

SET IDENTITY_INSERT [dbo].[EventCatalog] OFF

/*Insert into dtabase from Anypoint Platform*/

USE [MulesoftEnablement]
GO
INSERT INTO [dbo].[EventCatalog]
           (EventName,QueueName,RoutingKey,Headers,ExchangeName,ExchangeType)
     VALUES
           (:EventName,:QueueName,:RoutingKey,:Headers,:ExchangeName,:ExchangeType)
GO

amq.fanout
amq.fanout


vars.exchangelist.name == vars.var_post_eventcatalog.exchangename

vars.exchangelist.name == vars.var_post_eventcatalog.exchangename


vars.exchangelist.name[2] == vars.var_post_eventcatalog.exchangename

vars.exchangelist.name contains vars.var_post_eventcatalog.exchangename