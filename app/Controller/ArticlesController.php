<?php
App::uses('AppController', 'Controller');
/**
 * Articles Controller
 *
 * @property Article $Article
 */
class ArticlesController extends AppController {

    public $uses = array('Article','Tag','ArticleTag');
    /*
     * ページネートでArticleTagとjoinさせておいてタグからも検索できるようにする
     */
    public $paginate = array(
        'Article' => array(
        'fields' => array('Article.*'),
        'maxLimit' => 5,
        'order' => array('published' => 'desc'),
//        'joins' => array(array('type' => 'LEFT', 'alias' => 'ArticleTag', 'table' => 'article_tags','conditions' => 'Article.id = ArticleTag.article_id')))
    ));
/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->Article->recursive = 1;
		
		$cond = null;
		// パラーメーターにタグがある場合のみ検索条件にタグを入れる。
		if(isset($this->params['named']['tag'])){
		    $cond = "ArticleTag.tag_id = {$this->params['named']['tag']} and ";
		    $this->paginate['Article']['joins'] = array(array('type' => 'LEFT', 'alias' => 'ArticleTag', 'table' => 'article_tags','conditions' => 'Article.id = ArticleTag.article_id'));
		}
		// 公開日時が今日よりも後の記事のみ
		$cond .= sprintf(" published <= '%s'",date('Y-m-d H:i:s'));
		$this->set('articles', $this->paginate('Article',$cond));
		$this->set('tags',$this->Tag->find('all', array('recursive' => 0)));
	}
/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
	    $this->Article->id = $id;
	    
		if (!$this->Article->exists()) {
			throw new NotFoundException(__('Invalid article'));
		}
		$this->set('article', $this->Article->read(null, $id));
		$this->set('tags',$this->Tag->find('all', array('recursive' => 0)));
	}

/**
 * admin_index method
 *
 * @return void
 */
	public function admin_index() {
	    
		$this->Article->recursive = 0;
		$this->set('articles', $this->paginate());
	}

/**
 * admin_view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_view($id = null) {
		$this->Article->id = $id;
		if (!$this->Article->exists()) {
			throw new NotFoundException(__('Invalid article'));
		}
		$this->set('article', $this->Article->read(null, $id));
	}

/**
 * admin_add method
 *
 * @return void
 */
	public function admin_add() {
		if ($this->request->is('post')) {
			$this->Article->create();
			if ($this->Article->save($this->request->data)) {
				$this->Session->setFlash(__('The article has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The article could not be saved. Please, try again.'));
			}
		}
		$tags = $this->Article->Tag->find('list');
		$this->set(compact('tags'));
	}

/**
 * admin_edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_edit($id = null) {
		$this->Article->id = $id;
		if (!$this->Article->exists()) {
			throw new NotFoundException(__('Invalid article'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Article->save($this->request->data)) {
				$this->Session->setFlash(__('The article has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The article could not be saved. Please, try again.'));
			}
		} else {
			$this->request->data = $this->Article->read(null, $id);
		}
		$tags = $this->Article->Tag->find('list');
		$this->set(compact('tags'));
	}

/**
 * admin_delete method
 *
 * @throws MethodNotAllowedException
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_delete($id = null) {
		if (!$this->request->is('post')) {
			throw new MethodNotAllowedException();
		}
		$this->Article->id = $id;
		if (!$this->Article->exists()) {
			throw new NotFoundException(__('Invalid article'));
		}
		if ($this->Article->delete()) {
			$this->Session->setFlash(__('Article deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Article was not deleted'));
		$this->redirect(array('action' => 'index'));
	}
}
