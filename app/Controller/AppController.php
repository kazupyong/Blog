<?php
/**
 * Application level Controller
 *
 * This file is application-wide controller file. You can put all
 * application-wide controller-related methods here.
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */

App::uses('Controller', 'Controller');

/**
 * Application Controller
 *
 * Add your application-wide methods in the class below, your controllers
 * will inherit them.
 *
 * @package       app.Controller
 * @link http://book.cakephp.org/2.0/en/controllers.html#the-app-controller
 */
class AppController extends Controller {

    /**
     * Components
     *
     * @var array
     */
    public $components = array(
            'Session',
            'Auth' => array(
                    'loginRedirect' => Array('controller'  => 'admin', 'action' => 'articles'),
                    'logoutRedirect' => Array('controller' => 'login', 'action' => 'index'),
                    'loginAction' => Array('controller' => 'login', 'action' => 'index')),
            );
    /**
     * 全てのアクションを実行前にアクセスの確認をする。
     * 
     * @see Controller::beforeFilter()
     */
    function beforeFilter() {
        
        $this->Auth->authError = __('Login Error');
        // 認証設定
        if ($this->params['admin'] === true) {
        }else{
            $this->Auth->allow('article','index');
            $this->Auth->allow('article','view');
        }
    }
}
