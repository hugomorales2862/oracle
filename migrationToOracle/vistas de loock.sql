CREATE VIEW v_locks
    (

        session,

        process,

        connected,
        host,

        user,

        database,
                table,

        lock,

        number,

        duration

    )

AS

SELECT  x5.sid,

        x5.pid,

        (CURRENT - DBINFO('utc_to_datetime', x5.connected))

            :: INTERVAL HOUR(4) TO SECOND, -- connection duration

        x5.hostname,

        x5.username,

        x1.dbsname,

        x1.tabname,

        DECODE(x0.rowidn,0,'T','R') || x4.txt[1,3],

        COUNT(*) :: INTEGER,

        MAX(CURRENT - DBINFO('utc_to_datetime', x0.grtime))

            :: INTERVAL HOUR(4) TO SECOND -- lock duration

 

FROM    sysmaster:syslcktab   AS x0,

        sysmaster:systabnames AS x1,

        sysmaster:systxptab   AS x2,

        sysmaster:sysrstcb    AS x3,

        sysmaster:flags_text  AS x4,

        sysmaster:syssessions AS x5

 

WHERE   x1.partnum  = x0.partnum

AND     x2.address  = x0.owner

AND     x3.address  = x2.owner

AND     x4.flags    = x0.type

AND     x5.sid      = x3.sid

AND     x4.tabname  = 'syslcktab'

AND     x1.dbsname != 'sysmaster'  -- real databases only

AND     x1.tabname  NOT LIKE '% %' -- real tables only

AND     x4.txt      NOT LIKE '%I%' -- ignore "intended" locks

GROUP BY 1, 2, 3, 4, 5, 6, 7, 8;

GRANT SELECT ON v_locks TO PUBLIC;


CREATE VIEW v_waiters

    (

    session,

        process,

        connected,

        host,

        user,

        database,

        locker

    )

AS

 

SELECT  x1.sid,

        x1.pid,
        (CURRENT - DBINFO('utc_to_datetime', x1.connected))
      :: INTERVAL HOUR(4) TO SECOND, -- connection duration

        x1.hostname,

        x1.username,

        x6.odb_dbname,

        x5.sid

 

FROM    sysmaster:sysscblst AS x1,

        sysmaster:sysrstcb  AS x2,

        sysmaster:syslcktab AS x3,

        sysmaster:sysrstcb  AS x4,

        sysmaster:sysscblst AS x5,

        sysmaster:sysopendb AS x6

WHErE   x2.scb           = x1.address

AND     x3.address       = x2.lkwait

AND     x4.txp           = x3.owner
AND     x5.address       = x4.scb

AND     x6.odb_sessionid = x1.sid

AND     x6.odb_iscurrent = 'Y';

GRANT SELECT ON v_waiters TO PUBLIC;

SELECT * FROM systables where blocklevel <> 'R' AND tabid > 99