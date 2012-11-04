<?php
/**
 * ArticleTagFixture
 *
 */
class ArticleTagFixture extends CakeTestFixture {

/**
 * Fields
 *
 * @var array
 */
	public $fields = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => null, 'key' => 'primary', 'comment' => 'id'),
		'article_id' => array('type' => 'integer', 'null' => false, 'default' => null, 'comment' => '記事のID'),
		'tag_id' => array('type' => 'integer', 'null' => false, 'default' => null, 'comment' => 'タグのID'),
		'created' => array('type' => 'datetime', 'null' => true, 'default' => null, 'comment' => '作成日時'),
		'updated' => array('type' => 'datetime', 'null' => true, 'default' => null, 'comment' => '更新日時'),
		'deleted' => array('type' => 'datetime', 'null' => true, 'default' => null, 'comment' => '削除日時'),
		'indexes' => array(
			'PRIMARY' => array('column' => 'id', 'unique' => 1)
		),
		'tableParameters' => array('charset' => 'utf8', 'collate' => 'utf8_unicode_ci', 'engine' => 'MyISAM')
	);

/**
 * Records
 *
 * @var array
 */
	public $records = array(
		array(
			'id' => 1,
			'article_id' => 1,
			'tag_id' => 1,
			'created' => '2012-11-02 19:42:22',
			'updated' => '2012-11-02 19:42:22',
			'deleted' => '2012-11-02 19:42:22'
		),
	);

}
