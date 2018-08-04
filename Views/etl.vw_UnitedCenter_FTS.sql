SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [etl].[vw_UnitedCenter_FTS] 
AS

SELECT	fts.FactTicketSalesId
	   ,dimseason.SeasonYear
	   ,dimseason.SeasonName
	   ,dimevent.EventCode
	   ,dimevent.EventName
	   ,dimevent.EventDate
	   ,dimevent.EventDateTime
	   ,dimseat.SectionName
	   ,dimseat.RowName
	   ,dimseat.Seat
	   ,DimPriceCode.PriceCode
	   ,DimPriceCode.PriceCodeDesc
       ,fts.QtySeat
       ,fts.RevenueTotal	   
FROM dbo.FactTicketSales_V2 fts
	JOIN dbo.DimSeason_V2 dimseason ON dimseason.DimSeasonId = fts.DimSeasonId
	JOIN dbo.DimEvent_V2 dimEvent ON dimEvent.DimEventId = fts.DimEventId
	JOIN dbo.DimPriceCode_V2 dimPriceCode ON dimPriceCode.DimPriceCodeId = fts.DimPriceCodeId
	JOIN dbo.DimSeat_V2 dimSeat ON dimSeat.DimSeatId = fts.DimSeatId_Start
WHERE seasonname LIKE '%Chicago Bulls'
	OR seasonname LIKE '%Parking'
	OR seasonname LIKE '%Chicago Bulls Parking'
	OR seasonname LIKE '%Bulls Courtside Club'
	OR seasonname LIKE '%Chicago Bulls Playoffs'
	OR seasonname LIKE '%Playoff Parking'
	 --AND fts.UpdatedDate >= DATEADD(DAY,-3,GETDATE())
GO
