DROP TABLE IF EXISTS `mod_auctionhousebot`;

DROP TABLE IF EXISTS `auctionhousebot_marketItems`;
CREATE TABLE `auctionhousebot_marketItems` (
  `itemId` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `sum` bigint NOT NULL,
  `price` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;