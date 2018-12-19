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

capella-event-subscribe-training-httpListenerConfig

Creating queue
PUT http://localhost:15672/api/queues/capella/rijaltest
{
	"auto_delete":false,
	"durable":true,
	"arguments":{}
}




1. Create Event
2. Subscribe to Event
3. Publish to Event
4. Consume Message


=== For tomorrow demo
1. Clean up existing EXCHANGE
2. Clean up database
3. Add atleast 3 exchangelist

POST
http://localhost:8081/api/eventcatalog
{
    "eventname": "Enrollment 2019",
    "exchangename": "enrollment2019",
    "exchangetype": "fanout"
}

{
    "eventname": "Course 2019",
    "exchangename": "course2019",
    "exchangetype": "fanout"
}

{
    "eventname": "Gravity and Science",
    "exchangename": "gravityblock",
    "exchangetype": "fanout"
}


4. Create Subscriber



5 Publish Message to queue
 http://localhost:8081/events/send
{
  "eventtypeid": "3",
  "message": "Science is awesome"
}


 http://localhost:8081/api/subscribe
 {
  "eventtypeid": "2",
  "queuename": "something"
}