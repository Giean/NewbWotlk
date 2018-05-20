-- Add waypoints to Hezrul Bloodmark
SET @GUID := 13990;
SET @PATHID := @GUID * 10;

-- Group formation
DELETE FROM `creature_formations` WHERE `leaderGUID`=@GUID;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES
(@GUID, @GUID, 0,   0, 515),
(@GUID, 13991, 3,  80, 515),   -- Kolkar Bloodcharger #1
(@GUID, 13992, 3, 280, 515);   -- Kolkar Bloodcharger #2

UPDATE `creature_addon` SET `path_id`=@PATHID WHERE `guid`=@GUID;
UPDATE `creature` SET `MovementType`=2 WHERE `guid`=@GUID;

-- Add waypoints
DELETE FROM `waypoint_data` WHERE `id` =@PATHID;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(@PATHID, 1, -1163.84, -2039.64, 92.329, 0.778403),
(@PATHID, 2, -1155.26, -2030.92, 92.3441, 0.794111),
(@PATHID, 3, -1146.76, -2025.56, 91.9018, 0.562419),
(@PATHID, 4, -1138.97, -2020.69, 91.7124, 0.640959),
(@PATHID, 5, -1127.73, -2012.34, 90.3264, 0.625251),
(@PATHID, 6, -1116.3, -2004.25, 87.966, 0.597762),
(@PATHID, 7, -1104.73, -1996.37, 86.8092, 0.601689),
(@PATHID, 8, -1095.69, -1989.63, 87.3704, 0.707718),
(@PATHID, 9, -1085.47, -1980.06, 88.4313, 0.766622),
(@PATHID, 10, -1075.47, -1970.27, 89.2527, 0.790184),
(@PATHID, 11, -1065.57, -1960.37, 89.5806, 0.739133),
(@PATHID, 12, -1054.95, -1951.25, 91.6132, 0.754841),
(@PATHID, 13, -1037.63, -1936.87, 91.303, 0.315018),
(@PATHID, 14, -1031.23, -1935.6, 91.0524, 6.24477),
(@PATHID, 15, -1018.69, -1937.2, 91.2356, 6.00916),
(@PATHID, 16, -1009.08, -1941.33, 91.6321, 5.68322),
(@PATHID, 17, -1000.52, -1948.73, 91.6426, 5.45938),
(@PATHID, 18, -990.914, -1958.9, 91.8159, 5.53792),
(@PATHID, 19, -983.567, -1964.32, 92.0828, 5.74998),
(@PATHID, 20, -971.49, -1971.4, 91.9302, 5.74212),
(@PATHID, 21, -963.513, -1976.74, 92.2916, 5.64002),
(@PATHID, 22, -949.908, -1985.93, 91.5116, 6.10734),
(@PATHID, 23, -942.074, -1986.29, 91.684, 0.126528),
(@PATHID, 24, -934.487, -1983.16, 91.8781, 0.617402),
(@PATHID, 25, -927.677, -1976.49, 91.8453, 1.00225),
(@PATHID, 26, -917.012, -1962.43, 92.4899, 0.503519),
(@PATHID, 27, -912.48, -1961.02, 92.6773, 6.24871),
(@PATHID, 28, -912.48, -1961.02, 92.6773, 6.24871),
(@PATHID, 29, -901.182, -1962.18, 93.0181, 5.98167),
(@PATHID, 30, -884.309, -1971.16, 93.3765, 5.6361),
(@PATHID, 31, -873.323, -1981.73, 92.9514, 5.23555),
(@PATHID, 32, -870.22, -1988.95, 92.2641, 5.01171),
(@PATHID, 33, -868.573, -2000.59, 90.4552, 4.76038),
(@PATHID, 34, -869.798, -2009.64, 88.3658, 4.43052),
(@PATHID, 35, -869.798, -2009.64, 88.3658, 4.43052),
(@PATHID, 36, -874.149, -2022.94, 84.0626, 4.46194),
(@PATHID, 37, -875.511, -2029.78, 82.3593, 4.56796),
(@PATHID, 38, -875.861, -2035.86, 81.6462, 4.78002),
(@PATHID, 39, -875.861, -2035.86, 81.6462, 4.78002),
(@PATHID, 40, -874.428, -2054.12, 81.1732, 4.59545),
(@PATHID, 41, -875.172, -2058.42, 81.7428, 4.48942),
(@PATHID, 42, -875.172, -2058.42, 81.7428, 4.48942),
(@PATHID, 43, -878.827, -2074.61, 84.8399, 4.63472),
(@PATHID, 44, -878.94, -2078.52, 85.8663, 4.73682),
(@PATHID, 45, -879.085, -2094.22, 89.8159, 4.51299),
(@PATHID, 46, -879.085, -2094.22, 89.8159, 4.51299),
(@PATHID, 47, -882.508, -2107.79, 91.7992, 4.44623),
(@PATHID, 48, -885.841, -2121.38, 93.3342, 4.43052),
(@PATHID, 49, -890.019, -2134.72, 95.0228, 4.52084),
(@PATHID, 50, -891.734, -2148.61, 93.0664, 4.61902),
(@PATHID, 51, -892.999, -2158.92, 93.0222, 4.51299),
(@PATHID, 52, -896.872, -2184.37, 93.1021, 4.47764),
(@PATHID, 53, -898.9, -2190.57, 93.5871, 4.19883),
(@PATHID, 54, -908.599, -2206.56, 92.8768, 3.96321),
(@PATHID, 55, -919.849, -2216.23, 92.9446, 3.75508),
(@PATHID, 56, -926.924, -2220.54, 91.9927, 3.65298),
(@PATHID, 57, -939.19, -2227.29, 93.8277, 3.64512),
(@PATHID, 58, -951.475, -2234.01, 93.4212, 3.59407),
(@PATHID, 59, -964.327, -2239.55, 94.0063, 3.50768),
(@PATHID, 60, -970.104, -2241.32, 93.6923, 3.40165),
(@PATHID, 61, -983.625, -2244.93, 92.8864, 3.49983),
(@PATHID, 62, -1003.08, -2254.73, 92.8758, 3.71188),
(@PATHID, 63, -1014.4, -2262.96, 93.8607, 3.79828),
(@PATHID, 64, -1021.98, -2268.85, 93.6578, 3.67261),
(@PATHID, 65, -1027.46, -2271.52, 93.5807, 3.44877),
(@PATHID, 66, -1035.48, -2273.72, 92.8945, 3.34275),
(@PATHID, 67, -1041.95, -2274.72, 92.3594, 3.23672),
(@PATHID, 68, -1054.43, -2276.54, 91.0989, 3.49983),
(@PATHID, 69, -1059.01, -2279.04, 90.5081, 3.75508),
(@PATHID, 70, -1065.69, -2283.98, 90.095, 3.86896),
(@PATHID, 71, -1078.1, -2294.25, 91.1205, 3.6412),
(@PATHID, 72, -1090.36, -2301.01, 91.7954, 3.68832),
(@PATHID, 73, -1103.82, -2306.93, 91.869, 3.22101),
(@PATHID, 74, -1110.65, -2306, 91.6284, 2.71835),
(@PATHID, 75, -1120.22, -2300.76, 90.5557, 2.49059),
(@PATHID, 76, -1127.45, -2293.8, 89.3242, 2.2746),
(@PATHID, 77, -1133.71, -2283.89, 87.7026, 1.9251),
(@PATHID, 78, -1133.71, -2283.89, 87.7026, 1.9251),
(@PATHID, 79, -1138.44, -2270.71, 84.846, 1.90939),
(@PATHID, 80, -1143.59, -2257.7, 83.7522, 1.98008),
(@PATHID, 81, -1147.41, -2249.41, 84.4206, 2.10182),
(@PATHID, 82, -1154.96, -2237.62, 85.5433, 2.18036),
(@PATHID, 83, -1163.01, -2226.26, 85.3018, 2.07825),
(@PATHID, 84, -1168.67, -2215.42, 85.647, 1.97222),
(@PATHID, 85, -1175.52, -2196.08, 87.4019, 1.98793),
(@PATHID, 86, -1177.88, -2191.38, 88.0981, 2.10182),
(@PATHID, 87, -1184.32, -2181.51, 89.6795, 2.21177),
(@PATHID, 88, -1190.2, -2174.5, 90.7129, 2.32173),
(@PATHID, 89, -1199.41, -2165.2, 92.1156, 2.21962),
(@PATHID, 90, -1207.39, -2153.7, 92.9348, 2.1725),
(@PATHID, 91, -1212.19, -2147.5, 92.9004, 2.27853),
(@PATHID, 92, -1219.43, -2138.75, 92.6938, 2.15679),
(@PATHID, 93, -1228.51, -2119.14, 92.8527, 1.65807),
(@PATHID, 94, -1227.87, -2112.21, 92.012, 1.28893),
(@PATHID, 95, -1227.87, -2112.21, 92.012, 1.28893),
(@PATHID, 96, -1223.25, -2099, 92.2144, 1.20646),
(@PATHID, 97, -1213.01, -2075.87, 91.8991, 0.966915),
(@PATHID, 98, -1208.34, -2070.73, 92.348, 0.711661),
(@PATHID, 99, -1197.42, -2061.97, 93.0869, 0.66061),
(@PATHID, 100, -1191.3, -2057.78, 93.244, 0.558508),
(@PATHID, 101, -1179.36, -2050.48, 93.4187, 0.566362);
