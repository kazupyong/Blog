<?php
App::uses('AppController', 'Controller');

/**
 * Login Controller
 *
 * @property User $User
 * @property AuthComponent $Auth
 */
class LoginController extends AppController
{
    public function index() {
        if($this->request->is('post')) {
            if($this->Auth->login()) {
                return $this->redirect($this->Auth->redirect());
            } else {
                $this->Session->setFlash(__('Username or password is incorrect'), 'default', array(), 'auth');
            }
        }
    }
    
    public function logout($id = null)
    {
        $this->Session->setFlash(__('Logout Success!'), 'default', array(), 'auth');
        $this->redirect($this->Auth->logout());
    }
    public function admin_index($id = null)
    {
        return $this->redirect('/login/index');
    }
}
