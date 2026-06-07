# 临时资源的存储与生命周期

临时资源生命周期的管理采取以下策略：在确保服务器端内存、硬盘空间等资源占用可控的前提下尽可能延长生命周期，或选择将临时资源存储在MongoDB中。
此外，生命周期内，重启服务后，存储在本地的临时资源会被清空。
此处主要为您介绍如何在配置文件中配置临时资源存储，在 iServer 页面上配置临时资源存储请参见[临时资源存储设置](../../Server_Service_Management/properties.htm#临时资源存储设置)。
## 使用本地存储临时资源
您可以在系统配置文件（【SuperMap iServer 安装目录】\webapps\iserver\WEB-INF\iserver-system.xml）中，设置使用本地存储临时资源，包括内存空间阈值maxBytesOnHeap和磁盘空间阈值maxBytesLocalDisk。其中，maxBytesOnHeap 默认为100M，maxBytesLocalDisk 默认为10G，您可根据需要，自行设置所需的空间大小。还支持添加<diskStorePath>参数，设置临时资源在磁盘中存存储路径，默认的存储路径为【SuperMap iServer Java 安装目录】\temp\tmpResources。清理临时资源时使用的算法，可以通过添加<memoryStoreEvictionPolicy>参数来设置。此外， 更多参数设置请参考：[EhcacheRepoSetting](../iServerJavadoc/com/supermap/services/rest/repository/EhcacheRepoSetting.html)
<!-- 临时资源存储配置-->  
<repository class="com.supermap.services.rest.repository.EhcacheRepoProvider" name="localRepository"> 
<!-- 临时资源存储在本地 -->  
<config class="com.supermap.services.rest.repository.EhcacheRepoSetting"> 
<!--最大允许占用的内存大小-->  
<maxBytesOnHeap>200m</maxBytesOnHeap>  
<!--最大允许占用的磁盘空间大小-->  
<maxBytesLocalDisk>10g</maxBytesLocalDisk>  
<!-- 磁盘存储路径 -->  
<diskStorePath>D:\SuperMapiServer8C\temp\tmpResources</diskStorePath>  
<!-- 清理临时资源使用的算法 -->  
<memoryStoreEvictionPolicy>LRU</memoryStoreEvictionPolicy>  
<!--扫描存储在磁盘上数据是否过期的间隔时间,单位是秒-->  
<diskExpiryThreadIntervalSeconds>120</diskExpiryThreadIntervalSeconds> 
</config> 
</repository>  
- 内存空间阈值
由于临时资源存放在内存中可以保证存取的效率，但是占用的内存空间太大时又会影响服务器运行效率，因此需要设置一个相对合理的内存空间阈值。当临时资源占用的内存超过这个阈值的时候，服务端将默认采用 LRU 算法（Least Recently Used）对临时资源进行处理，即把最近最少使用的临时资源缓存删除。删除临时资源的算法默认为LRU算法，可以通过<memoryStoreEvictionPolicy>参数来设置。
- 硬盘二级缓存阈值
由于保存在内存中的临时资源有限，为保证其存活周期，iServer支持将临时资源保存在硬盘中，如果客户端请求的资源在内存中访问不到，系统会去硬盘中查找。 当这些临时资源缓存占用的空间太大时，同样可能会影响服务器的运行，因此也需要设置保存临时资源的磁盘空间阈值。当临时资源占用的磁盘空间超过这个阈值的时候，将进行缓存清理。缓存清理时，同样采用 LRU 算法。
## 使用MongoDB存储临时资源
由于本地存储临时资源的资源存储空间有限，因此存活时间也会受限。SuperMap iServer 支持使用 MongoDB 存储临时资源，可有效延长临时资源的存活时间。此外，MongoDB 也可用于多进程模式下的临时资源存储，使各进程间资源可共享。
配置 MongoDB 存储临时资源的方法为：在系统配置文件中，开启“基于MongoDB的临时资源存储配置”，并注释本地存储配置。如下：
<!-- 基于MongoDB的临时资源存储配置 -->
<repository class="com.supermap.services.rest.repository.MongoDBObjSerializeRepoProvider" name="mongoRepository"> 
<config class="com.supermap.services.rest.repository.MongoDBRepoSetting"> 
<host>localhost</host>
<port>27017</port>
<dbName>SuperMap</dbName>
</config> 
</repository> 
在host参数中输入您使用的MongoDB的服务地址，在port参数中输入端口号，在dbName中输入数据库名称（此处需要输入已存在的数据库名称）。如果使用的MongoDB开启了安全控制，通过添加<username>和<password>参数，添加数据库的用户名和密码。详细参数设置可参考：[MongoDBRepoSetting](../iServerJavadoc/com/supermap/services/rest/repository/MongoDBRepoSetting.html)
## 使用 Redis 存储临时资源
SuperMap iServer 支持将临时资源存储在 Redis 中，也支持将其用于多进程模式下的临时资源存储，使各进程间资源可共享。配置 Redis 临时资源存储的方法为：在 iserver-system.xml 文件中开启“基于 Redis 的临时资源存储配置”，并注释其他类型的临时资源存储配置。
<!-- 基于 Redis 的临时资源存储配置 -->
<repository class="com.supermap.services.rest.repository.RedisRepoProvider">
<config class="com.supermap.services.rest.repository.RedisRepoSetting">
<type>Redis</type>  
<host>192.168.17.116</host>  
<port>6379</port>  
<username>SuperMap</username>  
<password>SuperMap</password> 
</config>
</repository>
<host>：【必填】Redis 的服务地址。
<port>：【必填】Redis 端口号，默认为 6379。
<username>：数据库所有者的用户名。
<password>：该数据库所有者的密码。
此外， 更多参数设置请参考：[RedisRepoSetting](../iServerJavadoc/com/supermap/services/rest/repository/RedisRepoSetting.html)
## 使用HSQLDB存储临时资源
在多进程模式下，当iServer系统配置文件中没有临时资源存储配置，或设置的临时资源存储配置（如本地存储）不支持在多进程模式下使用时，则默认使用HSQLDB存储临时资源。在单进程模式下，您也可以配置使用HSQLDB存储，使同一台机器中的多个iServer共享临时资源。
配置HSQLDB存储临时资源的方法为：在系统配置文件中，开启“基于HSQLDB的临时资源存储配置”，并注释本地存储配置和MongoDB存储配置。如下：
<!-- 基于HSQLDB的临时资源存储配置 -->
<repository class="com.supermap.services.rest.repository.HsqldbRepoProvider" name="localRepository"> 
<config class="com.supermap.services.rest.repository.HsqldbRepoSetting"> 
<port>10070</port>  
<startServer>true</startServer> 
</config> 
</repository> 
在<port>参数中填设置HSQLDB存储端口号，默认为10070。<startServer>参数表示是否启动HSQLDB。当一台机器中启动了多个iServer时，只需在其中一个iServer中设置该参数，并将值设置为true。
注意：如果在配置文件中，同时设置了多种临时资源存储方式，则默认使用文件中的第一种 。
## 使用 Caffeine 存储临时资源
iServer 支持将临时资源存储在 Caffeine 中，Caffeine 是一种内存缓存。配置 Caffeine 临时资源存储的方法为：在 iserver-system.xml 文件中开启“基于 Caffeine 的临时资源存储配置”，并注释其他类型的临时资源存储配置。当完成以上配置后启动 iServer，Caffeine 缓存即可用。
<!-- 基于 Caffeine 的临时资源存储配置 -->
<repository class="com.supermap.services.rest.repository.CaffeineRepoProvider" name="localRepository"> 
<repository class="com.supermap.services.rest.repository.CaffeineRepoProvider" name="localRepository"> 
<maximumSize>1000</maximumSize> 
<expireAfterAccess>3.0</expireAfterAccess> 
</config> 
</repository> 
<maximumSize>：缓存的最大对象数
<expireAfterAccess>：访问后过期时间，即过一定时间后不访问（读取或者写入），存储的数据会被销毁，过期时间单位为小时。
## 使用 PostgreSQL、Kingbase、GaussDB、Vastbase、GBase 8c、 HighGoDB 存储临时资源
iServer 支持将临时资源存储在 PostgreSQL 、Kingbase、GaussDB、Vastbase、GBase 8c、HighGoDB 中，六者配置方法相同。
以PostgreSQL为例， PostgreSQL是一种内存缓存。配置 PostgreSQL 临时资源存储的方法为：在 iserver-system.xml 文件中开启“基于 PostgreSQL 的临时资源存储配置”，并注释其他类型的临时资源存储配置。以上配置完成后 PostgreSQL 缓存即可用，无需启动 iServer。
<!-- 基于 PostgreSQL 的临时资源存储配置 -->
<repository class="com.supermap.services.rest.repository.PostgresRepoProvider"> 
<config class="com.supermap.services.rest.repository.PostgresRepoSetting"> 
<type>Postgres</type> 
<jdbcUrl>jdbc:postgresql://ip:port/dbname?currentSchema=public&amp;characterEncoding=utf8&amp;useSSL=false</jdbcUrl>
<username>username</username>
<password>yubokLIRWThaAAhkOXBtiw..</password> 
<cacheSize>21</cacheSize>
<expireTime>3</expireTime>
<deleteTimeSpan>2</deleteTimeSpan>
<autoCreateTable>true</autoCreateTable>
</config> 
</repository> 
<type>：数据库类型。PostgreSQL、Kingbase、GaussDB、Vastbase、GBase 8c、HighGoDB 数据库在 iserver-system.xml文件中仅<type>值不同，分别为Postgres、Kingbase、GaussDB、Vastbase、GBASE8C、HIGHGO_DB。
<jdbcUrl>：数据库的连接信息。其中，ip 为数据库的 ip 地址，port 为数据库的端口，dbname 为数据库名称，? 后面的为数据库的一些参数信息。例如：jdbc:postgresql://127.0.0.1:5432/Testbase?currentSchema=public&amp;characterEncoding=utf8&amp;useSSL=false。
<expireTime>：资源过期时限，单位为分钟。从该资源最后一次被使用起算，若持续未使用的时长大于资源过期时限，则 iServer 将判断该资源过期。
<deleteTimeSpan>：删除过期数据库资源的时间间隔，单位为分钟。该操作的起算时间为初次使用数据库临时资源存储的时间，每至设置的间隔时间点，将删除过期的资源。
## 设置存活时间阈值
临时资源的缓存不论存在于内存空间还是硬盘中，当超过一定存活时间时，临时资源缓存将直接被删除。
SuperMap iServer Java 6R(2012) SP1及以前的版本中， 某些资源如 tempLayersSet、trackingLayer、queryResults 的临时子资源的生命周期是通过 holdTime 参数来控制的，客户端或用户可以设置临时资源的存活时间，默认为15（分钟）。
SuperMap iServer Java 6R(2012) SP2 及以后的版本中，支持在服务配置文件（iserver-services-interfaces.xml）中设置接口配置参数 defaultHoldTime，用于设定临时资源(如 tempLayersSet、trackingLayer、queryResults 等)默认保存时间，默认为7天，设置后对 REST 接口的所有临时资源的存活时间都生效。 设置方法为：
<interface class="com.supermap.services.rest.RestServlet" name="rest">
<config class="com.supermap.services.rest.RestConfig">
<accessControlAllowOrigin>*</accessControlAllowOrigin>
<!--  rest 资源默认保存时间，单位是分钟-->
<defaultHoldTime>10080</defaultHoldTime>
</config>
</interface>
<interface class="com.supermap.services.rest.JaxrsServletForJersey" name="restjsr">
<config class="com.supermap.services.rest.JaxrsConfigForJersey">
<accessControlAllowOrigin>*</accessControlAllowOrigin>
<!--  rest 资源默认保存时间，单位是分钟-->
<defaultHoldTime>10080</defaultHoldTime>
</config>
</interface>
## 临时资源列表
所有 POST 请求创建的资源都为临时资源，具体资源示例如下：
| 模块 | 临时资源 | 说明 |
| --- | --- | --- |
| map | [queryResult](root/maps/map/queryResults/queryResult.htm) | [queryResults](root/maps/map/queryResults/queryResults.htm) 资源 POST 操作结果。 |
| [tempLayers](root/maps/map/tempLayersSet/tempLayers/tempLayers.htm) | [tempLayersSet](root/maps/map/tempLayersSet/tempLayersSet.htm) 资源 POST 操作结果。 |
| [tempLayer](root/maps/map/tempLayersSet/tempLayers/tempLayer/tempLayer.htm) | [tempLayersSet](root/maps/map/tempLayersSet/tempLayersSet.htm) 资源 POST 操作结果。 |
| [highlightTargetSet](root/maps/map/trackingLayer/highlightTargetSet.htm) | [trackingLayer](root/maps/map/trackingLayer/trackingLayer.htm) 资源 POST 操作结果。 |
| data | [featureResult](root/data/featureResults/featureResult.htm) | [featureResults](root/data/featureResults/featureResults.htm) 资源 POST 操作结果。 |
| [coordtransferResult](root/data/coordTransfer/coordtransferResult/coordtransferResult.htm) | [coordTransfer](root/data/coordTransfer/coordTransfer.htm)资源 POST 操作结果。 |
| spatialAnalyst | [datasetBufferResult](root/spatialanalyst/datasets/datasetBufferResults/datasetBufferResult.htm) | [datasetBufferResults](root/spatialanalyst/datasets/datasetBufferResults/datasetBufferResults.htm) 资源 POST 操作结果。 |
| [datasetOverlayResult](root/spatialanalyst/datasets/datasetOverlayResults/datasetOverlayResult.htm) | [datasetOverlayResults](root/spatialanalyst/datasets/datasetOverlayResults/datasetOverlayResults.htm) 资源 POST 操作结果。 |
| [datasetIsolineResult](root/spatialanalyst/datasets/datasetIsolineResults/datasetIsolineResult.htm) | [datasetIsolineResults](root/spatialanalyst/datasets/datasetIsolineResults/datasetIsolineResults.htm) 资源 POST 操作结果。 |
| [datasetIsoregionResult](root/spatialanalyst/datasets/datasetIsoregionResults/datasetIsoregionResult.htm) | [datasetIsoregionResults](root/spatialanalyst/datasets/datasetIsoregionResults/datasetIsoregionResults.htm) 资源 POST 操作结果。 |
| [interpolationIDWResult](root/spatialanalyst/datasets/interpolation/interpolationIDW/interpolationIDWResult.htm) | [interpolationIDW](root/spatialanalyst/datasets/interpolation/interpolationIDW/interpolationIDW.htm) 资源 POST 操作结果。 |
| [interpolationDensityResult](root/spatialanalyst/datasets/interpolation/interpolationDensity/interpolationDensityResult.htm) | [interpolationDensity](root/spatialanalyst/datasets/interpolation/interpolationDensity/interpolationDensity.htm) 资源 POST 操作结果。 |
| [interpolationRBFResult](root/spatialanalyst/datasets/interpolation/interpolationRBF/interpolationRBFResult.htm) | [interpolationRBF](root/spatialanalyst/datasets/interpolation/interpolationRBF/interpolationRBF.htm) 资源 POST 操作结果。 |
| [interpolationKrigingResult](root/spatialanalyst/datasets/interpolation/interpolationKriging/interpolationKrigingResult.htm) | [interpolationKriging](root/spatialanalyst/datasets/interpolation/interpolationKriging/interpolationKriging.htm) 资源 POST 操作结果。 |
| [spatialDataResult](root/spatialanalyst/datasets/linearReferencing/spatialdataResult.htm) | [generateSpatialData](root/spatialanalyst/datasets/linearReferencing/generateSpatialData.htm) 资源 POST 操作结果。 |
| [datasetGeorelationResult](root/spatialanalyst/datasets/datasetGeorelationResults/datasetGeorelationResult.htm) | [datasetGeorelationResults](root/spatialanalyst/datasets/datasetGeorelationResults/datasetGeorelationResults.htm) 资源 POST 操作结果。 |
| [datasetThiessenPolygenResult](root/spatialanalyst/datasets/datasetThiessenResults/datasetThiessenResult.htm) | [datasetThiessenPolygenResults](root/spatialanalyst/datasets/datasetThiessenResults/datasetThiessenResults.htm) 资源 POST 操作结果。 |
| [geometryBufferResult](root/spatialanalyst/geometry/geometryBufferResults/geometryBufferResult.htm) | [geometryBufferResults](root/spatialanalyst/geometry/geometryBufferResults/geometryBufferResults.htm) 资源 POST 操作结果。 |
| [geometryOverlayResult](root/spatialanalyst/datasets/datasetOverlayResults/datasetOverlayResult.htm) | [geometryOverlayResults](root/spatialanalyst/datasets/datasetOverlayResults/datasetOverlayResults.htm) 资源 POST 操作结果。 |
| [geometryIsolineResult](root/spatialanalyst/geometry/geometryIsolineResults/geometryIsolineResult.htm) | [geometryIsolineResults](root/spatialanalyst/geometry/geometryIsolineResults/geometryIsolineResults.htm) 资源 POST 操作结果。 |
| [geometryIsoregionResult](root/spatialanalyst/geometry/geometryIsoregionResults/geometryIsoregionResult.htm) | [geometryIsoregionResults](root/spatialanalyst/geometry/geometryIsoregionResults/geometryIsoregionResults.htm) 资源 POST 操作结果。 |