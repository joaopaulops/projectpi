<?php
namespace App\Controller;


use App\Controller\AppController;
use App\Controller\Component\UploadComponent;
use cake\Controller\Files;
use Cake\Mailer\Email;

/**
 * Comprovantes Controller
 *
 * @property \App\Model\Table\ComprovantesTable $Comprovantes
 */
class ComprovantesController extends AppController
{
    
     public function initialize()
    {
         parent::initialize();     
        $this->loadModel("Files");
    }


    //public function isAuthorized($user)
//{
    //if ($this->request->action === 'add') {
    // return true;
//}//
  // if (in_array($this->request->action, ['edit', 'delete'])) {
//$comprovanteId = (int)$this->request->params['pass'][0];
//if ($this->Comprovnates->isOwnedBy($comprovanteId, $user['id'])) {
//return true;
//}
//}
//return parent::isAuthorized($user);
//
    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Users', 'Files']
        ];
        $comprovantes = $this->paginate($this->Comprovantes);

        $this->set(compact('comprovantes'));
        $this->set('_serialize', ['comprovantes']);
    }

    /**
     * View method
     *
     * @param string|null $id Comprovante id.
     * @return \Cake\Network\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $comprovante = $this->Comprovantes->get($id, [
            'contain' => ['Users', 'Files']
        ]);

        $this->set('comprovante', $comprovante);
        $this->set('_serialize', ['comprovante']);
    }

    /**
     * Add method
     *
     * @return \Cake\Network\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
       
        $comprovante = $this->Comprovantes->newEntity();
        $comprovante = $this->Comprovantes->patchEntity($comprovante, $this->request->getData());

        if ($this->request->is('post')) {
            if(!empty($this->request->data['recibo_id']['name'])){
                $fileName = $this->request->data['recibo_id']['name'];
                $uploadPath = WWW_ROOT.'uploads/files/';
                $uploadFile = $uploadPath.$fileName;
                if(move_uploaded_file($this->request->data['recibo_id']['tmp_name'],$uploadFile)){
                    $recibo_id = $this->Files->newEntity();
                    $recibo_id->name = $fileName;
                    $recibo_id->path = $uploadPath;
                    $recibo_id->created = date("Y-m-d H:i:s");
                    $recibo_id->modfied = date("Y-m-d H:i:s");
                    $recibo_id->status=0;
                    if ($this->Files->save($recibo_id)) {
                        $comprovante->recibo_id = $recibo_id->id;

                        //$this->Flash->success(__('File has been uploaded and inserted successfully.'));
                    }else{
                        $this->Flash->error(__('Unable to upload file, please try again.'));
                    }
                }else{
                    $this->Flash->error(__('Please choose a file to upload.'));
                }
                       
            
            }
            $comprovante->user_id = $this->Auth->user('id');
        if ($this->Comprovantes->save($comprovante)) {
                $this->Flash->success(__('The comprovante has been saved.'));

          $email = new Email('default');
          $email->from(['skpaulosilva026@gmail.com' => 'EnTec 2017'])
          ->emailFormat('html')
          ->to('joaoperreira026@gmail.com')
          ->template('default','template')
          ->subject('[WEB II] Exemplo de email')
          ->viewVars(['nome' => $this->Auth->user('nome'),'id_usuario' => $this->Auth->user('id')])
          ->send('Bla', 'Bla');


                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The comprovante could not be saved. Please, try again.'));
        }
        
        $users = $this->Comprovantes->Users->find('list', ['limit' => 200]);
        $this->set(compact('comprovante', 'users', 'files'));
        $this->set('_serialize', ['comprovante']);



       
         
    }

    /**
     * Edit method
     *
     * @param string|null $id Comprovante id.
     * @return \Cake\Network\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $comprovante = $this->Comprovantes->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $comprovante = $this->Comprovantes->patchEntity($comprovante, $this->request->getData());
            if ($this->Comprovantes->save($comprovante)) {
                $this->Flash->success(__('The comprovante has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The comprovante could not be saved. Please, try again.'));
        }
        $users = $this->Comprovantes->Users->find('list', ['limit' => 200]);
        $files = $this->Comprovantes->Files->find('list', ['limit' => 200]);
        $this->set(compact('comprovante', 'users', 'files'));
        $this->set('_serialize', ['comprovante']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Comprovante id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $comprovante = $this->Comprovantes->get($id);
        if ($this->Comprovantes->delete($comprovante)) {
            $this->Flash->success(__('The comprovante has been deleted.'));
        } else {
            $this->Flash->error(__('The comprovante could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
