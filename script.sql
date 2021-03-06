/*DO NOT EXECUTE THIS QUERY all at once. EXECUTE ONLY section you needed*/

USE [MulesoftEnablement]
GO

/****** Object:  Table [dbo].[EventCatalog]    Script Date: 12/21/2018 11:21:04 AM ******/
DROP TABLE [dbo].[EventCatalog]
GO

/****** Object:  Table [dbo].[EventCatalog]    Script Date: 12/21/2018 11:21:04 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EventCatalog](
	[EventTypeID] [int] IDENTITY(1,1) NOT NULL,
	[EventName] [nvarchar](200) NOT NULL,
	[QueueName] [nvarchar](150) NULL,
	[RoutingKey] [nvarchar](150) NULL,
	[Headers] [nvarchar](500) NULL,
	[ExchangeName] [nvarchar](200) NOT NULL,
	[ExchangeType] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_EventCatalog] PRIMARY KEY CLUSTERED 
(
	[EventTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [MulesoftEnablement]
GO

/****** Object:  Table [dbo].[ConsumeMessage]    Script Date: 12/21/2018 11:20:25 AM ******/
DROP TABLE [dbo].[ConsumeMessage]
GO

/****** Object:  Table [dbo].[ConsumeMessage]    Script Date: 12/21/2018 11:20:25 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ConsumeMessage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[message] [nvarchar](max) NOT NULL,
	[queue] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_ConsumeMessage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO




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
    "eventname": "Gravity and Science",
    "exchangename": "gravityblock",
    "exchangetype": "fanout"
}


4. Create Subscriber
http://localhost:8081/api/subscribe
{
  "eventtypeid": "1",
  "queuename": "Science Fair 2019"
}

5 Publish Message to queue
 http://localhost:8081/events/send
{
    "eventtypeid": "1",
    "message": {
      "customers": [
          {
            "customerid" : "123",
            "first_name" : "Tom",
            "last_name" : "Hanks",
            "email" : "thanks@gmail.com"
          },
          {
            "customerid" : "456",
            "first_name" : "Jerry",
            "last_name" : "Seinfeld",
            "email" : "js@gmail.com"
          },
          {
            "customerid" : "789",
            "first_name" : "Russell",
            "last_name" : "Peters",
            "email" : "rpeters@gmail.com"
          }
        ]
      }
}


