-- CreateTable
CREATE TABLE `posts` (
    `id` VARCHAR(191) NOT NULL,
    `title` VARCHAR(191) NOT NULL,
    `emoji` VARCHAR(191) NULL,
    `type` VARCHAR(191) NOT NULL,
    `thumb_nail_url` VARCHAR(191) NULL,
    `excerpt` VARCHAR(191) NULL,
    `content_path` VARCHAR(191) NOT NULL,
    `md5_hash` VARCHAR(191) NOT NULL,
    `published` BOOLEAN NULL DEFAULT false,
    `publish_date` DATETIME(3) NULL,
    `like` INTEGER NOT NULL DEFAULT 0,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    UNIQUE INDEX `posts_content_path_key`(`content_path`),
    INDEX `posts_content_path_idx`(`content_path`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
