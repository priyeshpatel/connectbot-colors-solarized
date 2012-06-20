-- Solarized Colors for ConnectBot 
-- Priyesh Patel
-- https://github.com/priyeshpatel/connectbot-colors-solarized
-- *******************************************************************

-- The following commands should be executed on this SQLite DB:
-- /data/data/org.connectbot/databases/hosts 

-- Remove current color scheme and return to default
UPDATE colors SET scheme = '' WHERE scheme = 0;

-- Setup Solarized
INSERT INTO colors (number, value, scheme) VALUES (0, -16766154, 0); 
INSERT INTO colors (number, value, scheme) VALUES (8, -16304574, 0); 
INSERT INTO colors (number, value, scheme) VALUES (10, -10981771, 0); 
INSERT INTO colors (number, value, scheme) VALUES (11, -10126461, 0);
INSERT INTO colors (number, value, scheme) VALUES (12, -8153962, 0);
INSERT INTO colors (number, value, scheme) VALUES (14, -7102047, 0);
INSERT INTO colors (number, value, scheme) VALUES (7, -1120043, 0); 
INSERT INTO colors (number, value, scheme) VALUES (15, -133405, 0);
INSERT INTO colors (number, value, scheme) VALUES (3, -4880128, 0);
INSERT INTO colors (number, value, scheme) VALUES (9, -3454186, 0);
INSERT INTO colors (number, value, scheme) VALUES (1, -2346449, 0);
INSERT INTO colors (number, value, scheme) VALUES (5, -2935166, 0);
INSERT INTO colors (number, value, scheme) VALUES (13, -9670204, 0);
INSERT INTO colors (number, value, scheme) VALUES (4, -14251054, 0);
INSERT INTO colors (number, value, scheme) VALUES (6, -13983336, 0); 
INSERT INTO colors (number, value, scheme) VALUES (2, -8021760, 0);

-- Setup background and foreground colors
UPDATE colorDefaults SET fg = 12, bg = 0 WHERE scheme = 0;
