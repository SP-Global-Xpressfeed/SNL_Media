/***********************************************************************************************
Returns Average Subscribers For National Geographics TV Network

Packages Required:
SNL Media TV Networks Data Feed

Universal Identifiers:
1_TVNetworkKey

Primary Columns Used:
1_TVNetworkKey

Database_Type:
SNOWFLAKE

Query_Version:
V1

Query_Added_Date:
06/01/2021

DatasetKey:
140

The following sample query returns average subscribers for national geographics TV network

***********************************************************************************************/

SELECT 
SNL_MEDIATVNETWORKS_NETWORKPROFILE."2_TVNetwork",
SNL_MEDIATVNETWORKS_NETWORKPROFILE."4_NetworkStatus",
SNL_MEDIATVNETWORKS_NETWORKPROFILE."5_Owners'Names",
SNL_MEDIATVNETWORKS_NETWORKPROFILE."7_NetworkType",
SNL_MEDIATVNETWORKS_NETWORKPROFILE."10_LaunchDate",
SNL_MEDIATVNETWORKS_BENCHMARKRATIOS."3_SNLDataSourcePeriod",
SNL_MEDIATVNETWORKS_BENCHMARKRATIOS."5_AverageSubscribers"

FROM SNL_MEDIATVNETWORKS_NETWORKPROFILE
JOIN SNL_MEDIATVNETWORKS_BENCHMARKRATIOS ON SNL_MEDIATVNETWORKS_BENCHMARKRATIOS."1_TVNetworkKey" = SNL_MEDIATVNETWORKS_NETWORKPROFILE."1_TVNetworkKey"
WHERE 1=1
AND SNL_MEDIATVNETWORKS_NETWORKPROFILE."1_TVNetworkKey" = 'fc1b5918-423f-4bfb-a034-443c6d7df49a'
--AND SNL_MEDIATVNETWORKS_BENCHMARKRATIOS."3_SNLDataSourcePeriod" = '2020Y'

ORDER BY
SNL_MEDIATVNETWORKS_NETWORKPROFILE."2_TVNetwork",
SNL_MEDIATVNETWORKS_BENCHMARKRATIOS."3_SNLDataSourcePeriod";