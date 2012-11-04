<?php
App::uses('ArticleTag', 'Model');

/**
 * ArticleTag Test Case
 *
 */
class ArticleTagTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.article_tag',
		'app.article',
		'app.tag'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->ArticleTag = ClassRegistry::init('ArticleTag');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->ArticleTag);

		parent::tearDown();
	}

}
