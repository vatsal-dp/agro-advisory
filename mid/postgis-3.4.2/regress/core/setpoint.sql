-- Repeat all tests with new function names.
--  Out of range indexes
SELECT ST_SetPoint('LINESTRING(0 0, 1 1, 2 2)', 3, 'POINT(9 9)');
SELECT ST_asewkt(ST_SetPoint('LINESTRING(0 0, 1 1, 2 2)', -1, 'POINT(9 9)'));
SELECT ST_SetPoint('LINESTRING(0 0, 1 1, 2 2)', -10, 'POINT(9 9)');

--  Invalid inputs
SELECT ST_SetPoint('MULTIPOINT(0 0, 1 1, 2 2)', 3, 'POINT(9 9)');
SELECT ST_SetPoint('LINESTRING(0 0, 1 1, 2 2)', -1, 'MULTIPOINT(9 9, 0 0)');

-- Replacing 3dz line with 3dm point
SELECT ST_asewkt(ST_SetPoint('LINESTRING(-1 -1 -1, 1 1 1, 2 2 2)', 0, 'POINT(90 91 92)'));

-- Replacing 3dm line with 3dz point
SELECT ST_asewkt(ST_SetPoint('LINESTRINGM(0 0 0, 1 1 1, 2 2 2)', 1, 'POINTM(90 91 92)'));

-- Replacing 3dm line with 4d point
SELECT ST_asewkt(ST_SetPoint('LINESTRINGM(0 0 0, 1 1 1, 2 2 2)', 2, 'POINT(90 91 92 93)'));

-- Replacing 3dz line with 4d point
SELECT ST_asewkt(ST_SetPoint('LINESTRING(0 0 0, 1 1 1, 2 2 2)', 1, 'POINT(90 91 92 93)'));

-- Replacing 4d line with 2d/3dm/3dz/4d point
SELECT ST_asewkt(ST_SetPoint('LINESTRING(0 0 0 0, 1 1 1 1, 2 2 2 2, 4 4 4 4)', 3, 'POINT(90 91)'));
SELECT ST_asewkt(ST_SetPoint('LINESTRING(0 0 0 0, 1 1 1 1, 2 2 2 2, 4 4 4 4)', 2, 'POINT(90 91 92)'));
SELECT ST_asewkt(ST_SetPoint('LINESTRING(0 0 0 0, 1 1 1 1, 2 2 2 2, 4 4 4 4)', 1, 'POINTM(90 91 92)'));
SELECT ST_asewkt(ST_SetPoint('LINESTRING(0 0 0 0, 1 1 1 1, 2 2 2 2, 4 4 4 4)', 0, 'POINT(90 91 92 93)'));

-- https://trac.osgeo.org/postgis/ticket/5319
SELECT '#5319', ST_SetPoint('0102000020E610000005000000000000000000F07F000000000000F07F000000000000F07F000000000000F07F000000000000F07F000000000000F07F000000000000F07F000000000000F07F000000000000F07F000000000000F07F'::geometry, 1,ST_GeomFromText('POINT(0 0)',4326)  )  As result;

-- https://trac.osgeo.org/postgis/ticket/5610 (NaN check)
SELECT '#5610', lower(ST_AsText(ST_SetPoint(
ST_Makeline(ARRAY[ST_MakePoint(1,2,'Nan'), ST_MakePoint(3,4,10), ST_MakePoint(5,6, 20)]),
2, ST_MakePoint(5,6, 'Nan')))) AS result;

