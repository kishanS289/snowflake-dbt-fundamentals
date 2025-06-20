Use Database MOVIELENS;

Use SCHEMA SNAPSHOTS;

SELECT * FROM MOVIELENS.SNAPSHOTS.SNAP_TAGS ;

SELECT * FROM MOVIELENS.SNAPSHOTS.SNAP_TAGS where contains(tag,'Mark');

SELECT * FROM MOVIELENS.SNAPSHOTS.SNAP_TAGS where user_id=18 order by user_id,DBT_VALID_FROM desc;

---------------------------------------------------------------

Update MOVIELENS.RAW_DEV.SRC_TAGS
set tag = 'Mark Taylor ',tags_timestamp=cast(current_timestamp() as timestamp_NTZ)
where user_id = 18;

SELECT * FROM MOVIELENS.RAW_DEV.SRC_TAGS BEFORE (STATEMENT => '01bd224a-0001-0ed2-0001-ffa60013026e');

SELECT * From MOVIELENS.RAW_DEV.SRC_TAGS where user_id=18;

