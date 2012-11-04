SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE articles;
DROP TABLE article_tags;
DROP TABLE tags;
DROP TABLE users;




/* Create Tables */

CREATE TABLE articles
(
	-- ブログ記事のID
	id int NOT NULL UNIQUE AUTO_INCREMENT COMMENT 'ブログ記事のID',
	-- ブログのタイトル
	title varchar(255) COMMENT 'タイトル',
	-- ブログ記事の内容
	contents text COMMENT '記事の内容',
	-- 記事の公開日時（現時間より未来の場合は公開しない）
	published datetime COMMENT '公開日時',
	-- 作成日時
	created datetime COMMENT '作成日時',
	-- 更新日時
	updated datetime COMMENT '更新日時',
	-- 削除日時
	deleted datetime COMMENT '削除日時',
	PRIMARY KEY (id)
) COMMENT = 'ブログ記事';


CREATE TABLE article_tags
(
	id int NOT NULL UNIQUE AUTO_INCREMENT COMMENT 'id',
	-- 記事のID
	article_id int NOT NULL COMMENT '記事のID',
	-- タグのID
	tag_id int NOT NULL COMMENT 'タグのID',
	-- 作成日時
	created datetime COMMENT '作成日時',
	-- 更新日時
	updated datetime COMMENT '更新日時',
	-- 削除日時
	deleted datetime COMMENT '削除日時',
	PRIMARY KEY (id)
) COMMENT = '記事のタグ';


CREATE TABLE tags
(
	-- ID
	id int NOT NULL UNIQUE AUTO_INCREMENT COMMENT 'id',
	-- タグの名前
	name varchar(255) COMMENT 'タグの名前',
	-- 作成日時
	created datetime COMMENT '作成日時',
	-- 更新日時
	updated datetime COMMENT '更新日時',
	-- 削除日時
	deleted datetime COMMENT '削除日時',
	PRIMARY KEY (id)
) COMMENT = 'タグ';


CREATE TABLE users
(
	-- ID
	id int NOT NULL AUTO_INCREMENT COMMENT 'id',
	-- ユーザー名
	username varchar(255) NOT NULL UNIQUE COMMENT 'ユーザー名',
	-- パスワード
	password varchar(255) NOT NULL COMMENT 'パスワード',
	-- 作成日時
	created datetime COMMENT '作成日時',
	-- 更新日時
	updated datetime COMMENT '更新日時',
	PRIMARY KEY (id)
) COMMENT = 'ユーザー';



