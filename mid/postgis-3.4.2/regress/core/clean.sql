CREATE TABLE clean_cases (origin varchar, caseno numeric,
                          orig geometry,
                          valid geometry);
COPY clean_cases FROM stdin;
RT	1	0103000000010000000700000000000000000000400000000000000040000000000000184000000000000000C000000000000024400000000000000040000000000000244000000000000000C000000000000018400000000000000040000000000000004000000000000000C000000000000000400000000000000040	010600000003000000010300000001000000040000000000000000000040000000000000004000000000000010400000000000000000000000000000004000000000000000C0000000000000004000000000000000400103000000010000000500000000000000000020400000000000000000000000000000184000000000000000C0000000000000104000000000000000000000000000001840000000000000004000000000000020400000000000000000010300000001000000040000000000000000002040000000000000000000000000000024400000000000000040000000000000244000000000000000C000000000000020400000000000000000
RT	2	01030000000100000007000000000000000000284000000000000000C000000000000028400000000000000040000000000000304000000000000000000000000000002C40000000000000000000000000000032400000000000000040000000000000324000000000000000C0000000000000284000000000000000C0	01030000000200000006000000000000000000284000000000000000C0000000000000284000000000000000400000000000002E40000000000000E03F00000000000032400000000000000040000000000000324000000000000000C0000000000000284000000000000000C0040000000000000000002E40000000000000E03F0000000000002C400000000000000000000000000000304000000000000000000000000000002E40000000000000E03F
RT	3	01030000000100000006000000000000000000004000000000000010400000000000000040000000000000184000000000000010400000000000001040000000000000184000000000000018400000000000001840000000000000104000000000000000400000000000001040	01060000000200000001030000000100000004000000000000000000004000000000000010400000000000000040000000000000184000000000000010400000000000001040000000000000004000000000000010400103000000010000000400000000000000000010400000000000001040000000000000184000000000000018400000000000001840000000000000104000000000000010400000000000001040
RT	4	01060000000200000001030000000100000007000000000000000000344000000000000000C00000000000003440000000000000004000000000000038400000000000000000000000000000364000000000000000000000000000003A4000000000000000400000000000003A4000000000000000C0000000000000344000000000000000C001030000000100000005000000000000000000344000000000000010C00000000000003A4000000000000010C00000000000003A4000000000000018C0000000000000344000000000000018C0000000000000344000000000000010C0	01060000000200000001030000000200000006000000000000000000344000000000000000C0000000000000344000000000000000400000000000003740000000000000E03F0000000000003A4000000000000000400000000000003A4000000000000000C0000000000000344000000000000000C0040000000000000000003740000000000000E03F00000000000036400000000000000000000000000000384000000000000000000000000000003740000000000000E03F01030000000100000005000000000000000000344000000000000010C00000000000003A4000000000000010C00000000000003A4000000000000018C0000000000000344000000000000018C0000000000000344000000000000010C0
RT	5	010600000001000000010300000001000000070000000000000000001C4000000000000008400000000000001C400000000000001840000000000000224000000000000014400000000000002640000000000000184000000000000026400000000000000840000000000000224000000000000014400000000000001C400000000000000840	010600000002000000010300000001000000040000000000000000001C4000000000000008400000000000001C400000000000001840000000000000224000000000000014400000000000001C4000000000000008400103000000010000000400000000000000000022400000000000001440000000000000264000000000000018400000000000002640000000000000084000000000000022400000000000001440
RT	6	010300000001000000090000000000000000002840000000000000104000000000000028400000000000001C40000000000000304000000000000018400000000000002C400000000000001440000000000000304000000000000014400000000000002C40000000000000184000000000000032400000000000001C400000000000003240000000000000104000000000000028400000000000001040	010300000003000000060000000000000000002840000000000000104000000000000028400000000000001C400000000000002E40000000000000194000000000000032400000000000001C400000000000003240000000000000104000000000000028400000000000001040050000000000000000002E4000000000000019400000000000002C4000000000000018400000000000002E400000000000001640000000000000304000000000000018400000000000002E400000000000001940040000000000000000002E4000000000000016400000000000002C400000000000001440000000000000304000000000000014400000000000002E400000000000001640
RT	7	01060000000100000001030000000100000009000000000000000000244000000000000024400000000000002440000000000000344000000000000034400000000000003440000000000000344000000000000024400000000000003E4000000000000024400000000000003E400000000000003440000000000000344000000000000034400000000000003440000000000000244000000000000024400000000000002440	010700000002000000010300000001000000070000000000000000002440000000000000244000000000000024400000000000003440000000000000344000000000000034400000000000003E4000000000000034400000000000003E40000000000000244000000000000034400000000000002440000000000000244000000000000024400102000000020000000000000000003440000000000000344000000000000034400000000000002440
RT	7.1	0103000000010000000900000000000000000028C0000000000000244000000000000028C0000000000000344000000000000000C0000000000000344000000000000000C00000000000002440000000000000204000000000000024400000000000002040000000000000344000000000000000C0000000000000344000000000000000C0000000000000244000000000000028C00000000000002440	0107000000020000000103000000010000000700000000000000000028C0000000000000244000000000000028C0000000000000344000000000000000C00000000000003440000000000000204000000000000034400000000000002040000000000000244000000000000000C0000000000000244000000000000028C0000000000000244001020000000200000000000000000000C0000000000000344000000000000000C00000000000002440
RT	8	0103000000010000000C00000000000000000034C000000000000028C000000000000034C000000000000000C0000000000000000000000000000000C0000000000000000000000000000028C000000000000024C000000000000028C000000000000024C0000000000000204000000000000000000000000000002040000000000000000000000000000000C000000000000039C000000000000000C000000000000039C0000000000000084000000000000034C0000000000000084000000000000034C000000000000028C0	01070000000200000001060000000200000001030000000100000007000000000000000000000000000000000000C0000000000000000000000000000028C000000000000024C000000000000028C000000000000024C000000000000000C000000000000024C0000000000000204000000000000000000000000000002040000000000000000000000000000000C00103000000010000000500000000000000000034C000000000000000C000000000000039C000000000000000C000000000000039C0000000000000084000000000000034C0000000000000084000000000000034C000000000000000C001050000000300000001020000000200000000000000000034C000000000000028C000000000000034C000000000000000C001020000000200000000000000000034C000000000000000C000000000000024C000000000000000C001020000000200000000000000000024C000000000000000C0000000000000000000000000000000C0
RT	9	0103000000010000000400000000000000000024400000000000003640000000000000244000000000000040400000000000003440000000000000404000000000000034400000000000003640	010300000001000000050000000000000000002440000000000000364000000000000024400000000000004040000000000000344000000000000040400000000000003440000000000000364000000000000024400000000000003640
RT	9.1	0103000000010000000600000000000000000028C0000000000000364000000000000028C00000000000004040000000000000204000000000000040400000000000002040000000000000364000000000000000C0000000000000364000000000000000C00000000000004540	0106000000030000000103000000010000000400000000000000000028C0000000000000364000000000000028C000000000000040400000000000001CC0000000000000404000000000000028C000000000000036400103000000010000000400000000000000000000C000000000000040400000000000001CC0000000000000404000000000000000C0000000000000454000000000000000C000000000000040400103000000010000000500000000000000000000C00000000000004040000000000000204000000000000040400000000000002040000000000000364000000000000000C0000000000000364000000000000000C00000000000004040
RT	10	0103000000010000000500000000000000000039C000000000000024400000000000002EC000000000000024400000000000002EC0000000000000344000000000000039C0000000000000344000000000000039C00000000000002440	0103000000010000000500000000000000000039C000000000000024400000000000002EC000000000000024400000000000002EC0000000000000344000000000000039C0000000000000344000000000000039C00000000000002440
RT	11	0103000000010000000300000000000000008042C00000000000002E4000000000000042C0000000000000304000000000008042C00000000000002E40	LINESTRING(-37 15,-36 16)
RT	12	0103000000020000000500000000000000008040C00000000000002C4000000000008040C000000000000031400000000000003EC000000000000031400000000000003EC00000000000002C4000000000008040C00000000000002C400300000000000000000040C00000000000002E400000000000003FC0000000000000304000000000000040C00000000000002E40	0107000000020000000103000000010000000500000000000000008040C00000000000002C4000000000008040C000000000000031400000000000003EC000000000000031400000000000003EC00000000000002C4000000000008040C00000000000002C4001020000000200000000000000000040C00000000000002E400000000000003FC00000000000003040
RT	13.1	0103000000010000000900000000000000000039C000000000000039400000000000002EC000000000000039400000000000002EC000000000008041400000000000002EC000000000008041400000000000002EC0000000000080414000000000000039C0000000000080414000000000000039C0000000000080414000000000000039C0000000000000394000000000000039C00000000000003940	0103000000010000000900000000000000000039C000000000000039400000000000002EC000000000000039400000000000002EC000000000008041400000000000002EC000000000008041400000000000002EC0000000000080414000000000000039C0000000000080414000000000000039C0000000000080414000000000000039C0000000000000394000000000000039C00000000000003940
RT	13.2	0103000000010000000700000000000000000044C000000000000039400000000000003EC000000000000039400000000000003EC000000000008041400000000000003EC000000000008046400000000000003EC0000000000080414000000000000044C0000000000080414000000000000044C00000000000003940	010700000002000000010300000001000000050000000000000000003EC000000000008041400000000000003EC0000000000000394000000000000044C0000000000000394000000000000044C000000000008041400000000000003EC000000000008041400102000000020000000000000000003EC000000000008041400000000000003EC00000000000804640
RT	14	01030000000100000009000000000000000000004000000000000018C0000000000000004000000000000010C0000000000000104000000000000010C0000000000000204000000000000018C0000000000000244000000000000018C0000000000000244000000000000010C0000000000000204000000000000010C0000000000000104000000000000018C0000000000000004000000000000018C0	01060000000200000001030000000100000006000000000000000000004000000000000018C0000000000000004000000000000010C0000000000000104000000000000010C0000000000000184000000000000014C0000000000000104000000000000018C0000000000000004000000000000018C001030000000100000006000000000000000000184000000000000014C0000000000000204000000000000010C0000000000000244000000000000010C0000000000000244000000000000018C0000000000000204000000000000018C0000000000000184000000000000014C0
RT	15	0103000000010000000B00000000000000000040400000000000002440000000000000404000000000000034400000000000004540000000000000344000000000000045400000000000002E40000000000000454000000000000024400000000000004A4000000000000024400000000000004A4000000000000034400000000000004540000000000000344000000000000045400000000000002E400000000000004540000000000000244000000000000040400000000000002440	010700000002000000010300000001000000070000000000000000004040000000000000244000000000000040400000000000003440000000000000454000000000000034400000000000004A4000000000000034400000000000004A40000000000000244000000000000045400000000000002440000000000000404000000000000024400105000000020000000102000000020000000000000000004540000000000000344000000000000045400000000000002E4001020000000200000000000000000045400000000000002E4000000000000045400000000000002440
RT	16.1	010600000002000000010300000001000000050000000000000000003640000000000000364000000000000040400000000000003640000000000000404000000000000040400000000000003640000000000000404000000000000036400000000000003640010300000001000000050000000000000000003B400000000000003B4000000000008042400000000000003B40000000000080424000000000008042400000000000003B4000000000008042400000000000003B400000000000003B40	0106000000020000000103000000010000000700000000000000000040400000000000003B400000000000004040000000000000364000000000000036400000000000003640000000000000364000000000000040400000000000003B4000000000000040400000000000003B400000000000003B4000000000000040400000000000003B40010300000001000000070000000000000000003B4000000000000040400000000000003B4000000000008042400000000000804240000000000080424000000000008042400000000000003B4000000000000040400000000000003B40000000000000404000000000000040400000000000003B400000000000004040
RT	16.2	0106000000020000000103000000010000000500000000000000008043400000000000003640000000000080484000000000000036400000000000804840000000000000404000000000008043400000000000004040000000000080434000000000000036400103000000010000000500000000000000008047400000000000003A4000000000008049400000000000003A4000000000008049400000000000003E4000000000008047400000000000003E4000000000008047400000000000003A40	0106000000020000000103000000010000000900000000000000008048400000000000003A400000000000804840000000000000364000000000008043400000000000003640000000000080434000000000000040400000000000804840000000000000404000000000008048400000000000003E4000000000008047400000000000003E4000000000008047400000000000003A4000000000008048400000000000003A400103000000010000000500000000000000008048400000000000003E4000000000008049400000000000003E4000000000008049400000000000003A4000000000008048400000000000003A4000000000008048400000000000003E40
RT	16.3	010600000002000000010300000001000000050000000000000000804A4000000000000036400000000000804F4000000000000036400000000000804F4000000000000040400000000000804A4000000000000040400000000000804A400000000000003640010300000001000000050000000000000000804E400000000000003A400000000000804F400000000000003A400000000000804F400000000000003E400000000000804E400000000000003E400000000000804E400000000000003A40	010700000002000000010300000001000000070000000000000000804F400000000000003A400000000000804F4000000000000036400000000000804A4000000000000036400000000000804A4000000000000040400000000000804F4000000000000040400000000000804F400000000000003E400000000000804F400000000000003A400105000000020000000102000000020000000000000000804E400000000000003A400000000000804F400000000000003A400102000000030000000000000000804F400000000000003E400000000000804E400000000000003E400000000000804E400000000000003A40
RT	16.4	010600000002000000010300000001000000080000000000000000C0504000000000000036400000000000405340000000000000364000000000004053400000000000003A400000000000C053400000000000003C4000000000004053400000000000003E40000000000040534000000000000040400000000000C0504000000000000040400000000000C050400000000000003640010300000001000000060000000000000000C052400000000000003A4000000000004053400000000000003A400000000000C053400000000000003C4000000000004053400000000000003E400000000000C052400000000000003E400000000000C052400000000000003A40	0107000000020000000103000000010000000800000000000000004053400000000000003A40000000000040534000000000000036400000000000C0504000000000000036400000000000C0504000000000000040400000000000405340000000000000404000000000004053400000000000003E400000000000C053400000000000003C4000000000004053400000000000003A400105000000020000000102000000020000000000000000C052400000000000003A4000000000004053400000000000003A4001020000000300000000000000004053400000000000003E400000000000C052400000000000003E400000000000C052400000000000003A40
RT	17.1	SRID=12;010300000003000000050000000000000000004E4000000000000014C0000000000000544000000000000014C0000000000000544000000000000034400000000000004E4000000000000034400000000000004E4000000000000014C0050000000000000000804B4000000000000000000000000000805140000000000000000000000000008051400000000000002E400000000000804B400000000000002E400000000000804B40000000000000000005000000000000000040504000000000000014400000000000C0524000000000000014400000000000C0524000000000000024400000000000405040000000000000244000000000004050400000000000001440	SRID=12;0106000000030000000103000000010000000D0000000000000000004E400000000000002E400000000000004E40000000000000344000000000000054400000000000003440000000000000544000000000000014C00000000000004E4000000000000014C00000000000004E40000000000000000000000000008051400000000000000000000000000080514000000000000014400000000000C0524000000000000014400000000000C0524000000000000024400000000000805140000000000000244000000000008051400000000000002E400000000000004E400000000000002E40010300000001000000050000000000000000004E4000000000000000000000000000804B4000000000000000000000000000804B400000000000002E400000000000004E400000000000002E400000000000004E400000000000000000010300000001000000050000000000000000805140000000000000244000000000008051400000000000001440000000000040504000000000000014400000000000405040000000000000244000000000008051400000000000002440
PG	1	SRID=1;0103000000010000000100000000000000000000000000000000000000	SRID=1;POINT(0 0)
PG	2	SRID=3;LINESTRING(0 0, 0 0)	SRID=3;POINT(0 0)
PG	3	SRID=43;MULTILINESTRING((0 0, 10 0),(20 20, 20 20))	SRID=43;GEOMETRYCOLLECTION(LINESTRING(0 0, 10 0),POINT(20 20))
PG	4	SRID=2;MULTIPOLYGON(((5 3, 7 4, 9 5, 11 6, 13 7, 5 3)),((14 14, 14 14, 14 14, 14 14)))	SRID=2;GEOMETRYCOLLECTION(MULTILINESTRING((5 3,7 4),(7 4,9 5),(9 5,11 6),(11 6,13 7)),POINT(14 14))
PG	5	SRID=4;MULTILINESTRING((5 3 0, 7 4 5, 9 5 3, 11 6 4, 13 7 9, 5 3 0),(14 14 2, 14 14 3, 14 14 4, 14 14 5))	SRID=4;GEOMETRYCOLLECTION(MULTILINESTRING((5 3 0,7 4 3.625),(7 4 3.625,9 5 3.75),(9 5 3.75,11 6 5.375),(11 6 5.375,13 7 9)),POINT(14 14 2))
\.

-- PG.1 : polygon with single ring with single point in it
--        to be converted to a POINT
--

SELECT origin,caseno,
       st_equals(st_collectionextract(st_makevalid(orig),1), st_collectionextract(valid,1)) AND
       st_equals(st_collectionextract(st_makevalid(orig),2), st_collectionextract(valid,2)) AND
       st_equals(st_collectionextract(st_makevalid(orig),3), st_collectionextract(valid,3)),
       st_isvalid(st_makevalid(orig)), -- paranoia
       (st_isvaliddetail(orig)).valid
  FROM clean_cases
ORDER BY 1, 2;

SELECT '#1719.1', ST_AsEWKT(ST_MakeValid('POINT(0 0)'));
SELECT '#1719.2', ST_AsEWKT(ST_Normalize(ST_MakeValid('GEOMETRYCOLLECTION(POINT(0 0),MULTIPOINT(3 4,5 2),LINESTRING(4 4, 4 4),POLYGON((0 0,10 10,0 10,10 0,0 0)))')));
SELECT '#1719.3', ST_AsEWKT(ST_MakeValid('MULTIPOINT(3 4,5 2)'));


SELECT '#4813.0', ST_AsEWKT(ST_MakeValid(ST_SetSRID(ST_MakePoint('NaN', 'NaN'), 4326)));
SELECT '#4813.1', ST_AsEWKT(ST_MakeValid(ST_SetSRID(ST_Collect(p), 4326))) FROM (
		SELECT ST_MakePoint('NaN', 'NaN') as p UNION ALL
		SELECT ST_MakePoint(1, 0) as p UNION ALL
		SELECT ST_MakePoint('NaN', 'NaN') UNION ALL
		SELECT ST_MakePoint(10, 10) UNION ALL
		SELECT ST_MakePoint('NaN', 'NaN') UNION ALL
		SELECT ST_MakePoint('NaN', 'NaN') UNION ALL
		SELECT ST_MakePoint('NaN', 'NaN')
) foo;
SELECT '#4813.10', ST_AsEWKT(ST_MakeValid(ST_SetSRID(ST_MakeLine(p), 4326))) FROM (
	SELECT ST_MakePoint('NaN', 'NaN') as p
) foo;
SELECT '#4813.11', ST_AsEWKT(ST_MakeValid(ST_SetSRID(ST_MakeLine(p), 4326))) FROM (
	SELECT ST_MakePoint(1, 0) as p UNION ALL
	SELECT ST_MakePoint('NaN', 'NaN')
) foo;
SELECT '#4813.12', ST_AsEWKT(ST_MakeValid(ST_SetSRID(ST_MakeLine(p), 4326))) FROM (
	SELECT ST_MakePoint(1, 0) as p UNION ALL
	SELECT ST_MakePoint('NaN', 'NaN') UNION ALL
	SELECT ST_MakePoint(2, 0)
) foo;
SELECT '#4813.13', ST_AsEWKT(ST_MakeValid(ST_SetSRID(ST_MakeLine(p), 4326))) FROM (
	SELECT ST_MakePoint(1, 0) as p UNION ALL
	SELECT ST_MakePoint(2, 0) UNION ALL
	SELECT ST_MakePoint('NaN', 'NaN')
) foo;
SELECT '#4813.20', ST_AsEWKT(ST_MakeValid(ST_SetSRID(ST_MakePolygon(r), 4326))) FROM (
	SELECT ST_MakeLine(p) as r FROM (
			SELECT ST_MakePoint(1, 0) as p UNION ALL
			SELECT ST_MakePoint(10, 0) UNION ALL
			SELECT ST_MakePoint('NaN', 'NaN') UNION ALL
			SELECT ST_MakePoint(10, 10) UNION ALL
			SELECT ST_MakePoint('NaN', 'NaN') UNION ALL
			SELECT ST_MakePoint(0, 10) UNION ALL
			SELECT ST_MakePoint('NaN', 'NaN') UNION ALL
			SELECT ST_MakePoint('NaN', 'NaN') UNION ALL
			SELECT ST_MakePoint(1, 0)
	) foo
) bar;

DROP TABLE clean_cases;
