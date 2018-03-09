# High-availability-clustering-of-Odroid-SBC
This is a tutorial describing how to setup High Availability in Odroid cluster, with one as main server and other backup server. <br />
The HA configuration is achieved using a virtual IP matched to the two physical IPs. This is done using KeepAliveD active service using VRRP Protocol.
The ka-notify and ka-status perl scripts are used for sharing realtime status of the two servers. <br />
The active load sharing is achieved using a PostgreSQL which shares the buffer, memory and cache. <br /> <br />
This example is based on FreeSWITCH SIP call manager, which is very crucial for various PBXs and may be extended to other platforms.<br />
NOTE: For separate main, backup server and db server check branch version1.0 in releases
